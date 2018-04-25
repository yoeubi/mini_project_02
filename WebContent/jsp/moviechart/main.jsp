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
<link rel="stylesheet"  href="../../css/lightslider.css"/>
<style>
		.content-slider li{
			height: 600px;
		    border: 1px solid gray;
		    text-align: center;
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
			<h1 class="movie_chart">Movie_chart</h1>
		</div>
	</div>

	<div id="chart">
		  <div class="item">
            <ul id="content-slider" class="content-slider">
                <li onclick="location.href='detail.jsp' ">
                    <h1>1</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li onclick="location.href='detail.jsp' ">
                    <h1>2</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li onclick="location.href='detail.jsp' ">
                    <h1>3</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li onclick="location.href='detail.jsp' ">
                    <h1>4</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li onclick="location.href='detail.jsp' ">
                    <h1>5</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li onclick="location.href='detail.jsp' ">
                    <h1>6</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li onclick="location.href='detail.jsp' ">
                    <h1>7</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li onclick="location.href='detail.jsp' ">
                    <h1>8</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
                <li onclick="location.href='detail.jsp' ">
                    <h1>9</h1>
                    <img src="../../images/poster/carol poster.jpg">
               		<h2>영화명</h2>
               		<h4>00.00.00 개봉</h4>
               		<h4>예매율: 00%</h4>
                </li>
            </ul>
        </div>
	</div>

</body>
</html>