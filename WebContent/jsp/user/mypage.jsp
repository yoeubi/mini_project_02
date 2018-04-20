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
       <form class="form-horizontal">
       
         <div class="form-group"> 
           <label class="col-sm-2 control-label">프로필사진</label>
           <div class="col-sm-7">
            <img src="/minipro2/images/icon/default_profile.jpg" class="img-thumbnail" style="width:140px;height:140px; float:left;" >
           </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-left"><button type="button" class="btn btn-default btn-sm">사진업로드</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
          <hr>
         <div class="form-group"> 
           <label class="col-sm-2 control-label">아이디</label>
           <div class="col-sm-7">
             <p class="form-control-static">asdf123</p>
           </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <label for="inputNamel3" class="col-sm-2 control-label">이름</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputName3" placeholder="이은비">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group"> 	
            <label for="inputEmaill3" class="col-sm-2 control-label">이메일</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputEmail3" placeholder="asd123@gmail.com">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassword3" placeholder="">
            </div>
            <div class="col-sm-3"></div>
          </div>
         <div class="form-group"> 
            <label for="inputPhone3" class="col-sm-2 control-label">핸드폰 번호</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputPhone3" placeholder="010 - 1234 - 5678">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-default">나의 정보 수정</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
       </form>
       <!-- 비밀번호 수정 -->
       <div class="page-header">
           <h1>비밀번호 수정<h6>비밀번호를 수정할 수 있습니다.</h6></h1>
       </div>
        <form class="form-horizontal">
       <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">기존비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassword3" placeholder="">
            </div>
            <div class="col-sm-3"></div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">새비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassword3" placeholder="">
            </div>
            <div class="col-sm-3"></div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">새비밀번호확인</label>
            <div class="col-sm-7">
              <input type="password" class="form-control" id="inputPassword3" placeholder="">
            </div>
            <div class="col-sm-3"></div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-default">수정</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
          </form>
     </div>
   </div>	

</body>
</html>