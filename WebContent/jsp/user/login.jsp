<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="user.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
      <div id="center-block">
	     <div class="page-header">
           <h1>회원로그인 <h6>아이디와 비밀번호를 입력하세요.비밀번호는 대소문자를 구분합니다.</h6></h1>
        </div>
        <form class="form-horizontal" action="${pageContext.request.contextPath}/login">
          <div class = "loginBox" >
          <div class="form-group"> 
            <label for="inputIdl3" class="col-sm-2 control-label">아이디</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputId3" name = "inputId3" placeholder="Id">
            </div>
             <div class="col-sm-3"></div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassword3" name="inputPassword3" placeholder="Password">
            </div>
            <div class="col-sm-3"></div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
              <div class="checkbox">
                <label>
                 <input type="checkbox"> 아이디 기억하기
                </div>
              </div>
              <div class="col-sm-3"> </div>
          </div>
          <div class="form-group" style="height: 13px">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><a href="${pageContext.request.contextPath}/searchInfoForm">아이디/비밀번호 찾기 &gt;</a></p></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
          <div class="form-group" style="height: 15px">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><a href="${pageContext.request.contextPath}/signupform">회원가입하기 &gt;</a></p></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-default" id ="loginBtn">로그인</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
          </div>
           
           <div class="page-middle">
             <h3>SNS로그인</h3><h6>SNS계정으로 로그인을 할 수 있습니다.</h6>
             <hr>
           </div>
           <div class="form-group">
             <div class="col-sm-offset-1 col-sm-10">
	           <a href="" class="icon naver"><img src="${pageContext.request.contextPath}/images/icon/naver_logo.jpg" width="50px" /></a>
	         </div>
          </div>
          
          
        </form>
      </div>
      </div>
     
</body>
<script>
$("#loginBtn").click(function(){
	$.ajax({
		url:"/minipro2/loginCheck",
		data:{"inputId3":$("#inputId3"), "inputPassword3":$("#inputPassword3")},
		dataType:"json", 
		success:function(data){
			console.log("에이작스 성공");
			if(data == ""){
			alert("로그인 실패");
			}
		}
	});
});
</script>
</html>