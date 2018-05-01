<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="header" style = "background-color:#212121;">
	<div class="header-top">
		<div class="wrap">
			<div class="banner-no">
		  		<img src="/minipro2/images/preferences/banner-no.png" alt=""/>
		    </div>
			  <div class="nav-wrap">
					<ul class="group" id="example-one">
					
					<c:choose>
			  		   <c:when test="${empty sessionScope.user}">
			  		   <li ></li>
			  		   </c:when>
			  		   <c:otherwise>
						<li><a>${sessionScope.user.memberName}님 환영합니다</a></li>
						<li><a href="${pageContext.request.contextPath}/myPageForm">마이페이지</a></li>
			  		   </c:otherwise>
			  		   </c:choose>
			  		   
			  		   
			           <li class="current_page_item"><a href="${pageContext.request.contextPath}/main">메인</a></li>
			           <li><a href="/minipro2/moviechart/main">영화</a></li>
			  		   <li><a href="movies_events.html">예매</a></li>
			  		   <c:choose>
			  		   <c:when test="${empty sessionScope.user}">
			  		   <li><a href="${pageContext.request.contextPath}/loginForm">로그인</a></li>
			  		   </c:when>
			  		   <c:otherwise>
						<%--${sessionScope.user.name}님 환영합니다. --%>
							<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
			  		   </c:otherwise>
			  		   </c:choose>
			        </ul>
			  </div>
 			<div class="clear"></div>
   		</div>
    </div>

</div>






