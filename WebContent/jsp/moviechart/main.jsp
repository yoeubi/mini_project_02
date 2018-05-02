<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE CHART MAIN</title>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="/minipro2/js/lightslider.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/minipro2/css/detail.css">
<style>
.content-slider li {
	height: 600px;
	border: 1px solid gray;
	text-align: center;
}

.content-slider li img {
	width: 100%;
	height: 400px;
}

.demo {
	width: 800px;
}

h1 {
	color: black;
}
</style>
<script>
	$(document).ready(function() {
		$("#content-slider").lightSlider({
			loop : true,
			keyPress : true
		});
		$('#image-gallery').lightSlider({
			gallery : true,
			item : 1,
			thumbItem : 9,
			slideMargin : 0,
			speed : 500,
			auto : true,
			loop : true,
			onSliderLoad : function() {
				$('#image-gallery').removeClass('cS-hidden');
			}
		});
	});
</script>
</head>
<body>
	<div id="top">
		<div class="col-md-12">
			<h1 class="movie_chart">Movie_chart</h1>
		</div>
	</div>

	<div id="chart">
		<div class="item">
			<ul id="content-slider" class="content-slider">
				<c:forEach var="movie" items="${chart}" varStatus="m">
					<li onclick="location.href='detail?movieSeq=${movie.movieSeq }'">
						<h1>${m.index + 1}</h1> 
						<img src="/minipro2/images/poster/carol poster.jpg">
						<h3>${movie.movieTitle}</h3>
						<h4>${movie.movieReleaseDate }개봉</h4>
						<h4>예매율: ${movie.movieSalesShare }%</h4>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>

</body>
</html>