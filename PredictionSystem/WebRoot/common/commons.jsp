<%@ page language="java"  pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="en-US" /> 
<meta name="author" content="lzs" /> 
<c:set var="webRoot" value="${pageContext.request.contextPath}"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/crlCheckCommons.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/sortTable.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.PrintArea.js"></script>
<c:if test="${sessionUser.msoid ne 0}">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/ach_simplifi.css">
</c:if>
<c:if test="${sessionUser.msoid eq 0}">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/ach_simplifi.css">
</c:if>
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
    	  top.location.href="<%=request.getContextPath()%>/login_logout.do";
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
//new print  
function printit(isZong, isSelectPrinter) {    
   try {    
   		if(confirm("You sure you want to print?")){
   			if (!xprint.object){
				alert("Please install ScriptX controls to achieve print!");
				window.open("http://scriptx.meadroid.com/download/user-upgrade-to-current-version.aspx");
			}else{
            xprint.printing.portrait = isZong;//true longitudinal,false transverse   
            xprint.printing.header = "";//header    
            xprint.printing.footer = "";//footer   
            xprint.printing.leftMargin =0.5;//leftMargin    
            xprint.printing.topMargin = 0.5;//topMargin    
            xprint.printing.rightMargin = 0.5;//rightMargin    
            xprint.printing.bottomMargin = 0.5;//bottomMargin    
            //xprint.printing.PageSetup(); //Pop-up print Settings window     
            xprint.printing.Preview(); //Pop up the print preview window    
            xprint.printing.Print(isSelectPrinter); //Whether the pop-up printer selection page
            }
         }    
    } catch(e) {    
    }    
}    
</script>

<%//--- logo and colors 20220308'
	String Tlogo = "ACH";
	String Tcolor1 = "#0089C7";
	String Tcolor2 = "#FFF4A5";
	String Tcolor01 = "0089C7";
	String Tcolor02 = "FFF4A5";
	
	Date date_change = new Date();
	SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd");
	String sdf_date = sdf1.format(date_change);
	
	if(sdf_date.equals("03/17")){
			Tlogo = "ACHgreen";
			Tcolor01 = "014d30";
			Tcolor02 = "99cc99";
	}else if(sdf_date.equals("12/25")){
		    Tcolor01 = "ca0a0a";
			Tcolor02 = "FFF4A5";
	}else if(sdf_date.equals("11/24")){
			Tcolor01 = "fd9927";
			Tcolor02 = "FFF4A5";
	}else if(sdf_date.equals("03/08")){
			Tcolor01 = "0089C7";
			Tcolor02 = "FFF4A5";
	}
%>
	