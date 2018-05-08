<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="user.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
</head>
<body>
    <div class="container">
      <div id="center-block">
	     <div class="page-header">
           <h1>회원로그인 <h6>아이디와 비밀번호를 입력하세요.비밀번호는 대소문자를 구분합니다.</h6></h1>
        </div>
        <form class="form-horizontal" method="post" id="loginForm" action="${pageContext.request.contextPath}/login">
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
                 <input id="idSaveCheck" type="checkbox" style="visibility: hidden;"> <!-- 아이디 기억하기-->
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
	        	<p class="ftRt"><p class="text-right"><button class="btn btn-default" id ="loginBtn">로그인</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
          </div>
           
           <div class="page-middle" style="visibility: hidden;">
             <h3>SNS로그인</h3><h6>SNS계정으로 로그인을 할 수 있습니다.</h6>
             <hr>
           </div>
           <div class="form-group" style="visibility: hidden;">
             <div class="col-sm-offset-1 col-sm-10">
	           <a href="" class="icon naver"><img src="${pageContext.request.contextPath}/images/icon/naver_logo.jpg" width="50px" /></a>
	         </div>
          </div>
          
          
        </form>
      </div>
      </div>
     
</body>
<script>
$(document).ready(function(){
	console.log("아이디 저장 레디");
    var userInputId = getCookie("userInputId");
    $("input[name='inputId3']").val(userInputId); 
     
    if($("input[name='inputId3']").val() != ""){
        $("#idSaveCheck").attr("checked", true); 
    }
     
    $("#idSaveCheck").change(function(){ 
        if($("#idSaveCheck").is(":checked")){
            var userInputId = $("input[name='inputId3']").val();
            setCookie("userInputId", userInputId, 7); 
        }else{ 
            deleteCookie("userInputId");
        }
    });
     
  
    $("input[name='inputId3']").keyup(function(){
    	console.log("아이디 저장 키업");
        if($("#idSaveCheck").is(":checked")){ 
            var userInputId = $("input[name='inputId3']").val();
            setCookie("userInputId", userInputId, 7); 
        }
    });
});
function setCookie(cookieName, value, exdays){
	console.log("쿠키 설정");
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
	
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
	console.log("쿠키 얻어오기");
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}

// $("#loginBtn").click(function(){
// 	console.log("버튼 클릭");
// 	$.ajax({
// 		url:"/minipro2/loginCheck",
// 		data:{"inputId3":$("#inputId3"), "inputPassword3":$("#inputPassword3")},
// 		dataType:"json", 
// 		success:function(data){
// 			var msg="성공"
// 			console.log("에이작스 성공");
// 			if(data == ""){
// 				msg="실패"
// 			}else{
// 				$("#loginForm")[0].submit();
// 			}
// 			alert("로그인", msg);
// 		}
// 	});
// alert("sessionScope.user.memberType");
// })
</script>
</html>