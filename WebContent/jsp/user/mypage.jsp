<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="user.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>회원정보 수정</title>
</head>
<body>
	<div class="container">
     <div id="center-block">
      <div class="page-header">
           <h1>개인정보 수정<h6>개인정보를 수정할 수 있습니다.</h6></h1>
       </div>
       <form class="form-horizontal" method="post" id="updateInfoForm"action = "${pageContext.request.contextPath}/myPageInfoUpdate" enctype="multipart/form-data">
       
         <div class="form-group"> 
           <label class="col-sm-2 control-label">프로필사진</label>
           <div class="col-sm-7">
            <img src="/minipro2/images/profileUpload/${sessionScope.user.memberPhotoName}" class="img-thumbnail" style="width:140px;height:140px; float:left;">
           </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-left"><input type="file" class="btn btn-default btn-sm" name="profilePhoto" id="profilePhoto">
	        	 <button type="button" class="btn btn-default">사진 업로드</button>
	        	 <button type="button" class="btn btn-default">기본이미지 변경</button>
	        	 </p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
          <hr>
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
              <input type="text" class="form-control" id="inputName3" name="inputName3" placeholder="${sessionScope.user.memberName}">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group"> 	
            <label for="inputEmaill3" class="col-sm-2 control-label">이메일</label>
            <div class="col-sm-7">
              <input type="email" class="form-control" id="inputEmail3" name="inputEmail3" placeholder="${sessionScope.user.memberEmail}">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassword3" name="inputPassword3">
            </div>
            <div class="col-sm-3"></div>
          </div>
         <div class="form-group"> 
            <label for="inputPhone3" class="col-sm-2 control-label">핸드폰 번호</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputPhone3" name="inputPhone3" placeholder="${sessionScope.user.memberPhoneNo}">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="button" class="btn btn-default"id="updateInfoBtn">나의 정보 수정</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
       </form>
       <!-- 비밀번호 수정 -->
       <div class="page-header">
           <h1>비밀번호 수정<h6>비밀번호를 수정할 수 있습니다.</h6></h1>
       </div>
        <form class="form-horizontal" id="updatePassForm" method="post" action = "${pageContext.request.contextPath}/myPagePassUpdate"> 
       <div class="form-group" >
            <label for="inputPassword3" class="col-sm-2 control-label">기존비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassExis" name="inputPassExis">
            </div>
            <div class="col-sm-3"></div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">새비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassNew" name="inputPassNew" >
            </div>
            <div class="col-sm-3"></div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">새비밀번호확인</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassCheck"name="inputPassCheck">
            </div>
            <div class="col-sm-3"></div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-default" id="updatePassBtn">수정</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
          </form>
     </div>
   </div>	

<script>
$("#profilePhoto").click(function(){
	
});

var upload = document.getElementsByTagName('input')[0],
    holder = document.getElementById('holder'),
    state = document.getElementById('status');

if (typeof window.FileReader === 'undefined') {
  state.className = 'fail';
} else {
  state.className = 'success';
  state.innerHTML = 'File API & FileReader available';
}
 
upload.onchange = function (e) {
  e.preventDefault();

  var file = upload.files[0],
      reader = new FileReader();
  reader.onload = function (event) {
    var img = new Image();
    img.src = event.target.result;
    // note: no onload required since we've got the dataurl...I think! :)
    if (img.width > 560) { // holder width
      img.width = 560;
    }
    holder.innerHTML = '';
    holder.appendChild(img);
  };
  reader.readAsDataURL(file);

  return false;
};



$("#updateInfoBtn").click(function(){
	$("#updateInfoBtn").click(function(){
		console.log("비밀번호 확인 접속중")
		$.ajax({
			 url:"/minipro2/passCheck",
			 data:{"id":`${sessionScope.user.memberId}`},
			 dataType:"json",
			 success:function(pass){
				 if($("#inputPassword3").val() != pass){
					 alert("비밀번호가 일치하지 않습니다.");
				 }else{
					 alert("마이페이지 수정 완료");
					 $("#updateInfoForm")[0].submit();
				 }
			 },
			 error:function(e){
				 console.log("에러는 ",e)
			 }
		});
	});
});


	
	
	$("#updatePassBtn").click(function(){
		$.ajax({
			 url:"/minipro2/passCheck",
			 data:{"id":`${sessionScope.user.memberId}`},
			 dataType:"json",
			 success:function(pass){
				 if($("#inputPassExis").val() == ""){
					 alert("기존 비밀번호를 입력하세요");
					 return;
				 }else{
					 
					 if($("#inputPassExis").val() != pass){
						 alert("기존 비밀번호가 일치하지 않습니다.");
					 }else{
						if($("#inputPassNew").val() == "" || $("#inputPassNew").val() == "" ){
							alert("새로운 비밀번호를 입력하세요");
						}else{
							if($("#inputPassNew").val() == pass){
								alert("기존의 비밀번호와 다른 비밀번호를 입력하세요.");
							}else{
								if($("#inputPassNew").val() != $("#inputPassCheck").val()){
									alert("새로운 비밀번호가 일치하지 않습니다.");
								}else{
									alert("비밀번호 수정 완료!");
									$("#updatePassForm")[0].submit();
								}
							}
					 	}
					 }
				 }
			 },
			 error:function(e){
				 console.log("에러는 ",e)
			 }
		});
	});
	
</script>
</body>
</html>