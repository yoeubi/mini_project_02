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
			<img src="${pageContext.request.contextPath}/common/file/down?path=${poster.posterPath}&sName=${poster.posterSysName}">
		</div>
		<div class="title">
			<h1>${movie.movieTitle }</h1>
			<h4>${movie.movieTitleEng }</h4>
			<h3 style="text-align: right;">예매율 : ${movie.movieSalesShare }%</h3>
			<hr style="border-top: 1px solid black;">
			<h4>개봉일 : ${movie.movieReleaseDate}</h4>
			<h4>개요 : ${movie.movieRating}, ${movie.movieRuntime }분,
				${movie.movieNation }</h4>
			<h4>
				장르 :
				<c:forEach var="genre" items="${gen }" varStatus="sta">
					<c:if test="${!sta.first}">,</c:if>
					${genre.movieGenre }
				</c:forEach>
			</h4>
		</div>
		<div id="midbutton">
			<hr style="border-top: 1px solid black; width: 94%;">
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default"
					onclick="show('detail')">줄거리</button>
				<button type="button" class="btn btn-default"
					onclick="show('actdir')">감독 / 출연진</button>
				<button type="button" class="btn btn-default"
					onclick="show('trailer') ">예고편</button>
				<button type="button" class="btn btn-default"
					onclick="show('stilcut') ">스틸컷</button>
				<button type="button" class="btn btn-default"
					onclick="show('review') ">평점 / 리뷰</button>
			</div>
			<hr style="border-top: 1px solid black; width: 94%;">
		</div>
		<div id="detail" class="bottom">
			<h1>줄거리</h1>
			<hr>
			<p class="txt">${movie.moviePlot }</p>
		</div>
		<div id="actdir" class="bottom" style="display: none;">
			<h1>감독</h1>
			<hr>
			<p class="txt">${movie.movieDirector }</p>
			<br>
			<h1>출연진</h1>
			<hr>
			<p class="txt">
				<c:forEach var="actor" items="${act }" varStatus="vs">
					<c:if test="${!vs.first}">,</c:if>
				${actor.movieActor } 
			</c:forEach>
			</p>
		</div>
		<div id="stilcut" class="bottom" style="display: none;">
			<div class="item">
				<div class="clearfix" style="max-width: 606px; height: 450px;">
					<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
						<c:forEach var="st" items="${st }">
							<li data-thumb="${pageContext.request.contextPath}/common/file/down?path=${st.stilcutThumbPath}&sName=${st.stilcutThumbSysName}" /> <!-- 70 * 50 --> 
							<img style="width:605; height: 400;" src="${pageContext.request.contextPath}/common/file/down?path=${st.stilcutPath}&sName=${st.stilcutSysName}" /> <!-- 605 * 400 -->
							</li>
						</c:forEach>
<!-- 						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg"> -->
<!-- 							<img src="/minipro2/images/stil/movie_image (1).jpg" /> -->
<!-- 						</li> -->
<!-- 						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg"> -->
<!-- 							<img src="/minipro2/images/stil/movie_image (1).jpg" /> -->
<!-- 						</li> -->
<!-- 						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg"> -->
<!-- 							<img src="/minipro2/images/stil/movie_image (1).jpg" /> -->
<!-- 						</li> -->
<!-- 						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg"> -->
<!-- 							<img src="/minipro2/images/stil/movie_image (1).jpg" /> -->
<!-- 						</li> -->
<!-- 						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg"> -->
<!-- 							<img src="/minipro2/images/stil/movie_image (1).jpg" /> -->
<!-- 						</li> -->
<!-- 						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg"> -->
<!-- 							<img src="/minipro2/images/stil/movie_image (1).jpg" /> -->
<!-- 						</li> -->
<!-- 						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg"> -->
<!-- 							<img src="/minipro2/images/stil/movie_image (1).jpg" /> -->
<!-- 						</li> -->
<!-- 						<li data-thumb="/minipro2/images/stil/thumb/movie_image (1).jpg"> -->
<!-- 							<img src="/minipro2/images/stil/movie_image (1).jpg" /> -->
<!-- 						</li> -->
					</ul>
				</div>
			</div>
		</div>

		<div id="trailer" class="bottom" style="display: none;">
			<div class="tra">
				<iframe src="${movie.movieTrailer }" frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='936' HEIGHT='526' allow='autoplay' allowfullscreen></iframe>
			</div>
		</div>
	
		<div id="review" class="bottom" style="display: none;">
			<div class="review_write">
				<form id="rForm">
<%-- 					<input type="hidden" name="movieSeq" value="${movie.movieSeq }" /> --%>
<!-- 					<input type="hidden" name="id" value="c" />  -->
					<select name="star"
						class="form-control"
						style="height: 70px; width: 20%; float: left;" >
						<option value=1>★☆☆☆☆</option>
						<option value=2>★★☆☆☆</option>
						<option value=3>★★★☆☆</option>
						<option value=4>★★★★☆</option>
						<option value=5>★★★★★</option>
					</select>
					<textarea name="content" class="form-control text" rows="1"
						cols="1" style="height: 70px; width: 70%; float: left; margin-right: 10px;"
						placeholder="최대 한글 150자까지 가능하며, 로그인  후 이용가능합니다."></textarea>
					<p class="txt-len">
						<span id="txt-cnt">0</span>/150
					</p>
					<button id="combu" class="btn btn-primary" style="height: 38px;">등록</button>
				</form>

			</div>
			<form action="commentUpdate" method="post">
				<input type="hidden" name="movieSeq" value="${movie.movieSeq }" />
				<input type="hidden" name="commentSeq" value="${commentSeq }" />
				
				<!--   댓글 목록이 들어갈곳-->
				<div id="commentList"></div>
			</form>
		</div>
	</div>
	<script>
		function show(kind) {
			var detail = document.querySelector("#detail");
			var actdir = document.querySelector("#actdir");
			var trailer = document.querySelector("#trailer");
			var stilcut = document.querySelector("#stilcut");
			var review = document.querySelector("#review");

			detail.style.display = "none";
			actdir.style.display = "none";
			trailer.style.display = "none";
			stilcut.style.display = "none";
			review.style.display = "none";

			document.querySelector("#" + kind).style.display = "block";
		}
		$(document).on("keyup",".text",function(){
			if ($(this).val().length >= 150) {
				$(this).val($(this).val().substring(0, 150));
			}
			$("#txt-cnt").text($(this).val().length);
		})
		
// 		$(".text").keyup(function() {
// 			if ($(".text").val().length >= 150) {
// 				$(".text").val($(".text").val().substring(0, 150));
// 			}
// 			$("#txt-cnt").text($(".text").val().length);
// 		})


		// 댓글 목록을 만드는 함수
		function makeCommentList(result) {
			var html = "";
			html += '<table class="table-bordered" style="text-align: center;">';
			html += '    <tr style="height: 40px;">';
			html += '        <th style="width: 10%; text-align: center;">평점</th>';
			html += '        <th style="width: 60%; text-align: center;">한줄평</th>';
			html += '        <th style="width: 10%; text-align: center;">글쓴이</th>';			
			html += '        <th style="width: 10%; text-align: center;">등록일</th>';
			html += '        <th style="width: 10%; text-align: center;">수정 / 삭제</th>';
			html += '    </tr>';
			for(var i = 0; i < result.length; i++){
				var com = result[i];
				html += '<tr id="row' + com.commentSeq + '" style="height: 40px;">';
				switch (com.commentStar) {
					case 1:
						html += '<td>★☆☆☆☆</td>';
						break;
					case 2:
						html += '<td>★★☆☆☆</td>';
						break;
					case 3:
						html += '<td>★★★☆☆</td>';
						break;
					case 4:
						html += '<td>★★★★☆</td>';
						break;
					case 5:
						html += '<td>★★★★★</td>';
						break;
				}
				html += '<td>'+com.content+'</td>';
				html += '<td>'+com.memberId+'</td>';
				var date = new Date(com.commentRegdate);
				var time = date.getFullYear() + "."
				  		 + (date.getMonth() + 1) + "."
				  		 + date.getDate() + "<br>"
				  		 + date.getHours() + ":"
				  		 + date.getMinutes() + ":"
				  		 + date.getSeconds();
				html += '<td>'+ time +'</td>';
				html += '<td>';
				html += '    <a href="javascript:commentUpdateForm(' + com.commentSeq + ')">수정</a>';
				html += '    /';
				html += '    <a href="javascript:commentDelete(' + com.commentSeq + ')">삭제</a>';
				html += '</td>';
				html += '</tr>';
			}
			if(result.length == 0){
				html += '<tr><td colspan="5">현재 입력된 댓글이 존재하지 않습니다.</td></tr>';
			}
			html += "</table>";
			$("#commentList").html(html);
		}
		
		// 댓글 목록을 조회
		function commentList(){
			$.ajax({
				url: "<c:url value='/moviechart/commentList'/>",
				data: {movieSeq: "${movie.movieSeq}"},
				dataType: "json",
				success: makeCommentList
			})
		}
		
		// 디테일 로딩시 댓글 목록 불러옴
		commentList();
		
		// 댓글등록
		$("#rForm").submit(function (e) {
			// 기본적인 이벤트를 취소함
			e.preventDefault();
			
			$.ajax({
				url: "<c:url value='/moviechart/commentRegist'/>",
				type: "POST",
				data: {
					movieSeq: "${movie.movieSeq}",
					memberId: "c",
					commentStar: $("#rForm select").val(),
					content: $("#rForm textarea").val()
				},
				dataType: "json"
			})
			// ajax 성공시 실행함수
			.done(function (result) {
				$("#rForm textarea[name='content']").val("");
				
				makeCommentList(result);
			});
		});		
		
		function commentCancel(commentSeq) {
			$("#row" + commentSeq).show();
			$("#modRow" + commentSeq).remove();
		}
		
		
		// 댓글 수정 하는 폼
		function commentUpdateForm(commentSeq) {
			// display 속성을 block으로 바꿈
			// row로 시작하나
			$("#commentList tr[id^=row]").show();
			// 특정요소를 제거한다
			$("#commentList tr[id^=modRow]").remove();
			
			var modId = $("#row" + commentSeq + " > td:eq(0)").text();
			var modContent = $("#row" + commentSeq + " > td:eq(1)").text();
// 			최대한글 지정, 별점 체크 slected
			var html = '';
			html += '<tr id="modRow' + commentSeq + '">';
			html += '	<td>'
			html += '		<select name="star">'
			html += '			<option value=1>★☆☆☆☆</option>';
			html += '			<option value=2>★★☆☆☆</option>';
			html += '			<option value=3>★★★☆☆</option>';
			html += '			<option value=4>★★★★☆</option>';
			html += '			<option value=5>★★★★★</option>';
			html += '		</select>';	
			html += '   </td>';
			html += '	<td>';
			html += '		<div class="form-group">';
			html += '			<input type="text" class="text" name="content" value="' + modContent + '" class="form-control input-wp2" placeholder="내용을 입력하세요">';
			html += '		</div>';
			html += '	</td>';
			html += '	<td colspan="3">'; 
			html += '		<a href="javascript:commentUpdate(' + commentSeq + ');">수정</a>';
			html += '		/';
			html += '		<a href="javascript:commentCancel(' + commentSeq + ');">취소</a>';
			html += '	</td>';
			html += '</tr>';
			$("#row" + commentSeq).after(html);	
			$("#row" + commentSeq).hide();
		}
		
		// 댓글수정
		function commentUpdate(commentSeq) {
			$.ajax({
				url: "<c:url value='/moviechart/commentUpdate'/>",
				type: "POST",
				data: {
					movieSeq: "${movie.movieSeq}", 
					content: $("#modRow" + commentSeq + " input[name=content]").val(), 
					commentSeq: commentSeq
				},
				dataType: "json",
				success: function (result) {
					makeCommentList(result);
				} 
			});
		}
		
// 		
		// 댓글삭제
		function commentDelete(commentSeq) {
			$.ajax({
				url: "<c:url value='/moviechart/commentDelete'/>",
				data: {
					movieSeq: "${movie.movieSeq}", 
					commentSeq: commentSeq
				},
				dataType: "json",
				success: makeCommentList
			});
		}
			
		$("#uptext").keyup(function() {
			if ($("#uptext").val().length >= 150) {
				$("#uptext").val($("#uptext").val().substring(0, 150));
			}
		})
	</script>
</body>
</html>