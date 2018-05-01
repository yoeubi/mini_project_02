<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="user.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<!--아이디 찾기 -->
   <div class="container">
     <div id="center-block"> 
      <div class="page-header">
          <h1>아이디찾기 <h6>이름과 이메일을 입력하세요</h6></h1>
       </div>
       <form class="form-horizontal" >
         <div class="form-group" onsubmit="return false"> 
            <label for="inputNamel3" class="col-sm-2 control-label">이름</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputName2" placeholder="이름을 입력하세요">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group"> 
            <label for="inputEmaill3" class="col-sm-2 control-label">이메일</label>
            <div class="col-sm-7">
              <input type="email" class="form-control" id="inputEmail2" placeholder="이메일을 입력하세요">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-default" id="idSearchBtn">확인</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
       </form>
     </div>
   </div>
   <!--비밀번호 찾기 -->
   <div class="container">
     <div id="center-block">
      <div class="page-header">
          <h1>비밀번호 찾기 <h6>이름,아이디,이메일을 입력하세요</h6></h1>
       </div>
       <form class="form-horizontal" onsubmit="return false">
         <div class="form-group"> 
            <label for="inputNamel3" class="col-sm-2 control-label">이름</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputName3" placeholder="이름을 입력하세요">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group"> 
            <label for="inputIdl3" class="col-sm-2 control-label">아이디</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="inputId3" placeholder="아이디를 입력하세요">
            </div>
             <div class="col-sm-3"></div>
          </div>
         <div class="form-group"> 
            <label for="inputEmaill3" class="col-sm-2 control-label">이메일</label>
            <div class="col-sm-7">
              <input type="email" class="form-control" id="inputEmail3" placeholder="이메일을 입력하세요">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-default" id="passSearchBtn">확인</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
       </form>
     </div>
   </div>ㄴ
   <script >
   $("#idSearchBtn").click(function(){
	   console.log("아이디 확인 접속중..");
	  $.ajax({
		  url:"/minipro2/user/idSearch",
		  data: {"name" : $("#inputName2").val() , "email" : $("#inputEmail2").val() },
		  dataType:"json",
		  type:"GET",
		  success:function(id){
			  console.log("아이디는 ",id);
			  var msg = "정보와 일치하는 아이디가 없습니다."
			  if(id != null){msg="당신의 아이디는 "+id+"입니다."};
			  alert(msg);
		  },
		  error:function(e){
			  console.log("에러는",e);
		  }
	  }); 
   });
   
   $("#passSearchBtn").click(function(){
	   console.log("비밀번호 확인 접속중..");
	   $.ajax({
		  url:"/minipro2/user/pwSearch",
		  data:{"name" : $("#inputName3").val() , "email" : $("#inputEmail3").val(),  "id" : $("#inputId3").val() },
		  dataType:"json",
	   	  type:"GET", 
	   	  success:function(pass){
	   		 var msg2 = "정보와 일치하는 비밀번호가 없습니다."
				  if(pass != null){msg2="당신의 비밀번호는 "+pass+"입니다."};
				  alert(msg2);
	   		  
	   	  },
	   	  error:function(e){
	   		console.log("에러는",e);
	   	  }
	   
	   });
   });
   </script>
 </body>
 
</html>