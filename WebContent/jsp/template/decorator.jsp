<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title" /></title>
<link rel="stylesheet" href="/minipro2/css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="/minipro2/css/flexslider.css" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script src="/minipro2/js/modernizr.js"></script>
<script src='/minipro2/js/jquery.min.js'></script>
<script src='/minipro2/js/jquery.color-RGBa-patch.js'></script>
<script src='/minipro2/js/example.js'></script>
<!-- jQuery -->
<!-- FlexSlider -->
  <script defer src="/minipro2/js/jquery.flexslider.js"></script>
  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
  <!-- DC Tabs CSS -->
<link type="text/css" rel="stylesheet" href="http://www.dreamtemplate.com/dreamcodes/tabs/css/tsc_tabs.css" />
 <!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/jquery.min.js"></script> <!-- (do not call twice) -->
 <!-- DC Tabs JS -->
<!--<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/tabs/js/tsc_tabs.js"></script>-->
<link rel="stylesheet" href="/minipro2/css/tsc_tabs.css" type="text/css" media="all" />
<sitemesh:write property="head" /> 
</head>
<body>
  <div>
	<div class="header">
	  <c:import url="/jsp/decorator/topMenu.jsp" />
	</div>	
	
	  <sitemesh:write property="body" /> 
	
	<div class="footer">
	  <c:import url="/jsp/decorator/footer.jsp" />
	</div>	
  </div>
</body>
</html>























