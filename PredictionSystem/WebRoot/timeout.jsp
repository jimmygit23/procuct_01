<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Complete</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
    <script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="<%=path%>/js/xmlajax.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>  
	<script type="text/javascript" src="<%=path%>/js/ajaxfileupload.js"></script> 
	<script type="text/javascript" src="<%=path%>/js/changecode.js"></script>  

  </head>
  
  <body>
    <center>
    	 Login timeout. Please relogin. 
    </center>
  </body>
  <script type="text/javascript"> 
   
	</script>  
</html>