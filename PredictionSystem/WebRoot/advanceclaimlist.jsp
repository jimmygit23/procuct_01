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
    	
    	<%
    	 String tempfromdate=(String) request.getAttribute("fromdate");
    	 String tempenddate=(String) request.getAttribute("enddate"); 
    	
    	 out.print("<div class='path'>&nbsp;&nbsp;"+tempfromdate+"&nbsp;&nbsp;-");
    	  out.print("&nbsp;&nbsp;"+tempenddate+"</div><br>"); 
    	 // out.print("<input type='hidden'  id='fileSize' value='"+tempstrsize+"'>");
    	 %>  
    	 <table cellspacing="1" cellpadding="4" width="1000" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="7">
													<font class="font_white_bold16">Advance EOB List</font>
												</th>
											</tr>
											<tr>
												<td class="tdclass6" style="text-align:center;">
													ID
												</td>
												<td class="tdclass6" style="text-align:center;">
													Type
												</td>
												<td class="tdclass6" style="text-align:center;">
													Claim
												</td>
												<td class="tdclass6" style="text-align:center;">
													Social Security Number 
												</td>
												<td class="tdclass6"  style="text-align:center;">
													Patient Name
												</td>
												<td class="tdclass6"  style="text-align:center;">
													Member ID 
												</td>
												<td class="tdclass6"  style="text-align:center;">
													Date of import 
												</td>
												<td class="tdclass6"  style="text-align:center;">
													action
												</td>
											</tr>
											  
											<s:set name="countlist" value='0'></s:set>
									    	  <s:iterator value="tempAdeods" var ="var" status  ="statu">
									    	  <s:set name="countlist" value='#countlist+1'></s:set> 
										    	 <tr >
													<td class="tdclass6" style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>"   >
														${rnum}.
													</td>
													<td class="tdclass6" style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>">
														  Form
													</td>
													<td class="tdclass6" style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>">
														 ${scanned_claim_id}
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>" >
														${employee_ssn}
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>" >
														${patient_lname},${patient_fname}
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>" >
														${member_id}
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>" >
														<fmt:formatDate value="${imported}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="status_str==0">background-color: #fff4a5;</s:if>" >
														<input type="button" name="showeob${statu.count}" id="${scanned_claim_id}" class="showeob" value="Show EOB" >
														<input type="button" name="hiddeneob${statu.count}" id="${scanned_claim_id}" class="hiddeneob" value="hidden" >
													  
														<select name="actioneob${statu.count}" id="${scanned_claim_id}" onchange="checkactioneob(this);" class="actioneob" <s:if test="status_str==0">style="color: red;"</s:if> <s:if test="status_str>1">disabled</s:if>> 
														 <option value="0" <s:if test="status_str==0">selected</s:if>>New</option>
														 <option value="1"  <s:if test="status_str!=0">selected</s:if>>Done</option>
														 </select> 
														 
													</td>
												</tr>
												<tr>
												<td class="tdclass6" colspan="8">
													<div id="detaillinestitle${scanned_claim_id}" name="detaillinestitle" class="detaillinestitle" style="display: none;font-size: 64px; line-height: 32px; background-color: #fff4a5;color: #000000;text-decoration:none;font-family: arial;">
													<s:if test="status_str==0">new request</s:if>
													<s:if test="status_str==1">claim entry finished</s:if>
													<s:if test="status_str==2">AEOB processed</s:if>
													<s:if test="status_str==3">AEOB printed</s:if>
													<s:if test="status_str==4">delivery complete</s:if>
													<s:if test="status_str==5">pending additional info</s:if>
													</div>
													<div id="detaillines${scanned_claim_id}" name="detaillines" class="detaillines" style="display: none;background-color: #fff4a5;"></div>
												</td>
												</tr>
									    	  </s:iterator>
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
