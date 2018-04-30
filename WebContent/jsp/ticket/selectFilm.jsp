<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div>
		<div>
			지역 선택 :
		    <select id="location">
		        <option value="0000">===선택하세요===</option>
		    </select>
		    상영관 선택 :
		    <select id="branch">
		        <option value="0" >===선택하세요===</option>
		    </select>
		    날짜 선택 :
		    <select id="screening">
		        <option value="0" >===선택하세요===</option>
		    </select>
		    영화 선택 :
		    <select id="film">
		        <option value="0">===선택하세요===</option>
		    </select>	
		</div>
		<div>
			<table id="timeTable">
				
			</table>
		</div>
	</div>
	<script>
	    const select = $("select");
	    const locations = $("select[id=location]");
	    const branches = $("select[id=branch]");
	    const screenings = $("select[id=screening]");
	    const films = $("select[id=film]");
	    const table = $("#timeTable");

	    $("document").ready(function(){
	    	$.ajax({
		           url: "/mini/controller/location",
		           success : function (data) {
		        	   for(var key of data){
		        		   var opt = $("<option>").attr("value",key.locationCode).text(key.locationName);
		        		   locations.append(opt);
		        	   }
		           }
		       })
	    })
	    select.change(function (e) {
	        switch (e.target.id){
	            case "location" :
	            	screenings.html("<option value=\"0\">===선택하세요===</option>");
	            	films.html("<option value=\"0\">===선택하세요===</option>");
					$.ajax({
						url : "/mini/controller/branch",
						data : "locationCode=" + e.target.value,
						success : function(data){
							branches.html("<option value=\"0\">===선택하세요===</option>")
							for(var key of data){
			        		   var opt = $("<option>").attr("value",key.branchCode).text(key.branchName);
			        		   branches.append(opt);
				        	}
						}
					});
	                break;
	            case "branch" : 
	            	films.html("<option value=\"0\">===선택하세요===</option>");
	            	$.ajax({
						url : "/mini/controller/screening",
						data : "branchCode=" + e.target.value,
						success : function(data){
							screenings.html("<option value=\"0\">===선택하세요===</option>")
							for(var key of data){
			        		   var opt = $("<option>").attr("value",key.screeningCode).text(key.screeningDate);
			        		   screenings.append(opt);
				        	}
						}
					});
	            	break;
	            case "screening" : 
	            	$.ajax({
						url : "/mini/controller/film",
						data : "screeningCode=" + e.target.value,
						success : function(data){
							films.html("<option value=\"0\">===선택하세요===</option>")
							for(var key of data){
			        		   var opt = $("<option>").attr("value",key.filmCode).text(key.filmName);
			        		   films.append(opt);
				        	}
						}
					});
	            	break;
	        }
	        
	    })
	    films.click(function(){
	    	table.html("");
	    	$.ajax({
				url : "/mini/controller/timetable",
				data : "filmCode=" + films.val(),
				success : function(data){
					for(var key of data){
						var theaterEle = $("<td>").attr("value",key.theaterCode).text(key.theaterName);
						var trEle = $("<tr>").append(theaterEle);
						table.append(trEle);
						var trEle2 = $("<tr>")
						for(var time of key.timeTable){
							var showtimesEle = $("<button>").attr("value",time.showCode).text(time.showTime);
							trEle2.append($("<td>").append(showtimesEle));
						}
						table.append(trEle2);
					}
				}
			});
	    })
	    $(document).on("click","button",function(e){
	    	console.log("버튼 이벤트 실행")
	    	console.log(e);
	    	var result = confirm(e.target.innerText + "에 예매하시겠습니까?");
	    	if(result){
	    		location.assign("/mini/controller/booking?showCode="+e.target.value);
	    	}else{
	    		
	    	}
	    })
    </script>
</body>
</html>