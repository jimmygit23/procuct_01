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
	<script type="text/javascript" src="<%=path%>/js/xmlajax.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
 
  
  <body>  
  <center>
  <table cellspacing="0" cellpadding="0" border="0" width="1000" ><tr><td>
	  <p align = "left"><font size="-1" >The following is a list of the Providers which met your search criteria. If you did not find what you were looking for, please alter your search above</font>
	  <!-- <font size="-1" > or </font><A href="<%
//if Gateway = true and request("printable") <> "1" then
//	response.write session("GateLink") & "?login=" & session("login") & "&filename=providersearch_suggestions.asp"
//else
//	response.write "providersearch_suggestions.asp"
//end if
%>"><em><font color=blue size="-1">click here for suggestions</font></em></a> -->
</td></tr></table>
 <!-- <font size="-1">.</font></p>-->
    <s:set name="total_amount" value="0"></s:set>
		<table cellspacing="0" cellpadding="0" border="0" width="1000">
		<tr>
	<s:iterator value="adppoLatcionobj" var ="var" status  ="statu">
		<td width="1000">
		<table cellspacing="0" cellpadding="0" border="0" width="1000" >
											<tbody>
												<tr>
													<td bgcolor="0089C7" align="left"><img src="<%=request.getContextPath()%>/newimages/design/table-empty-corner-upper.gif"></td>
													<td bgcolor="0089C7"><img src="<%=request.getContextPath()%>/newimages/blank.gif"></td>
													<td bgcolor="0089C7" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-empty-corner-upper.gif"></td>
												</tr>
												<tr>
													<td valign="top" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif" align="left"><img src="<%=request.getContextPath()%>/newimages/design/table-corner-ul-0089C7.gif"></td>
													<th class="Table2Title" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif"><font color="ffffff"><font size="+1"></font></font></th>
													<td valign="top" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-corner-ur-0089C7.gif"></td>
													<td rowspan="3" width="6" valign="top" background="<%=request.getContextPath()%>/newimages/design/table-shadow-bg-right.gif" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-shadow-corner-ur.gif"></td>
												</tr>
												
												<tr>
													<td colspan="3" bgcolor="0089C7">
														<table cellspacing="1" cellpadding="3" border="0" height="150"  width="100%">
															<tbody>
																<tr>
																	<td colspan="1" style="padding:1px" bgcolor="ffffff" align="center" width="30%">
																	<font face="Arial" color="0089C7"><b>${name}</b></font>
																	</td>
																	<td colspan="1" style="padding:1px" bgcolor="ffffff" align="center" width="30%">
																	<font face="Arial" color="0089C7"><b>${specialty}</b>	</font>
																	</td>
																	
																	<td colspan="3" rowspan="2" style="padding:1px" bgcolor="ffffff" align="center" width="30%">
																	 
																	 	<table>
																	 		<tr>
																	 		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
																	 		<td><%out.print("<img src='"+request.getContextPath()+"/logoimg/daole.png' width='15' height='30'  >");%></td>
																	 		<td>100,000</td>
																	 		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
																	 		</tr>
																	 	</table>
																	   
																	  
																	</td>
																	<td colspan="1" rowspan="2" style="padding:1px" bgcolor="ffffff" align="left" width="10%">
																	
																	  <table>
																	 		<tr>
																	 		<td>&nbsp;&nbsp;</td>
																	 		<td>
																	 		<s:if test="cartid != null ">
																			  <div  class='divcss5' id='addCart${total_amount}'  style='cursor:pointer;filter:alpha(opacity=30);-moz-opacity:alpha(opacity=30);opacity:0.3;' onmouseover='' onmouseout='' onclick=''>  
																			</s:if>
																			<s:else>
																	 		  <div  class='divcss5' id='addCart${total_amount}'  style='cursor:pointer;' onmouseover='showmessage(this);' onmouseout='hiddenmessage(this);' onclick='checkcart(this);'>  
																	 		</s:else>
																	 		<%out.print("<img src='"+request.getContextPath()+"/logoimg/gwc2.png' width='50' height='45'  >");%> 
																	 		<div>
																	 		</td>
																			<td>&nbsp;&nbsp;</td>
																	 		</tr>
																	 	</table>
																	   	<input type="hidden" value="N" id="addCartType${total_amount}">
																	 	<div id='messageline${total_amount}' name='messageline${total_amount}' class='demo' style='display:none;'>
																        <div class="shixin"></div>
																        <div class="kongxin"></div>
																		 &nbsp;&nbsp;Add to your Cart 
																		<br><br><br>
																    	</div>
																	</td>
																</tr>
																<tr>
																	<td colspan="1" style="padding:1px" bgcolor="ffffff" align="left"  width="50%">
																	<font face="Arial" color="0089C7">&nbsp;${address1}<br>
																		<s:if test="address2 != null">&nbsp;${address2}<br></s:if>
																		&nbsp;${city},&nbsp;${St}&nbsp;${zip}<br>
																		&nbsp;${phone}<br>
																	</font>
																	</td>
																	<td colspan="1" style="padding:1px" bgcolor="ffffff" align="center"  width="50%">
																	<font face="Arial" color="0089C7"><b>Contract Period:</b><br>${effdate}&nbsp;-&nbsp;${termdate}	</font>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												
												<tr>
													<td valign="bottom" bgcolor="ffcc00" background="<%=request.getContextPath()%>/newimages/blank.gif" align="left">
														<img src="<%=request.getContextPath()%>/newimages/design/table-corner-ll-0089C7.gif">
													</td>
													<td bgcolor="ffcc00" background="<%=request.getContextPath()%>/newimages/blank.gif">
														<img src="<%=request.getContextPath()%>/newimages/blank.gif">
													</td>
													<td valign="bottom" bgcolor="ffcc00" background="<%=request.getContextPath()%>/newimages/blank.gif" align="right">
														<img src="<%=request.getContextPath()%>/newimages/design/table-corner-lr-0089C7.gif">
													</td>
												</tr>
												<tr>
													<td colspan="2" valign="bottom" background="<%=request.getContextPath()%>/newimages/design/table-shadow-bg-lower.gif" align="left">
														<img src="<%=request.getContextPath()%>/newimages/design/table-shadow-corner-ll.gif">
													</td>
													<td colspan="2" valign="bottom" background="<%=request.getContextPath()%>/newimages/design/table-shadow-bg-lower.gif" align="right">
														<img src="<%=request.getContextPath()%>/newimages/design/table-shadow-corner-lr.gif">
													</td>
												</tr>
											</tbody>
										</table>
		
		</td>
		<!--<s:if test="#total_amount%2==1"></tr><tr></s:if>-->
		</tr><tr>
																	<input type="hidden" id="providername${total_amount}"  value="${name}" >
																	<input type="hidden" id="specialty${total_amount}"  value="${specialty}" >
																	<input type="hidden" id="address1${total_amount}"  value="${address1}" >
																	<input type="hidden" id="address2${total_amount}"  value="${address2}" >
																	<input type="hidden" id="city${total_amount}"  value="${city}" >
																	<input type="hidden" id="St${total_amount}"  value="${St}" >
																	<input type="hidden" id="zip${total_amount}"  value="${zip}" >
																	<input type="hidden" id="phone${total_amount}"  value="${phone}" >
																	<input type="hidden" id="effdate${total_amount}"  value="${effdate}" >
																	<input type="hidden" id="termdate${total_amount}"  value="${termdate}" >
																	<input type="hidden" id="cartid${total_amount}"  value="${cartid}" >
		<s:set name="total_amount" value="#total_amount+1"></s:set>							
	</s:iterator>
	
		</tr>
		</table>
	
	
	
	
	
	<s:if test="#total_amount==0">
									<table cellspacing="0" cellpadding="0" border="0">
											<tbody>
												<tr>
													<td bgcolor="0089C7" align="left"><img src="<%=request.getContextPath()%>/newimages/design/table-empty-corner-upper.gif"></td>
													<td bgcolor="0089C7"><img src="<%=request.getContextPath()%>/newimages/blank.gif"></td>
													<td bgcolor="0089C7" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-empty-corner-upper.gif"></td>
												</tr>
												<tr>
													<td valign="top" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif" align="left"><img src="<%=request.getContextPath()%>/newimages/design/table-corner-ul-0089C7.gif"></td>
													<th class="Table2Title" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif"><font color="ffffff"><font size="+1">Results</font></font></th>
													<td valign="top" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-corner-ur-0089C7.gif"></td>
													<td rowspan="3" width="6" valign="top" background="<%=request.getContextPath()%>/newimages/design/table-shadow-bg-right.gif" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-shadow-corner-ur.gif"></td>
												</tr>
												
												<tr>
													<td colspan="3" bgcolor="0089C7">
														<table cellspacing="1" cellpadding="3" border="0">
															<tbody>
																<tr>
																	<td colspan="3" style="padding:1px" bgcolor="ffffff" align="center">
																	<font face="Arial" color="ff0000"><b>Sorry no providers found.</b></font>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												
												<tr>
													<td valign="bottom" bgcolor="ffcc00" background="<%=request.getContextPath()%>/newimages/blank.gif" align="left">
														<img src="<%=request.getContextPath()%>/newimages/design/table-corner-ll-0089C7.gif">
													</td>
													<td bgcolor="ffcc00" background="<%=request.getContextPath()%>/newimages/blank.gif">
														<img src="<%=request.getContextPath()%>/newimages/blank.gif">
													</td>
													<td valign="bottom" bgcolor="ffcc00" background="<%=request.getContextPath()%>/newimages/blank.gif" align="right">
														<img src="<%=request.getContextPath()%>/newimages/design/table-corner-lr-0089C7.gif">
													</td>
												</tr>
												<tr>
													<td colspan="2" valign="bottom" background="<%=request.getContextPath()%>/newimages/design/table-shadow-bg-lower.gif" align="left">
														<img src="<%=request.getContextPath()%>/newimages/design/table-shadow-corner-ll.gif">
													</td>
													<td colspan="2" valign="bottom" background="<%=request.getContextPath()%>/newimages/design/table-shadow-bg-lower.gif" align="right">
														<img src="<%=request.getContextPath()%>/newimages/design/table-shadow-corner-lr.gif">
													</td>
												</tr>
											</tbody>
										</table>
	 
	
	</s:if> 
	
	
	
	<P align = "left">
	<font size="-1">While we take great care to keep our provider directory complete and accurate, our network of participating physicians, practitioners and facilities may change.  To make sure that the physician of your choice still participates, you may contact the physician's office directly, or you can call the network directly at the phone number listed on the back of your America's Choice Identification Card.
	<p align = "left">
	<% //if loginarea = "M" then %>
	Please do not assume that all services provided by a participating physician, practitioner or facility will be covered under your health care
	policy or contract. It is your responsibility to verify that the services you receive are covered services. To verify your coverage, consult your <A href="BenefitSummary.asp">benefits summary</a> and <a href="spd.asp">specific plan document</a>.
	<% //end if %>
	</font>
  </center>
  </body>

</html>
