<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE CHART trailer</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../../css/detail.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="top">
		<div class= "col-md-12">
			<h1 class="movie_chart">Movie_Chart</h1>
		</div>
	</div>

	<div id="middle">
		<div class="topx">
			<img src="../../images/icon/x.png">
		</div>
			<div class="pos">
				<img src="../../images/poster/moonlight poster.jpg">
			</div>
			<div class="title">
				<h1>영화명을 입력할곳</h1>
				<h5>영어 영화명을 입력할곳</h5>
				<h3 style="text-align: right;">예매율 : 예매율%</h3>
				<hr style= "border-top: 1px solid black;">
				<h4>감독 : 감독이름  / 배우 : ooo, ooo, ooo, ooo...</h4>
				<h4>장르 : oo, oo... / 기본 : 00세이상, 00분, 미국</h4>
				<h4>개봉 : 0000.00.00</h4>
				<button>예매</button>
			</div>
			<div id="midbutton">
				<hr style= "border-top: 2px solid black; width: 94%;">
					<div class="btn-group" role="group">
					  <button type="button" class="btn btn-default" onclick="location.href='detail.jsp' ">주요정보</button>
					  <button type="button" class="btn btn-default" onclick="location.href='trailer.jsp' ">트레일러</button>
					  <button type="button" class="btn btn-default" onclick="location.href='stilcut.jsp' ">스틸컷</button>
					  <button type="button" class="btn btn-default" onclick="location.href='review.jsp' ">평점/리뷰</button>
					</div>
				<hr style= "border-top: 2px solid black; width: 94%;">
			</div>
			<div id="scroll" class="bottom">
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
				<div class="tra">트레일러</div>
			</div>
	</div>
	
</body>
</html>