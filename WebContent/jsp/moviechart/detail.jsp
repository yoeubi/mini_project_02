<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE CHART detail</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/minipro2/css/detail.css"> 
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
			<img src="/minipro2/images/icon/x.png">
		</div>
			<div class="pos">
				<img src="/minipro2/images/poster/moonlight poster.jpg">
			</div>
			<div class="title">
				<h1>${movie.movieTitle }</h1>
				<h4>${movie.movieTitleEng }</h4>
				<h3 style="text-align: right;">예매율 : ${movie.movieSalesShare }%</h3>
				<hr style= "border-top: 1px solid black;">
				<h4>감독 : ${movie.movieDirector }  / 배우 : <c:forEach var="actor" items="${act }">${actor.movieActor } </c:forEach></h4>
				<h4>장르 : <c:forEach var="genre" items="${gen }">${genre.movieGenre }</c:forEach> / 기본 : ${movie.movieRating}, ${movie.movieRuntime }분, ${movie.movieNation }</h4>
				<h4>개봉 : ${movie.movieReleaseDate}</h4>
				<button>예매</button>
			</div>
			<div id="midbutton">
				<hr style= "border-top: 2px solid black; width: 94%;">
					<div class="btn-group" role="group">
					  <button type="button" class="btn btn-default" onclick="location.href='detail' ">주요정보</button>
					  <button type="button" class="btn btn-default" onclick="location.href='trailer' ">트레일러</button>
					  <button type="button" class="btn btn-default" onclick="location.href='stilcut' ">스틸컷</button>
					  <button type="button" class="btn btn-default" onclick="location.href='review' ">평점/리뷰</button>
					</div>
				<hr style= "border-top: 2px solid black; width: 94%;">
			</div>
			<div id="scroll" class="bottom">
			<p>(((주요정보입력창)))2045년, 암울한 현실과 달리 가상현실 오아시스(OASIS)에서는
				누구든 원하는 캐릭터로 어디든지 갈 수 있고, 뭐든지 할 수 있고 상상하는 모든 게 가능하다.
				웨이드 와츠(타이 쉐리던) 역시 유일한 낙은 대부분의 사람들이 하루를 보내는 오아시스에 접속하는 것이다.
				어느 날 오아시스의 창시자인 괴짜 천재 제임스 할리데이(마크 라이런스)는 자신이 가상현실 속에 숨겨둔
				3개의 미션에서 우승하는 사람에게 오아시스의 소유권과 막대한 유산을 상속한다는 유언을 남기고,
				그가 사랑했던 80년대 대중문화 속에 힌트가 있음을 알린다.
				제임스 할리데이를 선망했던 소년 ‘웨이드 와츠’가 첫 번째 수수께끼를 푸는 데 성공하자
				이를 저지하기 위해 현실에서 살인도 마다하지 않는 ‘IOI’라는 거대 기업이 뛰어든다.
				모두의 꿈과 희망이 되는 오아시스를 지키기 위해서는 반드시 우승해야 한다!
				그리고 우승을 위해서는 가상현실이 아닌 현실세계의 우정과 사랑의 힘이 필요하기만 한데…
				</p>
			</div>
	</div>
</body>
</html>