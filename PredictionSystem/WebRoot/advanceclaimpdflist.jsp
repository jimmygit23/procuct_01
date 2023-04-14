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
    	 <table cellspacing="1" cellpadding="4" width="1200" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="7">
													<font class="font_white_bold16">Advance EOB File List</font>
												</th>
											</tr>
											<tr>
												<td class="tdclass6" style="text-align:center;">
													ID
												</td>
												<td class="tdclass6"  style="text-align:center;">
													 Type
												</td>
												<td class="tdclass6" style="text-align:center;">
													File Name
												</td>
												<td class="tdclass6" style="text-align:center;">
													Social Security Number 
												</td>
												<td class="tdclass6"  style="text-align:center;">
													Member ID 
												</td>
												<td class="tdclass6"  style="text-align:center;">
													Date Of Update 
												</td>
												<td class="tdclass6"  style="text-align:center;">
													action
												</td>
											</tr>
											  
											<s:set name="countlistpdf" value='0'></s:set>
									    	  <s:iterator value="tempAdeodspdf" var ="var" status  ="statu">
									    	  <s:set name="countlistpdf" value='#countlistpdf+1'></s:set> 
										    	 <tr >
													<td class="tdclass6" style="text-align:center;<s:if test="file_type==0">background-color: #fff4a5;</s:if>"   >
														${rnum}.
													</td>
													<td class="tdclass6" style="text-align:center;<s:if test="file_type==0">background-color: #fff4a5;</s:if>">
														  PDF
													</td> 
													<td class="tdclass6"  style="text-align:left;<s:if test="file_type==0">background-color: #fff4a5;</s:if>" >
														${file_name}
														<input type="hidden" name="pdffilename${file_id}" id="pdffilename${file_id}"  value="${file_name}" >
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="file_type==0">background-color: #fff4a5;</s:if>" >
														${ssn}
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="file_type==0">background-color: #fff4a5;</s:if>" >
														${altid}
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="file_type==0">background-color: #fff4a5;</s:if>" >
														<fmt:formatDate value="${last_updated}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6"  style="text-align:center;<s:if test="file_type==0">background-color: #fff4a5;</s:if>" >
														<input type="button" name="showpdfeob${statu.count}" id="${file_id}" class="showpdfeob" value="Show PDF" >
														<input type="button" name="hiddenpdfeob${statu.count}" id="${file_id}" class="hiddenpdfeob" value="hidden" >
													  
														<select name="actionpdf${statu.count}" id="${file_id}" onchange="checkactionpdf(this);" class="actioneob" <s:if test="file_type==0">style="color: red;"</s:if> <s:if test="file_type>1">disabled</s:if>> 
														 <option value="0" <s:if test="file_type==0">selected</s:if>>New</option>
														 <option value="1"  <s:if test="file_type!=0">selected</s:if>>Done</option>
														 </select> 
														 
													</td>
												</tr>
												<tr>
												<td class="tdclass6" colspan="8">
													<div id="detaillinespdftitle${file_id}" name="detaillinespdftitle" class="detaillinespdftitle" style="display: none;font-size: 64px; line-height: 32px; background-color: #fff4a5;color: #000000;text-decoration:none;font-family: arial;">
													<s:if test="file_type==0">new request</s:if>
													<s:if test="file_type==1">claim entry finished</s:if>
													<s:if test="file_type==2">AEOB processed</s:if>
													<s:if test="file_type==3">AEOB printed</s:if>
													<s:if test="file_type==4">delivery complete</s:if>
													<s:if test="file_type==5">pending additional info</s:if>
													</div>
													<div id="detaillinespdf${file_id}" name="detaillinespdf" class="detaillinespdf" style="display: none;background-color: #fff4a5;">detaillinespdf  ${file_id}</div>
												</td>
												</tr>
									    	  </s:iterator>
									    	  <input type="hidden" name="totallistpdf" id="totallistpdf"  value="${countlistpdf}" >
									    	  
									    	  
    	  </table>
    	  <div  style="float: right;">
			<input type="button" class="button_2" value="prevpage" onclick="go_pagepdfup(${pageno - 1})"/>
			<select name="schoolId" id="schoolId" style="width: 40px">
  			<% 
  			int i;
  			Integer total=(Integer)(request.getSession().getAttribute("totalpage"));
  			Integer nowpageno=(Integer)(request.getSession().getAttribute("nowpageno"));
			for(i=1;i<=total;i++){ 
			%>
			<option onclick="go_pagepdfto(<%=i%>)" value=<%=i%> <%if(nowpageno==i){%>selected='selected'<%}%>><%=i%></option>
			<%
			}
  			%>
  			</select>
			<input type ="button" onclick="go_pagepdfdown(${pageno + 1},${totalpage})" class="button_2"  value="nextpage"/>
  			<font color="#ff6600">${pageno}/${totalpage}</font>&nbsp;Pages 
  			
		</div>
    	  
  </body>

</html>
