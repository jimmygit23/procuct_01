<%@ page language="java"  pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/WEB-INF/tlds/commonsTag.tld" prefix="medi" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="en-US" /> 
<meta name="author" content="lzs" /> 
<c:set var="webRoot" value="${pageContext.request.contextPath}"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/crlCheckCommons.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/sortTable.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.PrintArea.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/simplifi.min.css">
<!--[if lte IE 6]>
<script  type="text/javascript"  src="<%=request.getContextPath()%>/js/jquery.pngFix.min.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
	$(document).pngFix();
   });
</script>
<![endif]--> 
<!--to Top  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/scrolltop.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/scrolltop.css">

<%--datepicker
<link type="text/css" href="<%=request.getContextPath()%>/jqueryui/css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
<script type="text/javascript" src="<%=request.getContextPath()%>/jqueryui/js/jquery-ui-1.8.18.custom.min.js"></script>
--%> 
<%-- jMenu 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jMenu.jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/jMenu.jquery.css" media="screen" />
--%>
<%--drag
<script src="<%=request.getContextPath()%>/jqueryui/development/ui/jquery.ui.core.js"></script>
<script src="<%=request.getContextPath()%>/jqueryui/development/ui/jquery.ui.widget.js"></script>
<script src="<%=request.getContextPath()%>/jqueryui/development/ui/jquery.ui.mouse.js"></script>
<script src="<%=request.getContextPath()%>/jqueryui/development/ui/jquery.ui.draggable.js"> </script>
 --%>
<script type="text/javascript" >
// logout  
$(function(){
	 //logout
      $("#idLogoutGoble").click(function(){
    	  window.location.href="<%=request.getContextPath()%>/login_logout.do";
      });
      //home
    
}); 
//print
$(function(){
	 $("#idPrintGoble").css("cursor","pointer").click(function(){
		 var printAreaHtml = $("#printAreaGoble").html();
		 if(printAreaHtml == null){
			 $("#initPrintArea").printArea();
		 }else{
			 $("#printAreaGoble").printArea();
		 }
    });
}); 

//button
$(function(){
	  $(".button_1").css("cursor","pointer");
	  $(".button_2").css("cursor","pointer");
	  $(".button_3").css("cursor","pointer");
	  $(".button_4").css("cursor","pointer");
	  $(".button_5").css("cursor","pointer");
	  $(".button_6").css("cursor","pointer");
}); 

$(function(){
$(".logo").click(function(){
     window.location.href="<%=request.getContextPath()%>/";
}).css("cursor","pointer");
}); 
</script>


	