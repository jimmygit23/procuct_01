<%@ page contentType="text/html; charset=gb2312"%>  
<%@ page language="java" import="java.net.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="/common/commons.jsp"%>
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
	<link type="text/css"
			href="<%=request.getContextPath()%>/jqueryui/css/ui-lightness/jquery-ui-1.8.18.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/jqueryui/js/jquery-ui-1.8.18.custom.min.js">
		</script>
    <script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>  
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <style type="text/css">
	.td_blue6 a {
		color: #062978;line-height: 18px;text-decoration:none
	}
	.td_blue6 a:link {
		color: #062978;line-height: 18px;text-decoration:underline
	}
	.td_blue6 a:hover {
		color: #ff0000;line-height: 18px;text-decoration:none
	}
	</style> 
  </head>
  
  <body>
    <br>
    	 
    	<%
    	 String tempstr=(String) request.getAttribute("fileuploadstatus");
    	 String tempstrsize=(String) request.getAttribute("fileuploadSize");
    	 String tempfileupload=(String) request.getAttribute("fileuploadpath"); 
										
    		Integer temptotal=(Integer) request.getAttribute("temptotal");
    		Integer tempt=0;
    	 //String temperrorinfo=(String) request.getAttribute("errorinfo");
    	
    	// out.print("<div class='path'>=>&nbsp;&nbsp;"+tempfileupload+"</div><br>");
    	//  out.print("<div class='status'>=>&nbsp;&nbsp;"+tempstr+"</div><br>");
    	  //out.print("<div>"+tempstrsize+"</div>");
    	//  out.print("<input type='hidden'  id='fileSize' value='"+tempstrsize+"'>");
    	 %>  
    	 
    	  
    	 
   <form name="resualtform" id="resualtform" method="post" action="">
									    	<input type="hidden" name="hidden_ssn" id="hidden_ssn" value="<%=(String) request.getAttribute("hidden_ssn") %>" />
									        <input type="hidden" name="hidden_altid" id="hidden_altid" value="<%=(String) request.getAttribute("hidden_altid") %>" />  
									        
									        <input type="hidden" name="MAX_FILE_SIZE" value="419430400" /> 
									        <input type="hidden" name="memberID" id="memberID" value="<%=(String) request.getAttribute("hidden_memid") %>" />
									        <input type="hidden" name="grpno" id="grpno" value="<%=(String)  request.getAttribute("hidden_grpno") %>" />
									        <input type="hidden" name="empno" id="empno" value="<%=(String)  request.getAttribute("hidden_empno") %>" />
									        <input type="hidden" name="depno" id="depno" value="<%=(String)  request.getAttribute("hidden_depno") %>" />
									        <input type="hidden" name="hidden_memid" id="hidden_memid" value="<%=(String) request.getAttribute("hidden_memid") %>" />
									        <input type="hidden" name="hidden_grpno" id="hidden_grpno" value="<%=(String)  request.getAttribute("hidden_grpno") %>" />
									        <input type="hidden" name="hidden_empno" id="hidden_empno" value="<%=(String)  request.getAttribute("hidden_empno") %>" />
									        <input type="hidden" name="hidden_depno" id="hidden_depno" value="<%=(String)  request.getAttribute("hidden_depno") %>" />
									          
									        <input type="hidden" name="hidden_login" id="hidden_login" value="<%= request.getAttribute("hidden_login") %>" />
									        <input type="hidden" name="hidden_password" id="hidden_password" value="<%= request.getAttribute("hidden_password") %>" />
									         <input type="hidden" name="methodinfo" id="methodinfo" value="<%=(String) request.getAttribute("methodinfo") %>" />
									        <input type="hidden" name="emailaddressinfo" id="emailaddressinfo" value="<%=(String) request.getAttribute("emailaddressinfo") %>" />
									        <input type="hidden" name="faxnumberinfo" id="faxnumberinfo" value="<%=(String) request.getAttribute("faxnumberinfo") %>" />
									        <input type="hidden" name="usernumberinfo" id="usernumberinfo" value="<%=(String) request.getAttribute("usernumber") %>" />
									        <input type="hidden" name="successform" id="successform" value="<%=(String) request.getAttribute("successform") %>" />
									        <input type="hidden" name="dotype" id="dotype" value="" />
									        <input type="hidden" name="docid" id="docid" value="" />
									        <input type="hidden" name="delfilename" id="delfilename" value="" />
									        <input type="hidden" name="committotal" id="committotal" value="<%=(Integer) request.getAttribute("temptotal")%>" />
									        <input type="hidden" name="dob" id="dob" value="<%=(String) request.getAttribute("dob") %>" />
									        <input type="hidden" name="taxnumber" id="taxnumber" value="<%=(String) request.getAttribute("taxnumber") %>" />
									       
									      <center>
									      <br> <br> <br>
										 <table cellspacing="1" cellpadding="4" width="1200" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="5">
													<font class="font_white_bold16">Final Confirmation</font>
												</th>
											</tr>
											<tr>
												<td colspan="5" class="tdclass6" style="text-align:left;">
													The following request will be submitted. We will get you the result by selected delivery method. Meanwhile, you may easily retrieve this request and view its status online with the Request ID listed below.
													<br><br> 
												</td>
											</tr>
											<tr>
												<td class="tdclass6" style="text-align:center;">
													Result ID
												</td>
												<td class="tdclass6" style="text-align:center;">
													Patient Name
												</td>
												<!-- <td class="tdclass6"  style="text-align:center;">
													Provider Name
												</td> -->
												<td class="tdclass6"  style="text-align:center;">
													Doc ID
												</td>
												<td class="tdclass6"  style="text-align:center;">
													File Name
												</td>
												<td class="tdclass6"  style="text-align:center;">
													Date Submitted
												</td>
												<!-- <td class="tdclass6"  style="text-align:center;">
													Charge Amount
												</td> -->
											</tr>
											
											  <s:set name="count" value="0"></s:set>
											  <s:set name="counttotal" value="#total"></s:set>
									    	  <s:iterator value="tempAdeods" var ="var" status  ="statu">
									    	  	<s:set name="count" value='#count+1'></s:set> 
									    	  	<%tempt++; %>
									    	  	<s:if test="#count==1"> 
 												<input type="hidden" name="delrequestid" id="delrequestid" value="${request_id}" />
 												<input type="hidden" name="docids" id="docids" value="${docids}" />
									    	 	</s:if> 
										    	 <tr>
										    	 	<s:if test="#count==1"> 
													<td class="tdclass6" rowspan="<%=temptotal %>" style="text-align:center;" >
														${request_id}
													</td>
													<td class="tdclass6" rowspan="<%=temptotal %>" style="text-align:center;" > 
														${patientname}
													</td>
													</s:if> 
													<!-- <td class="tdclass6" style="text-align:left;" > 
														${providername}
													</td> -->
													<td class="tdclass6" style="text-align:center;" > 
														 ${docid}
														 <!-- <input type="button" name="file_href${docid}" id="file_href${docid}" class="file_href" value="show" onclick="showpdf('${docid}')"> -->
													</td>
													<td class="tdclass6" style="text-align:center;" > 
														 ${file_name}
												    	  	<s:if test="#count==1">&nbsp;&nbsp;&nbsp;</s:if> 
														   <input type="button" name="file_show${docid}" id="file_show${docid}" class="file_show" value="show" onclick="showpdfbyname('${file_name}')">
															<input type="button" name="file_del${docid}" id="file_del${docid}" class="file_del" value="delete" onclick="delpdf('${docid}','${file_name}')">
													
													
													</td>
													
										    	 	<s:if test="#count==1"> 
													<td class="tdclass6" rowspan="<%=temptotal %>"  style="text-align:center;" >
														<fmt:formatDate value="${datesubmitted}" pattern="MM/dd/yyyy"/>
													</td>
													</s:if> 
													<!-- <td class="tdclass6" style="text-align:right;" > 
														<fmt:formatNumber value="${chargeamount}"  type="currency" currencySymbol="$" />
													</td> -->
												</tr>
										 		<%
										 		 if(temptotal.equals(tempt)){
												 	 
												 	out.print("<tr>");
													out.print("<td colspan='5' class='tdclass6' style='text-align:left;'>");%>
													<s:if test="email_address!=null"> 
													 Email to: <br><br>${email_address}<br><br> 
													</s:if>
													<s:if test="fax_number!=null"> 
													 Fax to: <br><br>${fax_number}<br><br> 
													</s:if>
													<s:if test="mailing_address!=null"> 
													 Mail to: <br><br>${mailing_address}<br><br> 
													</s:if>
													 
													
												<%	out.print("</td>");
													out.print("</tr>");
													}
										 		 %>
									    	  	 
									    	  	
									    	  </s:iterator>
												
									    	  <tr>
													<td colspan="5" class="tdclass6"  style="text-align:right;" > 
													  <input type="button" name="besure" id="besure"  class="button_3" value="Submit" >
													 <input type="button" name="notsure" id="notsure" class="button_3" value="Cancel" >
													</td>
											</tr>
    	  </table>
    	  </center>
    	  
		</form> 
<script type="text/javascript"> 
function delpdf(str,str1){   
        	  
        	  var t_total=document.getElementById('committotal').value;
        	  var alertstr="";
        	   
        	  if(t_total==1){
        	  	alertstr="There is only one file,  deleting it will cancel the entire submission request. Do you want delete it?";
        	  }else{
        	  	alertstr="Delete the file of Doc ID "+str+"?";
        	  }
        	  var r=confirm(alertstr)
		  		if (r==true){ 
					   document.getElementById('docid').value=str;
					   document.getElementById('dotype').value='del';
					   document.getElementById('delfilename').value=str1;
					  $("#resualtform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_delteFilebydocid.action?dofileup=Y"); 
					  $("#resualtform").submit();
					  
					  
			        	 
			 	}
		}
	 
	 
	var tt=document.getElementById('successform').value;
	if(tt=='pdf'){
 	var errorinfo="<%=(String) request.getAttribute("errorinfo")%>";
	 if(errorinfo!="null"){
	 	alert(errorinfo); 
   //  $("#resualtform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_addpatientfile.action");
   // $("#resualtform").submit();
	 }else{
	 	//alert("File update success!"); 
   //  $("#resualtform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_addpatientfile.action?dofileup=Y");
   // $("#resualtform").submit();
	 }
	 }
</script>  
<script type="text/javascript">
	$("#notsure").click(function(){
	        document.getElementById('dotype').value='delAll';
			//if(tt=='pdf'){
		  		$("#resualtform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_addpatientfile.action?dofileup=Y"); 
			//}else if(tt=='form'){
			//	$("#resualtform").attr("action","<%=request.getContextPath()%>/adeod/adeod_showeob.action");
			//}
			$("#resualtform").submit();
        }); 
        
	$("#besure").click(function(){
	        document.getElementById('dotype').value='commit';
	  	 	 //	$("#resualtform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_showlist1.action");
	   		//if(tt=='pdf'){
	  	 	 	$("#resualtform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_addpatientfile.action");
			//}else if(tt=='form'){
			//	$("#resualtform").attr("action","<%=request.getContextPath()%>/adeod/adeod_showeob.action"); 
			//}
			$("#resualtform").submit(); 
		}); 
		
		
		  function showpdf(str){   
		   
			 window.open('<%=path%>/claimfileimport/claimfileimport_showFilesbydocid.action?filename='+str,'_blank','width=1000,height=600,menubar=no,toolbar=no, status=no,scrollbars=yes')
			 		
		}
		 function showpdfbyname(str){   
		   
			 window.open('<%=path%>/claimfileimport/claimfileimport_showFiles.action?filename='+str,'_blank','width=1000,height=600,menubar=no,toolbar=no, status=no,scrollbars=yes')
					
		}
		
	</script>  	 
    	 
 
 
  </body>
</html>
