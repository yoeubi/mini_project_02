<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/minipro2/css/imageAdmin.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
      
	     <div class="page-header">
           <div class="form-group">  
                <h3 id = "movieTitle">영화 제 목</h3>
           </div>
        </div>
      <form id="deForm" action="" enctype="application/x-www-form-urlencoded">
        <div class="page-body">
        
          <div class="form-group" id="movie-plot">
          	<div class="col-sm-2">줄거리</div>
          	<textarea rows="1" cols="1" style="height: 70px; width: 70%;"></textarea>
          </div>
          <div class="form-group" id = "poster-box">   
             <div class="col-sm-2">포스터</div>
             <div class="col-sm-9">
              	<input type="file" id = "posterImg">
             </div>
               <div class="col-sm-1"></div>
           </div>
           <div class="form-group" id = "steelCut-box"> 
             <div class="col-sm-2">스틸컷</div>
             <div class="col-sm-9">
              	<input type="file" id = "steelCut_1">
              	<input type="file" id = "steelCut_2">
              	<input type="file" id = "steelCut_3">
              	<input type="file" id = "steelCut_4">
              	<input type="file" id = "steelCut_5">
              	<input type="file" id = "steelCut_6">
              	<input type="file" id = "steelCut_7">
              	<input type="file" id = "steelCut_8">
              	<input type="file" id = "steelCut_9">
             </div>
             <div class="col-sm-1"></div>
           </div>
           <div class="form-group" id = "trailer-box"> 
             <div class="col-sm-2">트레일러</div>
             <div class="col-sm-10">
              	<input type="file" id = "trailer">
             </div>
           </div>
           <div class="helpV17">
	        	<p class="ftRt"><p class="text-right"><button type="submit" class="btn btn-warning btn-lg">업로드</button></p>
	        </div>
        </div>
      </form>
   
    </div>
    
    <script>
    
    
    </script>
</body>
</html>