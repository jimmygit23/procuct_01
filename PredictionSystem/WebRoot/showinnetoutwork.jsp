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
  <br><br><br>
  <img style="margin-right:10px;height:14px;width:20px;cursor:pointer;" title="Print" id="idPrintGoble1" src="<%=request.getContextPath()%>/image/print.gif" >
				<a href="#" id="idLogoutGoble"  style="cursor:pointer;">Print</a>
   
    
    <div style="display:block;left:1100px;top:100px;position:absolute; z-index:999991;border-left:20px solid #0089C7;border-top:20px solid #0089C7;background-color:0089C7;color:ffffff;filter: alpha(opacity=100); opacity:1;width:160px;height:120px;font-size:18px;cursor:pointer;border-radius:10px;">
			 Out-of-Network/<br>Uninsured Price
			 </div>
			 <div style="display:block;left:1300px;top:100px;position:absolute; z-index:999991;border-left:20px solid #ca0a0a;border-top:20px solid #ca0a0a;background-color:ca0a0a;color:ffffff;filter: alpha(opacity=100); opacity:1;width:160px;height:120px;font-size:18px;cursor:pointer;border-radius:10px;">
			 In-Network Price
			 </div>
			 
			 <div style="display:block;left:290px;top:160px;position:absolute; z-index:999990;border:10px solid #000080;background-color:#ffffff;color:black;filter: alpha(opacity=100); opacity:1;width:1270px;height:420px;font-size:18px;cursor:pointer;border-radius:0px;"></div>
			 <div style="display:block;left:300px;top:170px;position:absolute; z-index:999992;border-left:20px solid #D4D4D4;border-top:20px solid #D4D4D4;background-color:#D4D4D4;color:black;filter: alpha(opacity=70); opacity:0.7;width:1250px;height:400px;font-size:18px;cursor:pointer;border-radius:0px;"></div>
			 <div style="display:block;left:350px;top:170px;position:absolute; z-index:999993;border-left:20px solid #ffffff;border-top:20px solid #ffffff;background-color:#ffffff;color:black;filter: alpha(opacity=70); opacity:0.7;width:1150px;height:400px;font-size:18px;cursor:pointer;border-radius:0px;"></div>
			 <div style="display:block;left:290px;top:600px;position:absolute; z-index:999990;border:10px solid #000080;background-color:#000080;color:black;filter: alpha(opacity=100); opacity:1;width:1270px;height:50px;font-size:18px;cursor:pointer;border-radius:0px;"></div>	
			  
			 <div style="display:block;left:400px;top:180px;position:absolute; z-index:999993;width:1100px;height:400px;">
			 <table style="width:100%;height:100%;">
			 <tr>
			 <td width="850px" height="50px"><b>Primary Medical Procedure<b><br>
			 <!-- <b><%=(String) request.getAttribute("ppoprovname")%><b><br> -->
			 <b><%=(String) request.getAttribute("ppoprovname")%><b><br>
			 <b><%=(String) request.getAttribute("proccdesc")%><b><br>
			 <b>CPT Code:<%=(String) request.getAttribute("proccd")%><b></td>
			 <td width="220px" style="color:#0089C7;font-size:24px;"><s:iterator value="estchecklUCR" var ="var" status  ="statu">$${UCRAMT}</s:iterator></td>
			 <td width="160px" style="color:#ca0a0a;font-size:24px;">$<%=(String) request.getAttribute("inrate") %></td>
			 </tr>
			 <tr>
			 <td colspan="3"  height="300px">
					 <table style="width:100%;">
					 	<tr><td><b>Network<b></td><td><b>Service Description<b></td><td><b>Copay<b></td><td><b>Paid%<b></td><td><b>Ded (Individual/Family/Count)<b></td><td><b>OOP (Individual/Family/Count)<b></td><td><b>NOTES<b></td></tr>
					 	<s:set name="total" value="0"></s:set>
					 	<s:set name="totalinrate" value="0"></s:set>
					 	<s:iterator value="estcostclmdetl" var ="var" status  ="statu">
					 	<tr><td>${PPODESC}</td>
					 	<td>${ServiceDescription}</td>
					 	<td>${Copay}</td>
					 	<td>${PaidPct}</td>
					 	<td>${Deductible}</td>
					 	<td>${OOP}</td>
					 	<td>${NOTES}</td></tr>
					 	<s:set name="total" value="#total+1"></s:set>	
					 	</s:iterator>
					 </table>
			 <br>
			 <br>
				<!-- 	 <table style="width:100%;">
					 	<tr><td><b>EFFYM<b></td>
					 	<td><b>UCRCD<b></td>
					 	<td><b>PCT<b></td>
					 	<td><b>GEOAREA<b></td>
					 	<td><b>RVSID<b></td>
					 	<td><b>RELVAL<b></td>
					 	<td><b>UCRPCT<b></td>
					 	<td><b>UCRAMT<b></td></tr>
					 	<s:set name="totalucr" value="0"></s:set>
					 	<s:iterator value="estchecklUCR" var ="var" status  ="statu">
					 	<tr><td>${EFFYM}</td>
					 	<td>${UCRCD}</td>
					 	<td>${PCT}</td>
					 	<td>${GEOAREA}</td>
					 	<td>${RVSID}</td>
					 	<td>${RELVAL}</td>
					 	<td>${UCRPCT}</td>
					 	<td>${UCRAMT}</td></tr>
					 	<s:set name="totalucr" value="#totalucr+1"></s:set>	
					 	</s:iterator>
					 </table>
			 
			  -->
			 
			 
			 
			 
			 
			 </td>
			 </tr>
			 <tr>
			 <td  height="50px" colspan="3" style="color:#0089C7;font-size:14px;align:right;right:50px;" align="right"><!-- see out-of-network Reimbursement --></td>
			 </tr>
			 </table>
			 </div>
			 
			 
			  
			 <div style="display:block;left:350px;top:605px;position:absolute; z-index:999991;color:ffffff;width:160px;height:30px;font-size:24px;">
			 Total Cost
			 </div>
			 <s:if test="#total==0">
			 <div style="display:block;left:550px;top:605px;position:absolute; z-index:999991;color:ffffff;width:400px;height:30px;font-size:16px;text-align:left;">
			 No plan benefit is available for this service. You will be responsible for the full cost. Please call Member Services for further explanation.
			 </div>
			 </s:if>
			 <div style="display:block;left:1100px;top:605px;position:absolute; z-index:999991;border-left:20px solid #0089C7;border-top:20px solid #0089C7;background-color:0089C7;color:ffffff;filter: alpha(opacity=100); opacity:1;width:160px;height:30px;font-size:24px;cursor:pointer;border-radius:10px;">
			 <s:iterator value="estchecklUCR" var ="var" status  ="statu">$${UCRAMT}</s:iterator>
			 </div>
			 <div style="display:block;left:1300px;top:605px;position:absolute; z-index:999991;border-left:20px solid #ca0a0a;border-top:20px solid #ca0a0a;background-color:ca0a0a;color:ffffff;filter: alpha(opacity=100); opacity:1;width:160px;height:30px;font-size:24px;cursor:pointer;border-radius:10px;">
			 $<%=(String) request.getAttribute("inrate") %>
			 </div> 
	
  </center> 
 </body> 
</html>
