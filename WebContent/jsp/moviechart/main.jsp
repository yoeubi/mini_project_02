<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE CHART MAIN</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../../css/detail.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"  href="./css/lightslider.css"/>
<style>
		.content-slider li{
			height: 600px;
		    background: #dbdbdb ;
		    text-align: center;
		    color: #FFF;
		}
		.content-slider li img{
			width: 100%;
			height: 400px;
		}
		.demo{
			width: 800px;
		}
		h1{
		color: black;
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

	<div id="chart">
		  <div class="item">
            <ul id="content-slider" class="content-slider">
                <li>
                    <h1>1</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li>
                    <h1>2</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li>
                    <h1>3</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li>
                    <h1>4</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li>
                    <h1>5</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li>
                    <h1>6</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li>
                    <h1>7</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li>
                    <h1>8</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li>
                    <h1>9</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
            </ul>
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