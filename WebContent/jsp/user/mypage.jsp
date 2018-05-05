<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/minipro2/css/myPage.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>회원정보 수정</title>
</head>
<body>
	<div class="container">
		<div id="center-block">
			<!-- 예매내역 조회 -->
			<div class="page-header">
				<h1>
					예매내역
					<h6>예매내역을 조회할 수 있습니다.</h6>
				</h1>
			</div>
			<div class="helpV17">
				<div class="historyTable"style="overflow: scroll; height: 350px;">
					<button  type="submit" class="btn btn-default" id="myBtn">예매티켓</button>
					<table class="table" id="tableMovie">
<!-- 						<tr class="active"> -->
<!-- 							<th>날짜</th> -->
<!-- 							<th>예매번호</th> -->
<!-- 							<th>제목</th> -->
<!-- 							<th>금액</th> -->
<!-- 							<th></th> -->
<!-- 						</tr> -->
						<!-- 예매내역 리스트 -->
<!-- 						<tr class="hisList"> -->
<!-- 							<td>2018-01-23</td> -->
<!-- 							<td>45645146</td> -->
<!-- 							<td>어벤져스:인피니트 워</td> -->
<!-- 							<td>18000원</td> -->
<!-- 							<td> -->
<!-- 								<div id="rightBtn"> -->
<!-- 									<button type="submit" class="btn btn-default" id="myBtn">예매티켓</button> -->
<!-- 								</div> -->
<!-- 							</td> -->
<!-- 						</tr> -->

<!-- 						<tr class="hisList"> -->
<!-- 							<td>2018-01-23</td> -->
<!-- 							<td>45645146</td> -->
<!-- 							<td>어벤져스:인피니트 워</td> -->
<!-- 							<td>18000원</td> -->
<!-- 							<td> -->
<!-- 								<div>취소불가</div> -->
<!-- 							</td> -->
<!-- 						</tr> -->

<!-- 						<tr class="hisList"> -->
<!-- 							<td>2018-01-23</td> -->
<!-- 							<td>45645146</td> -->
<!-- 							<td>어벤져스:인피니트 워</td> -->
<!-- 							<td>18000원</td> -->
<!-- 							<td> -->
<!-- 								<div>취소불가</div> -->
<!-- 							</td> -->
<!-- 						</tr> -->


					</table>
				</div>
			</div>

			<!-- The Modal -->
			<div id="myModal" class="modal">

				<!-- Modal content -->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3 class="modal-title">
							<strong>예매 티켓</strong>
						</h3>
					</div>
					<div class="modal-body" style="height: 300px;">
						<div class="col-sm-4">
							<div class="thumbnail" style="float: left;">
								<img src="/minipro2/images/poster/infinity_war.jpg" alt="...">
							</div>
						</div>
						<div class="col-sm-5">
							<h3>
								<strong>어벤져스:인피니트 워</strong>
							</h3>
							<br>
							<h4>2018-01-23</h4>
							<h5>서울 강남점 2관</h5>
							<h4>
								<strong>18:30 ~ 21:00</strong>
							</h4>
						</div>

						<div class="col-sm-3">
							<h3>
								<strong>좌석번호</strong>
							</h3>
							<br>
							<h3>4-1, 4-2</h3>
						</div>
					</div>
					<div class="modal-footer">
						<div></div>
						<div></div>
						<div></div>
					</div>
				</div>
				<!-- /.modal-content -->

			</div>
			<!-- 개인정보 수정 -->
			<div class="page-header">
				<h1>
					개인정보 수정
					<h6>개인정보를 수정할 수 있습니다.</h6>
				</h1>
			</div>
			<form class="form-horizontal" method="post" id="updateInfoForm"
				action="${pageContext.request.contextPath}/myPageInfoUpdate"
				enctype="multipart/form-data" runat="server">
				<!-- 프로필 사진 수정 -->
				<div class="form-group">
					<label class="col-sm-2 control-label">프로필사진</label>
					<div class="col-sm-7">
						<img
							src="/minipro2/images/profileUpload/${sessionScope.user.memberPhotoName}"
							class="img-thumbnail"
							style="width: 140px; height: 140px; float: left;"
							id="profildPhotoGrid">
						<input name="defaltPhotoGrid" id="defaltPhotoGrid" style="display: none" value="N">
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<div class="helpV17">
							<p class="ftRt">
							<p class="text-left">
							    <input type='file' id="imgInput" name="profilePhoto" style="display: none"/>
<!-- 								<input type="file" class="btn btn-default btn-sm" -->
<!-- 									name="profilePhoto" id="profilePhoto"> -->
<!-- <form id="form" runat="server"> -->
<!--     <input type='file' id="imgInput" /> -->
<!-- </form> -->
								<button type="button" class="btn btn-default" id="profileUploadBtn">사진 업로드</button>
								<button type="button" class="btn btn-default" id="profileResetBtn">기본이미지 변경</button>
							</p>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<hr>

				<!-- 이름, 이메일 번호 수정 -->
				<div class="form-group">
					<label class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-7">
						<p class="form-control-static" id="sessionId">${sessionScope.user.memberId}</p>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<label for="inputNamel3" class="col-sm-2 control-label">이름</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="inputName3"
							name="inputName3" placeholder="${sessionScope.user.memberName}">
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<label for="inputEmaill3" class="col-sm-2 control-label">이메일</label>
					<div class="col-sm-7">
						<input type="email" class="form-control" id="inputEmail3"
							name="inputEmail3" placeholder="${sessionScope.user.memberEmail}">
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="inputPassword3"
							name="inputPassword3">
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<label for="inputPhone3" class="col-sm-2 control-label">핸드폰
						번호</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="inputPhone3"
							name="inputPhone3"
							placeholder="${sessionScope.user.memberPhoneNo}">
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<div class="helpV17">
							<p class="ftRt">
							<p class="text-right">
								<button type="button" class="btn btn-default" id="updateInfoBtn">나의
									정보 수정</button>
							</p>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</form>
			<!-- 비밀번호 수정 -->
			<div class="page-header">
				<h1>비밀번호 수정</h1>
				<h6>비밀번호를 수정할 수 있습니다.</h6>
			</div>
			<form class="form-horizontal" id="updatePassForm" method="post"
				action="${pageContext.request.contextPath}/myPagePassUpdate">
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">기존비밀번호</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="inputPassExis"
							name="inputPassExis">
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">새비밀번호</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="inputPassNew"
							name="inputPassNew">
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">새비밀번호확인</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="inputPassCheck"
							name="inputPassCheck">
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<div class="helpV17">
							<p class="ftRt">
							<p class="text-right">
								<button type="submit" class="btn btn-default" id="updatePassBtn">수정</button>
							</p>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</form>
		</div>
	</div>
	

	<script>
	
	$("#profileUploadBtn").click(function(){
			$('#imgInput').click();
		});
		$("#profileResetBtn").click(function(){
			$("#profildPhotoGrid").attr("src", "/minipro2/images/profileUpload/default_profile.jpg");
			$("#defaltPhotoGrid").attr("value", "Y");
		});
		
		//이미지 파일 바로 보여주기
		function readURL(input) {
			 
		    if (input.files && input.files[0]) {
		        var reader = new FileReader();
		 
		        reader.onload = function (e) {
		            $('#profildPhotoGrid').attr('src', e.target.result);
		        }
		 
		        reader.readAsDataURL(input.files[0]);
		    }
		}
		 
		$("#imgInput").change(function(){
		    readURL(this);
		});

		//$(document).on("이벤트종류","#myBtn",함수)
		
// 		// Get the modal
// 		var modal = document.getElementById('myModal');

// 		// Get the button that opens the modal
// 		var btn = document.getElementById("myBtn");

// 		// Get the <span> element that closes the modal
// 		var span = document.getElementsByClassName("close")[0];

// 		// When the user clicks on the button, open the modal 
// 		btn.onclick = function() {
// 			modal.style.display = "block";
// 		}

// 		// When the user clicks on <span> (x), close the modal
// 		span.onclick = function() {
// 			modal.style.display = "none";
// 		}

// 		// When the user clicks anywhere outside of the modal, close it
// 		window.onclick = function(event) {
// 			if (event.target == modal) {
// 				modal.style.display = "none";
// 			}
// 		}

		$("#updateInfoBtn").click(function() {
			$("#updateInfoBtn").click(function() {
				console.log("비밀번호 확인 접속중")
				$.ajax({
					url : "/minipro2/passCheck",
					data : {
						"id" : `${sessionScope.user.memberId}`
					},
					dataType : "json",
					success : function(pass) {
						if ($("#inputPassword3").val() != pass) {
							alert("비밀번호가 일치하지 않습니다.");
						} else {
							alert("마이페이지 수정 완료");
							$("#updateInfoForm")[0].submit();
						}
					},
					error : function(e) {
						console.log("에러는 ", e)
					}
				});
			});
		});

		$("#updatePassBtn").click(
				function() {
					$.ajax({
						url : "/minipro2/passCheck",
						data : {
							"id" : `${sessionScope.user.memberId}`
						},
						dataType : "json",
						success : function(pass) {
							if ($("#inputPassExis").val() == "") {
								alert("기존 비밀번호를 입력하세요");
								return;
							} else {

								if ($("#inputPassExis").val() != pass) {
									alert("기존 비밀번호가 일치하지 않습니다.");
								} else {
									if ($("#inputPassNew").val() == ""
											|| $("#inputPassNew").val() == "") {
										alert("새로운 비밀번호를 입력하세요");
									} else {
										if ($("#inputPassNew").val() == pass) {
											alert("기존의 비밀번호와 다른 비밀번호를 입력하세요.");
										} else {
											if ($("#inputPassNew").val() != $(
													"#inputPassCheck").val()) {
												alert("새로운 비밀번호가 일치하지 않습니다.");
											} else {
												alert("비밀번호 수정 완료!");
												$("#updatePassForm")[0]
														.submit();
											}
										}
									}
								}
							}
						},
						error : function(e) {
							console.log("에러는 ", e)
						}
					});

				});
		function makeList(movieHis){
			console.dir(movieHis);
			var html="";
			html+='<tr class="active">';
			html+='<th>날짜</th>';
			html+='<th>예매번호</th>';
			html+='<th>제목</th>';
			html+='<th>금액</th>';
			html+='<th>금액</th>';
			html+='<th></th>';
			html+='</tr>';
			for (var i = 0; i < movieHis.length; i++){
// 				console.log("tr생성");
				var confirm=movieHis[i];
				html += '<tr class="hisList">';
				html += '<td>'+confirm.screeningDate+'</td>';
				html += '<td>'+confirm.filmCode+'</td>';
				html += '<td>'+confirm.filmName+'</td>';
				html += '<td>'+confirm.price+'원</td>';
// 				SimpleDateFormat dateFormat = new  SimpleDateFormat("MM/dd HH:mm", java.util.Locale.getDefault());
// 				var strDate = confirm.screeningDate;
// 				strDate += " ";
// 				strDate += confirm.showTime;
// 				console.log(strDate);
// 				Date date = dateFormat.parse(strDate);
// // 				if(confirm.screeningDate)
	
// 				var test = new Date(2018,4,8);
// 				console.log(test.toString());

				if(confirm.wheaterTicket == 'N'){
					html += '<td><div>취소불가</div></td>';
				}else{
					html+='<div id="rightBtn"><button type="submit" class="btn btn-default" id="myBtn">예매티켓</button></div>'
					
				}
				html += '</tr>'
			}
			if(movieHis.length==0){
				html += '<tr><td colspan="4">예매내역이 존재하지 않습니다.</td></tr>';
			}
			$("#tableMovie").html(html);
			
			
		};
		//영화 예매내역 보여주기
		function historyList(){
		 	console.log("에이작스 호출");
			$.ajax({
				url:"/minipro2/movieHistory",
				data:{"id":`${sessionScope.user.memberId}`},
				dataType:"json",
				success: makeList,
				error:function(e){
					console.log(e);
				}
			});
		}
		historyList();
	</script>
</body>
</html>