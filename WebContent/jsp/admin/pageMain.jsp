<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      <div id="center-block">
	     <div class="page-header">
           <h1>관리자 페이지<h6>관리할 영화목록을 선택하세요</h6></h1>
              </div>
<!--            <div class="form-group" >  -->
<!--              <div class="col-sm-4"></div> -->
<!--              <div class="col-sm-6"> -->
<!--                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
<!--                <span id = "index">4월 2주</span> -->
<!--                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
<!--              </div> -->
<!--               <div class="col-sm-3"></div> -->
<!--            </div> -->
           
             <table class = "table table-hover" class="nav nav-tabs nav-justified">
             	<tr id = "tableTitle">
             		<th style="width: 20%;">영화등록번호</th>
             		<th style="width: 60%;">영화이름</th>
             		<th style="width: 20%;">관리 / 삭제</th>
             	</tr>
             	<c:forEach var="movie" items="${chart }">
 	            	<tr>
    	         		<td>${movie.movieSeq }</td>
        	     		<td>${movie.movieTitle }</td>
            	 		<td>
             			<a href="detail?movieSeq=${movie.movieSeq}">관리</a> / <a href="">삭제</a>
             			</td>
             		</tr>
             	</c:forEach>
			</table>
      </div>
    </div>
</body>
</html>