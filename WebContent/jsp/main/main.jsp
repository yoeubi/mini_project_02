<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/minipro2/css2/style.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="/minipro2/css2/flexslider.css"
	type="text/css" media="all" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script src="/minipro2/js2/modernizr.js"></script>
<script src='/minipro2/js2/jquery.min.js'></script>
<script src='/minipro2/js2/jquery.color-RGBa-patch.js'></script>
<script src='/minipro2/js2/example.js'></script>
<!-- jQuery -->
<!-- FlexSlider -->
<script defer src="/minipro2/js2/jquery.flexslider.js"></script>
<script type="text/javascript">
	$(function() {
		SyntaxHighlighter.all();
	});
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			start : function(slider) {
				$('body').removeClass('loading');
			}
		});
	});
</script>
<!-- DC Tabs CSS -->
<link type="text/css" rel="stylesheet"
	href="http://www.dreamtemplate.com/dreamcodes/tabs/css/tsc_tabs.css" />
<!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript"
	src="http://www.dreamtemplate.com/dreamcodes/jquery.min.js"></script>
<!-- (do not call twice) -->
<!-- DC Tabs JS -->
<!--<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/tabs/js/tsc_tabs.js"></script>-->
<link rel="stylesheet" href="/minipro2/css2/tsc_tabs.css"
	type="text/css" media="all" />
<!-- 영화차트 스타일 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../../css/detail.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css2/lightslider.css" />
<style>
.content-slider li {
	height: 600px;
	background: #dbdbdb;
	text-align: center;
	color: #FFF;
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

.rank {
	height: 60px;
	width: 60px;
	background-color: #f4b642;
	position: absolute;
	color: white;
	opacity: 0.9;
	font-size: 30px;
	text-align: center;
	line-height: 60px;
}
</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="../../js2/lightslider.js"></script>
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

	<div class="header" style="background-color: #212121;">
		<!-- 	<div class="header-top"> -->
		<!-- 		<div class="wrap"> -->
		<!-- 			<div class="banner-no"> -->
		<!-- 		  		<img src="/minipro2/images/preferences/banner-no.png" alt=""/> -->
		<!-- 		    </div> -->
		<!-- 			  <div class="nav-wrap"> -->
		<!-- 					<ul class="group" id="example-one"> -->
		<!-- 			           <li class="current_page_item"><a href="main.jsp">메인</a></li> -->
		<!-- 			           <li><a href="about.html">영화</a></li> -->
		<!-- 			  		   <li><a href="movies_events.html">예매</a></li> -->
		<!-- 			  		   <li><a href="/minipro2/jsp/user/login.jsp">로그인</a></li> -->
		<!-- 			        </ul> -->
		<!-- 			  </div> -->
		<!--  			<div class="clear"></div> -->
		<!--    		</div> -->
		<!--     </div> -->
		<div class="banner">
			<div class="wrap">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li><img src="/minipro2/images/banner/banner3_1.jpg" alt="" />
							</li>
							<li><img src="/minipro2/images/banner/banner3_2.jpg" alt="" />
							</li>
							<li><img src="/minipro2/images/banner/banner3_3.jpg" alt="" />
							</li>
							<li><img src="/minipro2/images/banner/banner3_4.jpg" alt="" />
							</li>
						</ul>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="chart" id="chart1">
		<!-- 		<div class="col-sm-2" style="margin: 20px;"> -->
		<div class="content"
			style="width: 80%; margin: 0 auto; height: 1500px;">
			<c:forEach var="movie" items="${movie}" varStatus="m">
				<div class="thumbnail"
					style="float: left; margin-top: 50px; width: 200px; height: 450px; margin: 20px;"
					onclick="location.href='/minipro2/moviechart/detail?movieSeq=${movie.movieSeq }'">
					<div class="rank">${m.index + 1}</div>
					<img
						src="${pageContext.request.contextPath}/common/file/down?path=${movie.poster.posterPath}&sName=${movie.poster.posterSysName}">
					<div class="caption">
						<h3>${movie.movieTitle}</h3>
						<p>${movie.movieReleaseDate }개봉</p>
						<p>예매율 : ${movie.movieSalesShare }%</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>