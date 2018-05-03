<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bitcinema</title>
<link href="/minipro2/css/filmStyle.css" rel='stylesheet' type='text/css' media="all">
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
<h1 class="header-w3ls">Bitcinema</h1>
<div class="appointment-w3">
	<div class="information">
		<div class="main">
			<div class="form-left-w3l">
				<select class="form-control" id="location">
					<option value="">지역 선택</option>
				</select>
			</div>
			<div class="form-right-w3ls">
				<select class="form-control" id="branch">
					<option value="">지점 선택</option>
				</select>
			</div>
		</div>
		<div class="main">
			<div class="form-left-w3l">
				<select class="form-control" id="screening">
					<option value="">상영 날짜 선택</option>
				</select>
			</div>
			<div class="form-right-w3ls">
				<select class="form-control" id="film">
					<option value="">영화 선택</option>
				</select>
			</div>
		</div>
		<div class="main">
			<div class="form-left-w3ls" id="timetable">
				
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	var startCode = <%= request.getAttribute("filmName") %>
	if(starCode != null){
		$.ajax({
			url : "",
			data : "",
			dataType : "",
			success : function(data){
				setting();			
			};
		});
	}
})
function setting(){
	$("#film").
}
</script>
</body>
</html>