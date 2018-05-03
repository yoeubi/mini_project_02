<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/minipro2/css/imageAdmin.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">

		<div class="page-header">
			<div class="form-group">
				<h3 id="movieTitle">${movie.movieTitle }</h3>
			</div>
		</div>
		<div class="page-body">

			<form id="plotForm">
				<div class="form-group" id="movie-plot">
					<div class="col-sm-2">줄거리</div>
					<textarea name="moviePlot" rows="1" cols="1" style="height: 70px; width: 70%;">${movie.moviePlot }</textarea>
					<br>
				</div>
				<div class="helpV17">
					<p class="ftRt">
					<p class="text-right">
						<button class="btn btn-warning btn-lg">업로드</button>
					</p>
				</div>
				<hr>
			</form>

			<br>

			<form id="posterForm" action=""
				enctype="application/x-www-form-urlencoded">
				<div class="form-group" id="poster-box">
					<div class="col-sm-2">포스터</div>
					<div class="col-sm-9">
						<input type="file" id="posterImg">
					</div>
					<div class="col-sm-1"></div>
				</div>
				<div class="helpV17">
					<p class="ftRt">
					<p class="text-right">
						<button type="submit" class="btn btn-warning btn-lg">업로드</button>
					</p>
				</div>
				<hr>
			</form>

			<br>

			<form id="posterForm" action=""
				enctype="application/x-www-form-urlencoded">
				<div class="form-group" id="steelCut-box">
					<div class="col-sm-2">스틸컷</div>
					<div class="col-sm-9">
						<input type="file" id="steelCut_1"> <input type="file"
							id="steelCut_2"> <input type="file" id="steelCut_3">
						<input type="file" id="steelCut_4"> <input type="file"
							id="steelCut_5"> <input type="file" id="steelCut_6">
						<input type="file" id="steelCut_7"> <input type="file"
							id="steelCut_8"> <input type="file" id="steelCut_9">
					</div>
					<div class="col-sm-1"></div>
				</div>
				<div class="helpV17">
					<p class="ftRt">
					<p class="text-right">
						<button type="submit" class="btn btn-warning btn-lg">업로드</button>
					</p>
				</div>
				<hr>
			</form>

			<br>

			<form id="posterForm" action=""
				enctype="application/x-www-form-urlencoded">
				<div class="form-group" id="trailer-box">
					<div class="col-sm-2">트레일러</div>
					<div class="col-sm-10">
						<input type="file" id="trailer">
					</div>
				</div>
				<div class="helpV17">
					<p class="ftRt">
					<p class="text-right">
						<button type="submit" class="btn btn-warning btn-lg">업로드</button>
					</p>
				</div>
				<hr>
			</form>

			<br>

		</div>

	</div>

	<script>
	$("#plotForm").submit(function (e) {
		e.preventDefault();
		
		$.ajax({
			url:"<c:url value='/admin/plotUpdate' />",
			method:"POST",
			data: {
				movieSeq:"${movie.movieSeq}",
				moviePlot:$("#plotForm textarea").val()
			},
			dataType:"json"
		})
	});
	
	</script>
</body>
</html>