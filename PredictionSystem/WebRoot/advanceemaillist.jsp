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
    <br>
    	
    	
    	 <table cellspacing="1" cellpadding="4" width="500" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="7">
													<font class="font_white_bold16">Email To List</font>
												</th>
											</tr>
											<tr>
												<td class="tdclass6" style="text-align:center;">
													request ID
												</td>
												<td class="tdclass6" style="text-align:center;">
													datesubmitted
												</td>
												<td class="tdclass6" style="text-align:center;">
													claim form id
												</td>
												<td class="tdclass6" style="text-align:center;">
													email address
												</td>
												
											</tr>
											  
											<s:set name="countlist" value='0'></s:set>
									    	  <s:iterator value="Emaillistpobj" var ="var" status  ="statu">
									    	  <s:set name="countlist" value='#countlist+1'></s:set> 
										    	 <tr >
										    	   <td class="tdclass6"  style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>" >
														<!-- <input type="checkbox" name="doemail" id="doemail" class="docheckbox" value="${requestid}"/> -->
														<input type="checkbox" name="doemail" id="doemail" class="docheckbox" value="${email_address}"  onclick="checkitem();"/>
													</td>
													<td class="tdclass6" style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>"   >
														<fmt:formatDate value="${datesubmitted}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6" style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>">
														  ${claim_form_id}	
													</td>
													<td class="tdclass6" style="text-align:left;<s:if test="status_str==0">background-color: #fff4a5;</s:if>">
														 ${email_address}
													</td>
													
												</tr>
												
									    	  </s:iterator>
									    	  <tr>
												<td class="tdclass6" style="text-align:center;">
													<input type="checkbox" name="doemailAll" id="doemailAll" onclick="checkall();" value=""/>
												</td>
												<td class="tdclass6" colspan="3" style="text-align:left;">
													&nbsp;&nbsp;select All
												</td>
											
												
											</tr>
											
									    	  <input type="hidden" name="totallist" id="totallist"  value="${countlist}" >
									    	  
									    	  
    	  </table>
    	  <div  style="float: right;">
			<input type="button" class="button_2" value="prevpage" onclick="go_pageup(${pageno - 1})"/>
			<select name="schoolId" id="schoolId" style="width: 40px">
  			<% 
  			int i;
  			Integer total=(Integer)(request.getSession().getAttribute("totalpage"));
  			Integer nowpageno=(Integer)(request.getSession().getAttribute("nowpageno"));
			for(i=1;i<=total;i++){ 
			%>
			<option onclick="go_pageto(<%=i%>)" value=<%=i%> <%if(nowpageno==i){%>selected='selected'<%}%>><%=i%></option>
			<%
			}
  			%>
  			</select>
			<input type ="button" onclick="go_pagedown(${pageno + 1},${totalpage})" class="button_2"  value="nextpage"/>
  			<font color="#ff6600">${pageno}/${totalpage}</font>&nbsp;Pages 
  			
		</div>
    	  
  </body>

</html>