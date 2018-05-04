<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/minipro2/css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="/minipro2/css/flexslider.css" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script src="/minipro2/js/modernizr.js"></script>
<script src='/minipro2/js/jquery.min.js'></script>
<script src='/minipro2/js/jquery.color-RGBa-patch.js'></script>
<script src='/minipro2/js/example.js'></script>
<!-- jQuery -->
<!-- FlexSlider -->
  <script defer src="/minipro2/js/jquery.flexslider.js"></script>
  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
  <!-- DC Tabs CSS -->
<link type="text/css" rel="stylesheet" href="http://www.dreamtemplate.com/dreamcodes/tabs/css/tsc_tabs.css" />
 <!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/jquery.min.js"></script> <!-- (do not call twice) -->
 <!-- DC Tabs JS -->
<!--<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/tabs/js/tsc_tabs.js"></script>-->
<link rel="stylesheet" href="/minipro2/css/tsc_tabs.css" type="text/css" media="all" />
<!-- 영화차트 스타일 -->
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
		.chart{
			height: 650px;
		}
		.rank{
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

<div class="header" style = "background-color:#212121;">
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
            <li>
  	    	    <img src="/minipro2/images/banner/banner3_1.jpg" alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="/minipro2/images/banner/banner3_2.jpg"  alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="/minipro2/images/banner/banner3_3.jpg"  alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="/minipro2/images/banner/banner3_4.jpg"  alt=""/>
  	    	</li>
          </ul>
        </div>
      </section>
   </div>
</div>
</div>
<div class="content">
	<div class="chart" id = "chart1">
      <div class="form-group"> 
    
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
            <div class = "rank">1</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/carol poster.jpg" alt="...">
                <div class="caption">
                  <h3>캐롤 CAROL</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
            <div class = "rank">2</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/galaxy poster.jpg" alt="...">
                <div class="caption">
                  <h3>가디언즈 갤럭시</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
            <div class = "rank">3</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/getout poster.jpg" alt="...">
                <div class="caption">
                  <h3>갯아웃 GetOut</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
            <div class = "rank">4</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/her poster.jpg" alt="...">
                <div class="caption">
                  <h3>그녀 her</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
             <div class="col-sm-2"></div>
      </div>
	
	</div>
	<div class="chart" id = "chart2">
      <div class="form-group"> 
    
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
            <div class = "rank">5</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/adline poster.jpg" alt="...">
                <div class="caption">
                  <h3>캐롤 CAROL</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
             <div class = "rank">6</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/gravity poster.jpg" alt="...">
                <div class="caption">
                  <h3>가디언즈 갤럭시</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
             <div class = "rank">7</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/imitation poster.jpg" alt="...">
                <div class="caption">
                  <h3>갯아웃 GetOut</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
             <div class = "rank">8</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/joy_poster.jpg" alt="...">
                <div class="caption">
                  <h3>그녀 her</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
             <div class="col-sm-2"></div>
      </div>
	
	</div>
	
	<div class="chart" id = "chart3">
      <div class="form-group"> 
    
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
             <div class = "rank">9</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/massion poster.jpg" alt="...">
                <div class="caption">
                  <h3>캐롤 CAROL</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
             <div class = "rank">10</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/sing poster.jpg" alt="...">
                <div class="caption">
                  <h3>가디언즈 갤럭시</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
             <div class = "rank">11</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/moonlight poster.jpg" alt="...">
                <div class="caption">
                  <h3>갯아웃 GetOut</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
            <div class="col-sm-2">
             <div class = "rank">12</div>
              <div class="thumbnail" style = "float:left;">
                <img src="/minipro2/images/poster/her poster.jpg" alt="...">
                <div class="caption">
                  <h3>그녀 her</h3>
                  <p>18.03.12개봉</p>
                  <p>예매율 : 12%</p>
                  <p><a href="#" class="btn btn-primary" role="button">예매</a> <a href="#" class="btn btn-default" role="button">영화정보</a></p>
                </div>
              </div>
            </div>
             <div class="col-sm-2"></div>
      </div>
	
	</div>
	
</div>
</body>
</html>