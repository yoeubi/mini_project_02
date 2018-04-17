<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE CHART stilcut</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../../css/detail.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
    	ul{
			list-style: none outside none;
		    padding-left: 0;
            margin: 0;
		}
    </style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="../../js/lightslider.js"></script> 
<script>
    	 $(document).ready(function() {
			$("#content-slider").lightSlider({
                loop:true,
                keyPress:true
            });
            $('#image-gallery').lightSlider({
                gallery:true,
                item:1,
                thumbItem:9,
                slideMargin: 0,
                speed:500,
                auto:true,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery').removeClass('cS-hidden');
                }  
            });
		});
    </script>
</head>
<body>
	<div id="top">
		<div class= "col-md-12">
			<h1 class="movie_chart">Movie_Chart</h1>
		</div>
		<div id="tabs">
			<div class= "col-md-8"></div>
			<div class= "col-md-2">
				<button>상영중</button>
			</div>
			<div class= "col-md-2">
				<button>상영예정작</button>
			</div>
		</div>
		<div class= "col-md-12">
			<hr style= "border-top: 5px double black;">
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
					<p>
					<a href="" role="button">주요정보</a>
					<a href="">트레일러</a>
					<a href="">스틸컷</a>
					<a href="">평점/리뷰</a>
					</p>
				<hr style= "border-top: 2px solid black; width: 94%;">
		    </div>
	
	<div id="stilcut" class="bottom">
		<div class="item">            
        <div class="clearfix" style="max-width:606px; height:450px;">
          <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> <!-- 70 * 50 -->
                        <img src="../../images/stil/movie_image (1).jpg" /> <!-- 605 * 400 -->
                    </li>
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> 
                        <img src="../../images/stil/movie_image (1).jpg" /> 
                    </li>
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> 
                        <img src="../../images/stil/movie_image (1).jpg" /> 
                    </li>
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> 
                        <img src="../../images/stil/movie_image (1).jpg" /> 
                    </li>
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> 
                        <img src="../../images/stil/movie_image (1).jpg" /> 
                    </li>
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> 
                        <img src="../../images/stil/movie_image (1).jpg" /> 
                    </li>
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> 
                        <img src="../../images/stil/movie_image (1).jpg" /> 
                    </li>
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> 
                        <img src="../../images/stil/movie_image (1).jpg" /> 
                    </li>
                    <li data-thumb="../../images/stil/thumb/movie_image (1).jpg"> 
                        <img src="../../images/stil/movie_image (1).jpg" /> 
                    </li>
                </ul>
        </div>
        </div>
	</div>
	</div>
	
		<div id="realad">
		<div class="realtime">
			<h2>실시간 인기 검색어</h2>
			<h3>1. 아아아아아</h3>
			<h3>2. 아아아</h3>
			<h3>3. 아아아아아</h3>
			<h3>4. 아아아</h3>
			<h3>5. 아아아아아</h3>
			<h3>6. 아아아</h3>
			<h3>7. 아아아아아</h3>
			<h3>8. 아아아</h3>
			<h3>9. 아아아아아</h3>
			<h3>10. 아아아</h3>
		</div>
		<div class="ad1">
			광고이미지가 들어갈곳
		</div>
		<div class="ad2">
			광고이미지가 들어갈곳
		</div>
		<div class="ad3">
			광고이미지가 들어갈곳
		</div>
	</div>
	
	
	
</body>
</html>