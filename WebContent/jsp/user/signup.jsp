<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src= "https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
     <div id="center-block">
      <div class="page-header">
          <h1>회원가입<h6>환영합니다</h6> </h1>
       </div>
       <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/signup" onsubmit="return doAction()">
         <div class="form-group"> 
            <label for="inputIdl3" class="col-sm-2 control-label">아이디</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name ="inputId3" id="inputId3" placeholder="아이디를 입력하세요">
            </div>
             <div class="col-sm-3" id="idAlert"></div>
          </div>
         <div class="form-group"> 
            <label for="inputPassl3" class="col-sm-2 control-label">비밀번호</label>
            <div class="col-sm-7">
              <input type="password" class="form-control"  name ="inputPass3" id="inputPass3" placeholder="비밀번호를 입력하세요">
            </div>
             <div class="col-sm-3"></div>
          </div>
         <div class="form-group"> 
            <label for="inputCheckPassl3" class="col-sm-2 control-label">비밀번호확인</label>
            <div class="col-sm-7">
              <input type="password" class="form-control"  name ="inputCheckPass3" id="inputCheckPass3" placeholder="비밀번호를 입력하세요">
            </div>
             <div class="col-sm-3" id="passAlert"></div>
          </div>
         <div class="form-group"> 
            <label for="inputNamel3" class="col-sm-2 control-label">이름</label>
            <div class="col-sm-7">
              <input type="text" class="form-control"  name ="inputName3"id="inputName3" placeholder="이름을 입력하세요">
            </div>
            <div class="col-sm-3">
            </div>
         </div>
         <div class="form-group"> 
            <label for="inputEmaill3" class="col-sm-2 control-label">이메일</label>
            <div class="col-sm-7">
              <input type="email" class="form-control" name ="inputEmail3" id="inputEmail3" placeholder="이메일을 입력하세요">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group"> 
            <label for="inputPhone3" class="col-sm-2 control-label">핸드폰 번호</label>
            <div class="col-sm-7">
              <input type="text" class="form-control"  name ="inputPhone3" id="inputPhone3" placeholder="핸드폰 번호를 입력하세요  ex) 010 - 1234 - 5678 ">
            </div>
            <div class="col-sm-3"></div>
         </div>
         <div class="form-group">
            <div class="col-sm-offset-2 col-sm-7">
	        <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-default" id = "subBtn">회원가입</button></p>
	        </div>
            </div>
            <div class="col-sm-3"> </div>
          </div>
       </form>
     </div>
   </div>
   <script>
 
   	 $("#inputId3").keyup(function(){
   		 console.log(this.value);
   		$.ajax({
   			url:"/minipro2/ajax/user/doubleCheckId",
   			data : "id="+this.value,
   			dataType  :"json",
   			success : function(data){
   				var msg="<div class=\"alert alert-success\" role=\"alert\">사용가능한 아이디입니다.</div>"
   				if(data.result == 1){msg="<div class=\"alert alert-danger\" role=\"alert\">이미 사용중인 아이디입니다.</div>"};
   				$("#idAlert").html(msg);
   			}, 
  			error : function(e){
   				console.log(e);
   			}
   		});
   	 });
   	 
   	 $("#inputCheckPass3").keyup(function(){
   		//$("#passAlert").remove()
   		console.log($("#inputPass3").val());
   		var msg="";
   		msg="<div class=\"alert alert-danger\" role=\"alert\">비밀번호를 확인하세요</div>"
   		 if($("#inputPass3").val() == this.value){msg="<div class=\"alert alert-success\" role=\"alert\">OK</div>"};
   		$("#passAlert").html(msg);
   		 
   	 });
     	function doAction(){
    	 if( $("#inputId3").val() == ""){ alert("아이디를 입력하세요");return false};
    	 if($("#inputPass3").val() !=  $("#inputCheckPass3").val()) { alert("비밀번호가 일치하지 않습니다.");return false};
    	 if( $("#inputPass3").val() == ""){ alert("비밀번호를 입력하세요");return false};
    	 if( $("#inputName3").val() == ""){ alert("이름을 입력하세요");return false};
    	 if( $("#inputEmail3").val() == ""){ alert("이메일을 입력하세요");return false};
    	 if( $("#inputPhone3").val() == ""){ alert("핸드폰 번호를 입력하세요");return false};
    	 return true
    	 };
   </script>
</body>
</html>












