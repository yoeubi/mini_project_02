<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style type="text/css">
	span {
		margin: 10px;
	}
	button {
		margin: 10px;
	}
</style>
</head>
<body>
	<div id="showCode" hidden="hidden"><c:out value="${showCode}" /></div>
	<h1><c:out value="${locationName}" /></h1>
	<h1><c:out value="${branchName}" /></h1>
	<h1><c:out value="${screeningDate}" /></h1>
	<h1><c:out value="${filmName}" /></h1>
	<h1><c:out value="${theaterName}" /></h1>
	<h1><c:out value="${showTime}" /></h1>
	<div id="seat">
<%-- 		<c:forEach var="i" begin="1" end="10"> --%>
<%-- 			<c:forTokens items="a,b,c,d,e" delims="," var="alp"> --%>
<%-- 				<input type="checkbox">${alp}_<fmt:formatNumber value="${i}" pattern="00" /></input> --%>
<%-- 			</c:forTokens> --%>
<!-- 			<br> -->
<%-- 		</c:forEach> --%>
	</div>
	<div id="info">
		<div id="filmName">
			<span><c:out value="${filmName}" /></span>
		</div>
		<div id="showtime">
			<span><c:out value="${theaterName}" /><c:out value="${showTime}" /></span>
		</div>
		<div id="numOfAudience">
			<span>0</span>명
		</div>
		<div id="totalPrice">
			<span>0</span>원
		</div>
		<div id="selectedSeat">
		</div>
	</div>
	<input id="booking" type="checkbox"><label for="booking">예매</label>
	<script>
		var seatMap = $("#seat");
		var alp = ["a","b","c","d","e"];
		var selectSeat = $("#seat > button");
		var filmName = $("#filmName > span");
		var showtime = $("#showtime > span");
		var numOfAudience = $("#numOfAudience > span");
		var totalPrice = $("#totalPrice > span");
		var selectedSeat = $("#selectedSeat");
		var booking = $("#booking");
		var showCode = $("#showCode");
		
		$(document).ready(function(){
			for(var i = 0 ; i < alp.length ; i++){
				for(var k = 1 ; k < 11 ; k++){
					if(k < 10){
						k = "0" + k;
					}
					let button = $("<button>").attr("value",alp[i]+"_"+k).text(alp[i]+"_"+k);
					seatMap.append(button);
				}
				seatMap.append($("<br>"));
			}
		});
		$(document).on("click",selectSeat,function(e){
			if(e.target.nodeName != "BUTTON") return;
	    	console.log("버튼 이벤트 실행");
	    	console.dir(selectSeat);
	    	console.dir(e);
	    	console.log(e.target.nodeName);
	    	console.log(e.target.value);
	    	console.log(selectedSeat.text());
	    	if(selectedSeat.text().indexOf(e.target.value) == -1){
	    		if(numOfAudience.text() >= 10){
	    			alert("10명이상 예약할수 없습니다.")
	    			return;
	    		}
		    	numOfAudience.text(parseInt(numOfAudience.text()) + 1);
		    	totalPrice.text(parseInt(totalPrice.text()) + 7000);
		    	var spanEle = $("<span>").attr("id",e.target.value).text(e.target.value);
		    	selectedSeat.append(spanEle);
	    	}else {
				var result = confirm("선택한 좌석을 취소하시겠습니까?");
				
				if(result){
					var ele = e.target.value;
					$("#"+ele+"").remove();
					numOfAudience.text(parseInt(numOfAudience.text()) - 1);
			    	totalPrice.text(parseInt(totalPrice.text()) - 7000);
				}
	    	}
	    })
		booking.click(function(e){
			var ok = confirm("예매하시겠습니까?");
			if(ok){
				console.log("예매중입니다.");
				console.log(showCode.text());
				$.ajax({
					type : "POST",
					url : "/mini/controller/seat",
					data : {"selectedSeat" :selectedSeat.text() ,"showCode" : showCode.text()},
					dataType : "json",
					success : function(data){
						console.log("예매가 올라가는중입니다.")
						location.assign("/mini/controller/confirm");
						console.log("예매가 끝났습니다.");
					},
					error : function(e){
						console.log(e);
					}
				});
			}
		})	   
	    
	</script>
</body>
</html>