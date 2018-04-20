y<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/css/bootstrap-select.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/js/bootstrap-select.min.js"></script>
    <style>
        body {
            margin-left: auto;
        }
        div.container {
            margin-top: 100px;
            background-color: #1b6d85;
            height: 500px;
        }
    </style>
</head>
<body>
    <div class="container">
    <h1>Bootstrap Select demo</h1>
    <select class="selectpicker" data-style="btn-info" multiple data-max-options="1" data-live-search="true" >
        <optgroup label="지역">
            <option selected>서울</option>
            <option>경기도</option>
            <option>인천</option>
            <option>강원</option>
            <option>대전/충청</option>
            <option>대구</option>
            <option>부산/울산</option>
            <option>경상</option>
            <option>광주/전라/제주</option>
        </optgroup>
    </select>
    <select class="selectpicker" data-style="btn-info" multiple data-max-options="2" data-live-search="true" >
        <optgroup label="상영관">
            <option selected>강남</option>
            <option>강동</option>
            <option>강변</option>
            <option>건대입구</option>
            <option>구로</option>
            <option>군자</option>
            <option>대학로</option>
            <option>동대문</option>
            <option>명동</option>
        </optgroup>
    </select>
    <select class="selectpicker" data-style="btn-info" multiple data-max-options="1" data-live-search="true" >
        <optgroup label="날짜">
            <option selected>4/15 일</option>
            <option>4/16 월</option>
            <option>4/17 화</option>
            <option>4/18 수</option>
            <option>4/19 목</option>
            <option>4/20 금</option>
            <option>4/21 토</option>
            <option>4/22 일</option>
            <option>4/23 월</option>
            <option>4/24 화</option>
            <option>4/25 수</option>
        </optgroup>
    </select>
        <table border="1">
            <tr>
                <th>2D 1관 6층</th>
            </tr>
            <tr>
                <button>17:30</button>
                <button>20:40</button>
            </tr>
            <tr>
                <th>2D 3관 8층</th>
            </tr>
            <tr>
                <button>08:40</button>
                <button>11:30</button>
            </tr>

        </table>
</div>
</body>
</html>