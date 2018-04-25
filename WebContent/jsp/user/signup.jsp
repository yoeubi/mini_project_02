<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="user.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
     <div id="center-block">
      <div class="page-header">
          <h1>회원가입<h6>환영합니다</h6> </h1>
       </div>
       <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/signup">
         <div class="form-group"> 
            <label for="inputIdl3" class="col-sm-2 control-label">아이디</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputId3" placeholder="아이디를 입력하세요">
            </div>
             <div class="col-sm-3"></div>
          </div>
         <div class="form-group"> 
            <label for="inputPassl3" class="col-sm-2 control-label">비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPass3" placeholder="비밀번호를 입력하세요">
            </div>
             <div class="col-sm-3"></div>
          </div>
         <div class="form-group"> 
            <label for="inputCheckPassl3" class="col-sm-2 control-label">비밀번호확인</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputCheckPass3" placeholder="비밀번호를 입력하세요">
            </div>
             <div class="col-sm-3"></div>
          </div>
         <div class="form-group"> 
            <label for="inputNamel3" class="col-sm-2 control-label">이름</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputName3" placeholder="이름을 입력하세요">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group"> 
            <label for="inputEmaill3" class="col-sm-2 control-label">이메일</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputEmail3" placeholder="이메일을 입력하세요">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group"> 
            <label for="inputPhone3" class="col-sm-2 control-label">핸드폰 번호</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputPhone3" placeholder="핸드폰 번호를 입력하세요  ex) 010 - 1234 - 5678 ">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-default">회원가입</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
       </form>
     </div>
   </div>
</body>
</html>