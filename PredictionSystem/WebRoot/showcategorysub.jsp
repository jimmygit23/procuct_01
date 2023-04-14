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
   Welcome to the America's Choice Price Comparison tool. To begin shopping for care, please select from one of the treatment categories below.
   <br><br>
   <table>
   <tr>
    <s:set name="total_amount" value="1"></s:set>
	<s:iterator value="adprocategory" var ="var" status  ="statu">
		<td style="width:230px;height:105px;">
				<div id='${sub_ip}' onclick=choosecategorysub('${sub_ip}') style="border-radius:10px;border-left:20px solid #0089C7;border-top:25px solid #0089C7;background-color:0089C7;color:ffffff;font-size:18px;cursor:pointer;width:220px;height:80px;box-shadow:0px 5px 5px 0px #dddddd,10px 5px 5px 0px #dddddd;">${sub_category}</div>
		</td>
		<s:if test="#total_amount%4==0 "></tr><tr></s:if>
		<s:set name="total_amount" value="#total_amount+1"></s:set>		
	</s:iterator>
	</tr> 
	</table> 
  </center><br>
  <input type="button" value="Go Back To Upper Level Categories" id="gobackupper" onclick="gobackuppercategory();" >
  <br><br>
	 You may also enter the CPT Code or Description of the treatment.
  </body>

</html>
