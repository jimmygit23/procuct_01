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
    	 String tempstr=(String) request.getAttribute("fileuploadstatus");
    	 String tempstrsize=(String) request.getAttribute("fileuploadSize");
    	 String tempfileupload=(String) request.getAttribute("fileuploadpath");
    	
    	 out.print("<div class='path'>=>&nbsp;&nbsp;"+tempfileupload+"</div><br>");
    	  out.print("<div class='status'>=>&nbsp;&nbsp;"+tempstr+"</div><br>");
    	  //out.print("<div>"+tempstrsize+"</div>");
    	  out.print("<input type='hidden'  id='fileSize' value='"+tempstrsize+"'>");
    	 %>  
  </body>
</html>
