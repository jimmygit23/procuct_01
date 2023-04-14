<%@ page contentType="text/html; charset=gb2312"%>  
<%@ page language="java" import="java.net.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
  <center>
   <br><br>
   Click on your five digit procedure code hi-lighted in blue below.<br><br>
   <table>
   <s:set name="total_amount" value="0"></s:set>
	<s:iterator value="adproccd" var ="var" status  ="statu">
	<!--<s:if test="#total_amount%2==1"></tr><tr></s:if>-->
	<tr><td bgcolor="0089C7" style="color:ffffff; font-size:18px;cursor:pointer;">
	<div id='${proccd}' onclick=chooseprcode('${proccd}')>&nbsp;&nbsp;${proccd}&nbsp;&nbsp;</div>
	</td><td>${descr}</td></tr> 
	<input type="hidden" name="tempprocdesc${proccd}" id="tempprocdesc${proccd}" value="${descr}">
	<s:set name="total_amount" value="#total_amount+1"></s:set>		
	</s:iterator>
	 
	</table>
	<s:if test="#total_amount>=29">......</s:if>
  </center>
  </body>

</html>
