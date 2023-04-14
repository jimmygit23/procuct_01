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
  <table cellspacing="0" cellpadding="0" border="0"  ><tr><td>
</td></tr></table>
 
    <s:set name="total_amount" value="0"></s:set>
		<div  style="cursor:pointer;">Page:  
										<select name="pagest" id="pagest" onchange="pagestchaneg();">
										<% 
							  			int i;
							  			Integer total=(Integer) request.getAttribute("sizetotal");
							  			Integer nowpageno=1;
										for(i=1;i<=total;i++){ 
										%>
										<option value=<%=i%> <%if(nowpageno==i){%>selected='selected'<%}%>><%=i%></option>
										<%
										}
							  			%>
  			
									  <!-- 
									   <s:if test='total_amount>=1'><option selected value="1">01</option></s:if>  
									   <s:if test='total_amount>=2'><option  value="2">02</option></s:if>  
									   <s:if test='total_amount>=3'><option  value="3">03</option></s:if>  
									   <s:if test='total_amount>=4'><option  value="4">04</option></s:if>  
									   <s:if test='total_amount>=5'><option  value="5">05</option></s:if>  
									   <s:if test='total_amount>=6'><option  value="6">06</option></s:if>  
									   <s:if test='total_amount>=7'><option  value="7">07</option></s:if>  
									   <s:if test='total_amount>=8'><option  value="8">08</option></s:if>  
									   <s:if test='total_amount>=9'><option  value="9">09</option></s:if>  
									   <s:if test='total_amount>=10'><option  value="10">10</option></s:if>  
									   <s:if test='total_amount>=11'><option  value="11">11</option></s:if> 
									   <s:if test='total_amount>=12'><option  value="12">12</option></s:if> 
									   <s:if test='total_amount>=13'><option  value="13">13</option></s:if> 
									   <s:if test='total_amount>=14'><option  value="14">14</option></s:if> 
									   <s:if test='total_amount>=15'><option  value="15">15</option></s:if> 
									   <s:if test='total_amount>=16'><option  value="16">16</option></s:if> 
									   <s:if test='total_amount>=17'><option  value="17">17</option></s:if> 
									   <s:if test='total_amount>=18'><option  value="18">18</option></s:if> 
									   <s:if test='total_amount>=19'><option  value="19">19</option></s:if> 
									   <s:if test='total_amount>=20'><option  value="20">20</option></s:if> 
										 --> 											
										</select>
	     </div>
	
	
	
	
	
	
	 
 
  </body>

</html>
