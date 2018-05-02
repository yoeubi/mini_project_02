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
var locations = $("#location");
var branches = $("#branch");
var screenings = $("#screening");
var films = $("#film");
var timetable = $("#timetable");

$(document).ready(function(){
	$.ajax({
        url: "/minipro2/controller/location",
        success : function (data) {
     	   for(var key of data){
     		   var opt = $("<option>").attr("value",key.locationCode).text(key.locationName);
     		   locations.append(opt);
     	   }
        }
    })
})
locations.on("change",this,function(){
	screenings.html("<option value=\"\">상영 날짜 선택</option>");
	films.html("<option value=\"\">영화 선택</option>");
	$.ajax({
		url : "/minipro2/controller/branch",
		data : "locationCode=" + this.value,
		success : function(data){
			branches.html("<option value=\"\">지점 선택</option>")
			for(var key of data){
    		   var opt = $("<option>").attr("value",key.branchCode).text(key.branchName);
    		   branches.append(opt);
        	}
		}
	});
	
})
branches.on("change",this,function(){
	films.html("<option value=\"\">영화 선택</option>");
	$.ajax({
		url : "/minipro2/controller/screening",
		data : "branchCode=" + this.value,
		success : function(data){
			screenings.html("<option value=\"\">상영 날짜 선택</option>")
			for(var key of data){
    		   var opt = $("<option>").attr("value",key.screeningCode).text(key.screeningDate);
    		   screenings.append(opt);
        	}
		}
	});
	
})
screenings.on("change",this,function(){
	$.ajax({
		url : "/minipro2/controller/film",
		data : "screeningCode=" + this.value,
		success : function(data){
			films.html("<option value=\"\">영화 선택</option>")
			for(var key of data){
    		   var opt = $("<option>").attr("value",key.filmCode).text(key.filmName);
    		   films.append(opt);
        	}
		}
	
	});
	
})
films.on("change",this,function(){
	timetable.html("");
	$.ajax({
		url : "/minipro2/controller/timetable",
		data : "filmCode=" + films.val(),
		success : function(data){
			for(var key of data){
				var theaterEle = $("<tr>").append($("<td>").attr("value",key.theaterCode).text(key.theaterName));
				timetable.append(theaterEle);
				var showtimeEle = $("<tr>");
				for(var time of key.timeTable){
					var times = $("<td>").append($("<button>").attr("value",$.trim(time.showCode)).text($.trim(time.showTime)));
					showtimeEle.append(times);
				}
				timetable.append(showtimeEle);
			}
		}
	});
})
$(document).on("click","button",function(){
	var result = confirm("예매하시겠습니까?");
	if(result){
		location.assign("/minipro2/controller/booking?showCode="+ this.value);
	}
})
</script>
<!-- <script type='text/javascript' src='../flight/web/js/jquery-2.2.3.min.js'></script> -->
</body>
</html>