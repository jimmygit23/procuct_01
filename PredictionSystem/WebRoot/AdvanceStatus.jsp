<%@ page contentType="text/html; charset=gb2312"%>  
<%@ page language="java" import="java.net.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <base href="<%=basePath%>">
    <title>showstatus</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is div setting page">
    <script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>  
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  
  </head>
  
  <body>
    <br>
    	 
    	<%
    	  String errorinfo=(String) request.getAttribute("errorinfo");
    	if(!errorinfo.equals("")){
    	  out.print("<font style='color:red;'>&nbsp;&nbsp;"+errorinfo+"</font><br>");
    	  }else{
    	  out.print("<font style='color:blue;'>&nbsp;&nbsp;Data update success!</font><br>");
    	  }
     
    	 %>  
    	 
    	 
    	
   <form name="resualtform" id="resualtform" method="post" action=""> 
      <!--  
  		
		<input type="hidden" name="hidden_altid" id="hidden_altid" value="<%=(String) request.getAttribute("hidden_altid") %>" />
		<input type="hidden" name="ssn" id="ssn" value="<%=(String) request.getAttribute("hidden_ssn") %>" />
		<input type="hidden" name="memberID" id="memberID" value="<%=(String) request.getAttribute("hidden_altid") %>" />  
		
	 -->
		<!-- show eob -->
		<input type="hidden" name="errorinfo" id="errorinfo" value="<%=(String) request.getAttribute("errorinfo") %>" />
		<input type="hidden" name="dob" id="dob" value="<%=(String) request.getAttribute("dob") %>" /> 
		<input type="hidden" name="hidden_ssn" id="hidden_ssn" value="<%=(String) request.getAttribute("hidden_ssn") %>" />
		<input type="hidden" name="strtaxid" id="strtaxid" value="<%=(String) request.getAttribute("strtaxid") %>" />
		<input type="hidden" name="grpno" id="grpno" value="<%=request.getAttribute("grpno") %>" />
		<input type="hidden" name="empno" id="empno" value="<%=request.getAttribute("empno") %>" />
		<input type="hidden" name="depno" id="depno" value="<%=request.getAttribute("depno") %>" />
		<input type="hidden" name="firstname" id="firstname" value="<%=(String) request.getAttribute("firstname") %>" />
		<input type="hidden" name="insertrequestid" id="insertrequestid" value="<%=(Long) request.getAttribute("insertrequestid") %>" />
   </form> 
<script type="text/javascript"> 
//alert("errorinfo");
 // window.location.href="<%=request.getContextPath()%>/adeod/adeod_addeob.action";
 	//var errorinfo=document.getElementById("errorinfo").value;
 	//alert(errorinfo); 
	// if(errorinfo!=""){
	 	//	alert(errorinfo); 
	 //}else{
	   //  $("#resualtform").attr("action","<%=request.getContextPath()%>/adeod/adeod_addeob.action");
	   //  $("#resualtform").submit();
	// }
</script>   
 
 
  </body>
</html>
