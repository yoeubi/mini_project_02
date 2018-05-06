<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>BitCinema</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Discount Popup Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href="//fonts.googleapis.com/css?family=Viga" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<!-- /font files -->
<!-- css files -->
<link href="/minipro2/css/checkstyle.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css files -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
<h1 class="header-w3ls w3-agileits agileits-w3layouts w3-agile">Bitcinema</h1>
<div class="content-w3ls">
	<div class="content2">
		<h3 class="agileinfo1">예매가 완료되었습니다.</h3>
		<p class="agileinfo2">
			<span id="filmName">영화명 : <c:out value="${filmName}"/></span><br>
			<span id="branchName">상영지점 : <c:out value="${branchName}"/></span><br>
			<span id="screeningDate">상영날짜 : <c:out value="${screeningDate}" /></span><br>
			<span id="showTime">상영시간 : <c:out value="${showTime}" /></span><br>
			<span id="seat">좌석 : <c:out value="${seat}" /></span>
		</p>
		<input type="submit" class="register" value="확인">
	</div>
	<div class="alert-close1" id="close"><img src="/minipro2/images/ticket/close.png" alt="close"></div>
	<div class="clear"></div>
</div>
<!-- js files -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.content-w3ls').fadeOut('slow', function(c){
	  		$('.content-w3ls').remove();
		});
	});
});
$("input").click(function(){
	location.assign("/minipro2/main");
})
$("#close").click(function(){
	location.assign("/minipro2/main");
})
</script>
</body>
</html>