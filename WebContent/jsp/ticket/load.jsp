<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="selectMovie.html">
			<h2>날짜</h2>
			<input type="date" id="date">
		</form>
	</div>
	<div>
		<form action="">
			<h2>상영관</h2>
			<select id="location" name="location">
				<option selected>서울</option>
				<option>경기</option>
				<option>인천</option>
				<option>강원</option>
				<option>대전/충청</option>
				<option>대구</option>
				<option>부산/울산</option>
				<option>경상</option>
				<option>광주/전라/제주</option>
			</select>
			<select id="center" name="center">
				<option selected>CGV강남</option>
				<option>CGV강동</option>
				<option>CGV강변</option>
				<option>CGV건대입구</option>
				<option>CGV구로</option>
				<option>CGV군자</option>
				<option>CGV대학로</option>
				<option>CGV동대문</option>
				<option>CGV명동</option>
			</select>
		</form>
	</div>
</body>
</html>