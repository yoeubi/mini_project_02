<%@page import="com.google.gson.Gson"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='//fonts.googleapis.com/css?family=Kotta+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="/minipro2/css/seatStyle.css" rel="stylesheet" type="text/css" media="all" />
<script src="/minipro2/js/jquery-1.11.0.min.js"></script>
<script src="/minipro2/js/jquery.seat-charts.js"></script>
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> -->
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="/minipro2/js/jquery.nicescroll.js"></script>
<script src="/minipro2/js/scripts.js"></script>
</head>
<body>
<div class="content">
	<h1>BitCinema</h1>
	<div class="main">
		<h2>좌석 선택</h2>
		<div class="demo">
			<div id="seat-map">
				<div class="front">SCREEN</div>					
			</div>
			<div class="booking-details">
				<ul class="book-left">
					<li>영화</li>
					<li>영화 시간 </li>
					<li>인원수</li>
					<li>금액</li>
					<li>자리 :</li>
				</ul>
				<ul class="book-right">
					<li>: <c:out value="${filmName}" /></li>
					<li>: <c:out value="${screeningDate}" />, <c:out value="${showTime}" /></li>
					<li>: <span id="counter">0</span></li>
					<li>: <b><span id="total">0</span><i>원</i></b></li>
				</ul>
				<div class="clear"></div>
				<ul id="selected-seats" class="scrollbar scrollbar1"></ul>
			
						
				<button class="checkout-button" id="check">예매하기</button>
				<div id="legend"></div>
			</div>
			<div style="clear:both"></div>
	    </div>

			<script type="text/javascript">
				var price = 1000; //price
				$(document).ready(function() {
					var $cart = $('#selected-seats'), //Sitting Area
					$counter = $('#counter'), //Votes
					$total = $('#total'); //Total money
					
					var sc = $('#seat-map').seatCharts({
						map: [  //Seating chart
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'__________',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'__________',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa'
						],
						naming : {
							top : false,
							getLabel : function (character, row, column) {
								return column;
							}
						},
						legend : { //Definition legend
							node : $('#legend'),
							items : [
								[ 'a', 'available',   '예매가능' ],
								[ 'a', 'unavailable', '선택불가'],
								[ 'a', 'selected', '선택']
							]					
						},
						click: function () { //Click event
							if (this.status() == 'available') { //optional seat
								$('<li>'+(this.settings.row+1)+'-'+this.settings.label+' </li>')
									.attr('id', 'cart-item-'+this.settings.id)
									.data('seatId', this.settings.id)
									.appendTo($cart);

								$counter.text(sc.find('selected').length+1);
								$total.text(recalculateTotal(sc)+price);
											
								return 'selected';
							} else if (this.status() == 'selected') { //Checked
									//Update Number
									$counter.text(sc.find('selected').length-1);
									//update totalnum
									$total.text(recalculateTotal(sc)-price);
										
									//Delete reservation
									$('#cart-item-'+this.settings.id).remove();
									//optional
									return 'available';
							} else if (this.status() == 'unavailable') { //sold
								return 'unavailable';
							} else {
								return this.style();
							}
						}
					});
					//sold seat
					sc.get([<% %>]).status('unavailable');
					// sc.get(['1_2', '4_4','4_5','6_6','6_7','8_5','8_6','8_7','8_8', '10_1', '10_2']).status('unavailable');
						
				});
				//sum total money
				function recalculateTotal(sc) {
					var total = 0;
					sc.find('selected').each(function () {
						total += price;
					});
							
					return total;
				}
				
				$("#check").click(function(){
					if($("#counter").text() == 0){
						alert("좌석을 선택하세요.")
					}else{
						var result = confirm("예매하시겠습니까?");
						$.ajax({
							type : "POST",
				        	url : "/minipro2/controller/confirm",
				        	data : { "locationCode" : `${locationCode}`,"locationName" : `${locationName}`,
				        			"branchCode" : `${branchCode}`, "branchName" : `${branchName}`,
				        			"screeningCode" : `${screeningCode}`, "screeningDate" : `${screeningDate}`,
					        		"filmCode": `${filmCode}` ,"filmName": `${filmName}` ,
					        		"showCode":`${showCode}`, "showTime": `${showTime}`,
				        			"price" : $("#total").text(),"cardNum": "test" ,
				        			"memberId":"test","seat": $("#selected-seats > li").text()
				        	} , /* 영화명 ,상영시간, 결재 금액 , 자리 , 카드승인번호 , 유저명    */
				        	dataType : "json",
				        	success : function(data){
				        		alert("예매가 완료되었습니다.")
				        		location.assign("/minipro2/main");
				        	}
				        });
// 						if(result){
// 							var IMP = window.IMP;
// 							IMP.init('imp19043807');
// 							IMP.request_pay({
// 							    pg : 'kakao',
// 							    pay_method : 'card',
// 							    merchant_uid : 'merchant_' + new Date().getTime(),
// 							    name : '주문명:결제테스트',
// 							    amount : $("#total").text(),
// 							    buyer_email : 'iamport@siot.do',
// 							    buyer_name : "테스트용",
// 							    buyer_tel : '010-1234-5678',
// 							    buyer_addr : '서울특별시 강남구 삼성동',
// 							    buyer_postcode : '123-456'
// 							}, function(rsp) {
// 							    if ( rsp.success ) {
// 							        var msg = '결제가 완료되었습니다.';
// 							        msg += '고유ID : ' + rsp.imp_uid;
// 							        msg += '상점 거래ID : ' + rsp.merchant_uid;
// 							        msg += '결제 금액 : ' + rsp.paid_amount;
// 							        msg += '카드 승인번호 : ' + rsp.apply_num;
// 							        $.ajax({
// 							        	url : "/minipro2/controller/confirm",
// 							        	data : `{ "" : "" }`,
// 							        	dataType : "",
// 							        	success : function(data){
// 							        		location.assign("/minipro2/main");
// 							        	}
// 							        });
// 							    } else {
// 							        var msg = '결제에 실패하였습니다.';
// 							        msg += '에러내용 : ' + rsp.error_msg;
// 							    }
// 								alert(msg);
// 							});
// 						}
					}
				});
			</script>
	</div>
</div>
</body>
</html>