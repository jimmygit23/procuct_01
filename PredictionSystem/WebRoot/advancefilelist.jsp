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
    	 String tempfromdate=(String) request.getAttribute("fromdate");
    	 String tempenddate=(String) request.getAttribute("enddate"); 
    	
    	// out.print("<div class='path'>&nbsp;&nbsp;"+tempfromdate+"&nbsp;&nbsp;-");
    	//  out.print("&nbsp;&nbsp;"+tempenddate+"</div><br>"); 
    	 // out.print("<input type='hidden'  id='fileSize' value='"+tempstrsize+"'>");
    	 %>  
    	 <table cellspacing="1" cellpadding="4" width="750" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="4">
													<font class="font_white_bold16">File List</font>
												</th>
											</tr>
											<tr>
												<td class="tdclass6" style="text-align:center;">
													ID
												</td>
												<td class="tdclass6" style="text-align:center;">
													Request ID
												</td>
												<td class="tdclass6" style="text-align:center;">
													file name
												</td>
												<td class="tdclass6"  style="text-align:center;">
													date of update
												</td>
												<td class="tdclass6"  style="text-align:center;">
													action
												</td>
											</tr>
											
									    	  <s:iterator value="temClaimfile" var ="var" status  ="statu">
										    	 <tr>
													<td class="tdclass6" style="text-align:center;" >
														${statu.count}.
													</td>
													<td class="tdclass6" style="text-align:center;" >
														${requestid}
													</td>
													<td class="tdclass6"  >
													<!-- <a href="###" class="file_href"  boxid="{fileId}">${file_name}</a> -->
														 ${file_name}&nbsp;&nbsp;<font style="font-family: Arial, Helvetica, sans-serif;font-size: 15px;color:red;">${flag}</font>
													<input type="hidden" name="hidden_filename" id="hidden_filename${fileId}" value="${file_name}" />
									       
													</td>
													<td class="tdclass6"  style="text-align:center;" >
														${updated}
													</td>
													<td class="tdclass6"  style="text-align:center;" >
													  <input type="button" name="file_href${fileId}" id="file_href${fileId}" class="file_href" value="show" onclick="showpdf('${file_name}')">
													 <input type="button" name="delfile${fileId}" id="delfile${fileId}" class="delfile" value="delete"  onclick="delpdf('${fileId}')">
													</td>
												</tr>
									    	  </s:iterator>
    	  </table>
  </body>
</html>
