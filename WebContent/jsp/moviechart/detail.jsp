<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE CHART detail</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/minipro2/css/detail.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
ul {
	list-style: none outside none;
	padding-left: 0;
	margin: 0;
}
</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="/minipro2/js/lightslider.js"></script>
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
			<h1 class="movie_chart">Movie_Chart</h1>
		</div>
	</div>

	<div id="middle">
		<div class="pos">
			<img src="/minipro2/images/poster/moonlight poster.jpg">
		</div>
		<div class="title">
			<h1>${movie.movieTitle }</h1>
			<h4>${movie.movieTitleEng }</h4>
			<h3 style="text-align: right;">예매율 : ${movie.movieSalesShare }%</h3>
			<hr style="border-top: 1px solid black;">
			<h4>개봉일  :  ${movie.movieReleaseDate}</h4>
			<h4>개요  :  ${movie.movieRating}, ${movie.movieRuntime }분,
				${movie.movieNation }</h4>
			<h4>
				장르  :  
				<c:forEach var="genre" items="${gen }" varStatus="sta">
					<c:if test="${!sta.first}">,</c:if>
					${genre.movieGenre }
				</c:forEach>
			</h4>
			<button>예매</button>
		</div>
		<div id="midbutton">
			<hr style="border-top: 1px solid black; width: 94%;">
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default"
					onclick="show('detail')">상세정보</button>
				<button type="button" class="btn btn-default"
					onclick="show('detail')">배우 / 감독</button>
				<button type="button" class="btn btn-default"
					onclick="show('trailer') ">트레일러</button>
				<button type="button" class="btn btn-default"
					onclick="show('stilcut') ">스틸컷</button>
				<button type="button" class="btn btn-default"
					onclick="show('review') ">평점 / 리뷰</button>
			</div>
			<hr style="border-top: 1px solid black; width: 94%;">
		</div>
		<div id="detail" class="bottom">
			<h2>감독 : </h2>
			<p> ${movie.movieDirector }</p>
			<h2>
				배우 :
				<c:forEach var="actor" items="${act }" varStatus="vs">
					<c:if test="${!vs.first}">,</c:if>
				${actor.movieActor } 
				</c:forEach>
			</h2>
			<h2>줄거리 : 2045년, 암울한 현실과 달리 가상현실 오아시스(OASIS)에서는 누구든 원하는 캐릭터로
				어디든지 갈 수 있고, 뭐든지 할 수 있고 상상하는 모든 게 가능하다. 웨이드 와츠(타이 쉐리던) 역시 유일한 낙은
				대부분의 사람들이 하루를 보내는 오아시스에 접속하는 것이다. 어느 날 오아시스의 창시자인 괴짜 천재 제임스 할리데이(마크
				라이런스)는 자신이 가상현실 속에 숨겨둔 3개의 미션에서 우승하는 사람에게 오아시스의 소유권과 막대한 유산을 상속한다는
				유언을 남기고, 그가 사랑했던 80년대 대중문화 속에 힌트가 있음을 알린다. 제임스 할리데이를 선망했던 소년 ‘웨이드
				와츠’가 첫 번째 수수께끼를 푸는 데 성공하자 이를 저지하기 위해 현실에서 살인도 마다하지 않는 ‘IOI’라는 거대 기업이
				뛰어든다. 모두의 꿈과 희망이 되는 오아시스를 지키기 위해서는 반드시 우승해야 한다! 그리고 우승을 위해서는</h2>
		</div>
		<div id="stilcut" class="bottom" style="display: none;">
			<div class="item">
				<div class="clearfix" style="max-width: 606px; height: 450px;">
					<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<!-- 70 * 50 --> <img
							src="/minipro2/images/stil/movie_image (1).jpg" /> <!-- 605 * 400 -->
						</li>
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<img src="/minipro2/images/stil/movie_image (1).jpg" />
						</li>
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<img src="/minipro2/images/stil/movie_image (1).jpg" />
						</li>
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<img src="/minipro2/images/stil/movie_image (1).jpg" />
						</li>
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<img src="/minipro2/images/stil/movie_image (1).jpg" />
						</li>
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<img src="/minipro2/images/stil/movie_image (1).jpg" />
						</li>
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<img src="/minipro2/images/stil/movie_image (1).jpg" />
						</li>
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<img src="/minipro2/images/stil/movie_image (1).jpg" />
						</li>
						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg">
							<img src="/minipro2/images/stil/movie_image (1).jpg" />
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="trailer" class="bottom" style="display: none;">
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
			<div class="tra">트레일러</div>
		</div>
		<div id="review" class="bottom" style="display: none;">
			<div class="review_write">
				<form action="commentRegist" method="post">
					<input type="hidden" name="movieSeq" value="${movie.movieSeq }" />
					<input type="hidden" name="id" value="c" /> <select name="star"
						class="form-control"
						style="height: 70px; width: 20%; float: left;">
						<option value=1>★☆☆☆☆</option>
						<option value=2>★★☆☆☆</option>
						<option value=3>★★★☆☆</option>
						<option value=4>★★★★☆</option>
						<option value=5>★★★★★</option>
					</select>
					<textarea name="content" id="text" class="form-control" rows="1"
						cols="1" rows="1"
						style="height: 70px; width: 70%; float: left; margin-right: 10px;"
						placeholder="최대 한글 150자까지 가능하며, 로그인  후 이용가능합니다."></textarea>
					<p class="txt-len">
						<span id="txt-cnt">0</span>/150
					</p>
					<button class="btn btn-primary" style="height: 38px;">등록</button>
				</form>

			</div>
			<table class="table-bordered" style="text-align: center;" >
				<tr style="height: 40px;">
					<th style="width: 10%; text-align: center;">평점</th>
					<th style="width: 60%; text-align: center;">한줄평</th>
					<th style="width: 10%; text-align: center;">글쓴이</th>
					<th style="width: 10%; text-align: center;">등록일</th>
					<th style="width: 10%; text-align: center;">수정 / 삭제</th>
				</tr>
				<c:forEach var="comment" items="${com }">
					<tr style="height: 40px;">
						<c:choose>
							<c:when test="${'1' eq comment.commentStar}">
								<td>★☆☆☆☆</td>
							</c:when>
							<c:when test="${'2' eq comment.commentStar}">
								<td>★★☆☆☆</td>
							</c:when>
							<c:when test="${'3' eq comment.commentStar}">
								<td>★★★☆☆</td>
							</c:when>
							<c:when test="${'4' eq comment.commentStar}">
								<td>★★★★☆</td>
							</c:when>
							<c:when test="${'5' eq comment.commentStar}">
								<td>★★★★★</td>
							</c:when>
						</c:choose>
						<td>${comment.content}</td>
						<td valign="middle">${comment.memberId}</td>
						<td valign="middle"><fmt:formatDate
								value="${comment.commentRegdate }" pattern="yyyy.MM.dd" /></td>
						<td valign="middle"><a
							href="detail?movieSeq=${movie.movieSeq }&commentSeq=${comment.commentSeq}">수정</a>
							/ <a
							href="commentDelete?movieSeq=${movie.movieSeq }&commentSeq=${comment.commentSeq}">삭제</a></td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
	<script>
		function show(kind) {
			var detail = document.querySelector("#detail");
			var trailer = document.querySelector("#trailer");
			var stilcut = document.querySelector("#stilcut");
			var review = document.querySelector("#review");

			detail.style.display = "none";
			trailer.style.display = "none";
			stilcut.style.display = "none";
			review.style.display = "none";

			document.querySelector("#" + kind).style.display = "block";
		}
		$("#text").keyup(function() {
			if ($("#text").val().length >= 150) {
				$("#text").val($("#text").val().substring(0, 150));
			}
			$("#txt-cnt").text($("#text").val().length);
		})
	</script>
</body>
</html>