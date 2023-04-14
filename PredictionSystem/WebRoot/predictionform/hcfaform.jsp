<%@ page contentType="text/html; charset=UTF-8"%>  
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
    <title>HCFA INPUT</title>
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
    	 
    	 %>  
    	 <DIV>
    	 	<table>
    	 		<tr>
    	 			<td>1.Type</td>
    	 			<td></td>
    	 			<td>1a.INSURED'S I.D. NUMBER</td>
    	 		</tr>
    	 		<tr>
    	 			<td>2.PATIENTS NAME(Last Name, First Name. Middle initial)</td>
    	 			<td>3.PATIENTS BIRTHDATE</td>
    	 			<td>4.INSURED'S NAME(Last Name, First Name. Middle initial)</td>
    	 		</tr>
    	 		<tr>
    	 			<td>5.PATIENTS ADDRESS(No. Street) </td>
    	 			<td>6.PATIENT RELATIONSHIP TO INSURED</td>
    	 			<td>7.INSURED'S ADDRESS(No. Street)</td>
    	 		</tr>
    	 		<tr>
    	 			<td>8.RESERVED FOR NUCC USE CITY</td>
    	 			<td></td>
    	 			<td></td>
    	 		</tr>
    	 		<tr>
    	 			<td></td>
    	 			<td></td>
    	 			<td></td>
    	 		</tr>
    	 		<tr>
    	 			<td></td>
    	 			<td></td>
    	 			<td></td>
    	 		</tr>
    	 		<tr>
    	 			<td></td>
    	 			<td></td>
    	 			<td></td>
    	 		</tr>
    	 	</table>
    	 </DIV>
  </body>
</html>
