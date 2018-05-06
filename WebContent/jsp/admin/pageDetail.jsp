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
					<textarea name="moviePlot" rows="1" cols="1"
						style="height: 70px; width: 70%;">${movie.moviePlot }</textarea>
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

			<form enctype="multipart/form-data" method="post"
				action="posterRegist">
				<div class="form-group" id="poster-box">
					<div class="col-sm-2">포스터</div>
					<div class="col-sm-1"></div>
					<div class="col-sm-9">
						<input type="hidden" name="movieSeq" value="${movie.movieSeq }" />
						<input type="file" name="poster">
					</div>
				</div>
				<div class="helpV17">
					<p class="ftRt">
					<p class="text-right">
						<button type="submit" class="btn btn-warning btn-lg">업로드</button>
					</p>
				</div>
			</form>
			<div>
				<h4>등록된 포스터</h4>
				<c:forEach var="poster" items="${poster }">
				<div id="pos">
					<a
						href="${pageContext.request.contextPath}/common/file/down?path=${poster.posterPath}&sName=${poster.posterSysName}">(${movie.movieTitle })
						포스터</a>
					<img
						src="${pageContext.request.contextPath}/common/file/down?path=${poster.posterPath}&sName=${poster.posterSysName}"
						width="50" height="50">
					<input id = "no" type="hidden" value="${poster.posterNo }">
					<button id="posterDel">삭제</button>
					<br>
				</div>
				</c:forEach>
			</div>
			<hr>
			<br>



			<form id="steelForm" class="listDiv"
				enctype="application/x-www-form-urlencoded">
				<div class="form-group" id="steelCut-box">
					<div class="col-sm-2">스틸컷</div>
					<div class="col-sm-12">&nbsp;</div>
					<div class="col-sm-8">
						<input type="file" id="steelCut_1">
					</div>
					<input type="button" onclick="add()" value="추가">
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

			<form id="trailerForm" action=""
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
		var count = 0;
		function add() {
			var steelEle = $("#steelCut-box");
			var divEle = $("<div>").addClass('col-sm-12').attr("id","steel_"+ ++count);
			var inputEle = $("<input>").attr("type","file").attr("style","display:inline");
			var inputEle2 = $("<input>").attr("type","button").attr("value","삭제").addClass("del");
			divEle.append(inputEle);
			divEle.append(inputEle2);
			steelEle.append(divEle);
			
		}

		$(document).on("click",".del",function(){
			this.parentElement.remove();
		})
		

		$("#plotForm").submit(function(e) {
			e.preventDefault();

			$.ajax({
				url : "<c:url value='/admin/plotUpdate' />",
				method : "POST",
				data : {
					movieSeq : "${movie.movieSeq}",
					moviePlot : $("#plotForm textarea").val()
				},
				dataType : "json",
				success : alert("( ${movie.movieTitle} ) 줄거리 수정이 완료되었습니다.")
			})
		});
		
		$("#posterDel").click(function (e) {
			$("#")
		})
		
		$("#posterDel").click(function (e) {
			e.preventDefault();
		
			$.ajax({
				url : "<c:url value='/admin/posterDelete' />",
				data : {
					movieSeq : "${movie.movieSeq}",
					posterNo : $("#no").val()
				},
				dataType : "json",
				success : alert("( ${movie.movieTitle} ) 포스터가 삭제되었습니다.")
			})
		});

	</script>
</body>
</html>