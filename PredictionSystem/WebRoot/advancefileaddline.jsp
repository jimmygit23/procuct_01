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
    	 
    	<%String tempfilelinenum=(String) request.getAttribute("filelinenum"); %> 
    	  <table cellspacing="0" cellpadding="0" width="100%" border="0" bgcolor="#0089C7">
										
    	 											<tr>
														<td class="tdclass6">&nbsp;[<%=Integer.valueOf(tempfilelinenum)+1 %>]&nbsp;&nbsp;
															<input type="file" name="fileupload"  id="fileupload<%=tempfilelinenum %>"      class="input"  onchange="getFileSize(this.id);">
														 
															<input type="button" name="addfilelines" id="addfilelines<%=tempfilelinenum %>" value="+" onclick="addlines('<%=tempfilelinenum %>')" class="addfilelines">
														
															<input type="button" name="delfilelines" id="delfilelines<%=tempfilelinenum %>" value="-" onclick="dellines('<%=tempfilelinenum %>')" class="delfilelines">
														</td>
													</tr>
													<tr>
														<td class="tdclass6" >
														<div  id="filelines<%=tempfilelinenum %>" name="filelines<%=tempfilelinenum %>" ></div>
														</td> 
													</tr>
			</table>
  </body>
</html>
