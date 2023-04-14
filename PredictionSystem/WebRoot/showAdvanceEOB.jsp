<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="/common/commons.jsp"%>
<html>
	<head>
		<title>ACHonline: Provider Home (Providers Site)</title>
		<link type="text/css"
			href="<%=request.getContextPath()%>/jqueryui/css/ui-lightness/jquery-ui-1.8.18.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/jqueryui/js/jquery-ui-1.8.18.custom.min.js">
		</script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/xmlajax.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>  
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
		<table width="100%" border="0" cellspacing="0" cellpadding="0" >
			<tr>
				<td height="136" align="left" valign="top"
					background="<%=request.getContextPath()%>/image/bj_blue_<%= Tcolor01 %>.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" >
						<tr>
							<td width="216" height="136"
								background="<%=request.getContextPath()%>/image/ach_logo_<%= Tcolor01 %>.png"
								class="logoTD">
								<img
									src="<%=request.getContextPath()%>/logoimg/ach.gif"
									width="189" height="70" class="logo">
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="48" align="right" valign="bottom">
											<jsp:include page="/ach_logout.jsp"/>
										</td>
									</tr>
									<tr>
										<td height="70" valign="top">
										<!--导航条  -->
											<!--<jsp:include page="/common/ach_providertop.jsp"></jsp:include>-->
										<!--end 导航  -->
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<table width="100%" border="0" cellpadding="10" cellspacing="0">
			<tr>
				<td width="97" valign="top">
					<!-- menu -->
					<jsp:include page="/common/ach_advance_menu.jsp"></jsp:include> 
				</td>
				<td valign="top" width="100%" style="padding-left:20px;padding-right:30px;">
					<input type="button" value="Go Back" id="goback" >
					 <form id="taxidForm1" method="post" action="">
					  <input type="hidden" name="ssn" id="ssn" value="<%=  request.getAttribute("ssn") %>" />
									        <input type="hidden" name="memberID" id="memberID" value="<%=(String) request.getAttribute("memberID") %>" />
									        
					 </form>
									        
									        
					<div style="margin-top:10px;margin-left:250px;">
						<form id="taxidForm" method="post" action="">
						 					<input type="hidden" name="dob" id="dob" value="<%=(String) request.getAttribute("dob") %>" />  
						 					<input type="hidden" name="dobdep" id="dobdep" value="<%=(String) request.getAttribute("dobdep") %>" /> 
									        <input type="hidden" name="grpno" id="grpno" value="<%= request.getAttribute("grpno") %>" />
									        <input type="hidden" name="empno" id="empno" value="<%=  request.getAttribute("empno") %>" />
									        <input type="hidden" name="depno" id="depno" value="<%=  request.getAttribute("depno") %>" />
									        <!-- <input type="hidden" name="ssn" id="ssn" value="<%=  request.getAttribute("ssn") %>" />
									        <input type="hidden" name="memberID" id="memberID" value="<%=(String) request.getAttribute("memberID") %>" />
									       -->
							<table cellspacing="1" cellpadding="3" width="450" border="0" bgcolor="#0089C7">
								<tr>
									<th colspan="2">
										<font class="font_white_bold16">Claim Search</font>
									</th>
								</tr>
								<tr>
									<td class="tdclass6" width="30%">
										Provider Tax ID
									</td>
									<td class="tdclass6">
										<input name="TaxID" id="TaxID" type="text"  class="input001" value="${strtaxid}${TaxID}"><span id="mess1"><font color="red">(Required)</font></span>
									</td>
									
								</tr>
								<tr>
									<td class="tdclass6">
										Request ID #
									</td>
									<td class="tdclass6">
										<input name="RequestID" id="RequestID" maxlength="30"  type="text" class="input001" value="${delrequestid}${RequestID}"><span id="mess2"></span>
									</td>
								</tr>
							</table>
							
							<table width="450">
								<tr>
									<td align="right" style="padding-top:10px;">
										<input type="button" id="searchID" value="Search" class="button_3">
									</td>
								</tr>
							</table>
					   </form>
					</div>
					
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
								<div>
									<div style="float:left;width:1200px;position:absolute;">
									  <form name="form2" id="form2" method="post" action="">
										<table cellspacing="1" cellpadding="3" width="1000" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="9">
													<font class="font_white_bold16">Claim List</font>
												</th>
											</tr>	 
											<tr>
												<td  class="tdclass6" style="text-align:center;">Request ID</td>
												<td  class="tdclass6" style="text-align:center;">Patient Name</td>
												<td  class="tdclass6" style="text-align:center;">Status</td>
												<td  class="tdclass6" style="text-align:center;">Date Submitted</td>
												<td  class="tdclass6" style="text-align:center;">Date Completed</td>
												<td  class="tdclass6" style="text-align:center;">Provider Name</td>	
												<td class="tdclass6"  style="text-align:center;">File Name</td>
												<td  class="tdclass6" style="text-align:center;">Claim Number</td>
												<!-- <td  class="tdclass6" style="text-align:center;">AEOB_Link</td> -->
												<td  class="tdclass6" style="text-align:center;">Charge Amount</td>
												<td  class="tdclass6" style="text-align:center;">Form Doc ID</td>
												
												<!-- <td  class="tdclass6" width="50%" style="text-align:center;">Conduct</td> -->
											</tr>
											
											
									   <s:iterator value="tempAdeods" var ="var" status  ="statu">
									   <c:choose>
									   		<c:when test="${statu.count%2==0}">
									   			<tr onmouseover="this.bgColor='#dfe8f6';" onmouseout="this.bgColor='#ffffff'">
													<td class="tdclass6">
														${request_id}
													</td>
													<td class="tdclass6">
														 ${patientname}
													</td>
													<td class="tdclass6">
														 ${status_str}
													</td>
													<td class="tdclass6">
														<fmt:formatDate value="${date_submitted}" pattern="MM/dd/yyyy"/>
														<fmt:formatDate value="${datesubmitted}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6">
														<fmt:formatDate value="${date_completed}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6">
														${provider_name}
													</td>
													<td class="tdclass6">
														${file_name}
													</td>
													<td class="tdclass6" td_blue6>
														<c:choose>
															<c:when test="${aeob_link eq Y}"><a href="###" id="showAEOB"  class="${claim_number}">${claim_number}</a></c:when>
															<c:otherwise>${claim_number}</c:otherwise>
														</c:choose>
													</td>
													<!-- <td class="tdclass6">
														${aeob_link}
													</td> -->
													<td class="tdclass6">
														<fmt:formatNumber value="${charge_amount}"  type="currency" currencySymbol="$" />
													</td>
													<td class="tdclass6 td_blue6">
														<a href="###" id="${form_doc_id}" class="showdetail">${form_doc_id}</a>
														<!-- <a href="###" id="${docid}" class="showpdf">${docid}</a> -->
														${docid}
													</td>
													<!-- <td class="tdclass6"  width="50%">
														<input type="button" id="${scanned_claim_id}" name="showdetail${scanned_claim_id}" value="Show Detail" class="showdetail">
													    <input type="button" style="margin-left:100px" claimid="${scanned_claim_id}" name="printdetail${scanned_claim_id}" value="print Detail" class="printdetail">
													</td>  -->
												</tr>
												<tr>
													<td class="tdclass6" colspan="10">
													       <div id="detail${form_doc_id}" class="detail" style="display: none;background-color: #fff4a5;">
															   <div align="right"><input type="button" id="canceldetail${form_doc_id}" value="cancel" class="button_3 canceldetail"></div>
															   <div id="detaillines${form_doc_id}" name="detaillines${form_doc_id}" class="detaillines"></div>
															</div>
													</td>
												</tr>
									   		</c:when>
									   		<c:otherwise>
										   		<tr onmouseover="this.bgColor='#dfe8f6';" onmouseout="this.bgColor='#ffffff'">
													<td class="tdclass6">
														${request_id}
													</td>
													<td class="tdclass6">
														 ${patientname}
													</td>
													<td class="tdclass6">
														 ${status_str}
													</td>
													<td class="tdclass6">
														<fmt:formatDate value="${date_submitted}" pattern="MM/dd/yyyy"/>
														<fmt:formatDate value="${datesubmitted}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6">
														<fmt:formatDate value="${date_completed}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6">
														${provider_name}
													</td>
													<td class="tdclass6">
														${file_name}
													</td>
													<td class="tdclass6 td_blue6">
														<c:choose>
															<c:when test="${aeob_link eq 'Y'}"><a href="###" id="showAEOB" class="${claim_number}">${claim_number}</a></c:when>
															<c:otherwise>${claim_number}</c:otherwise>
														</c:choose>
													</td>
													<!-- <td class="tdclass6">
														${aeob_link}
													</td> -->
													<td class="tdclass6">
														<fmt:formatNumber value="${charge_amount}"  type="currency" currencySymbol="$" />
													</td>
													<td class="tdclass6 td_blue6">
														<a href="###" id="${form_doc_id}" class="showdetail">${form_doc_id}</a>
														<!-- <a href="###" id="${docid}" class="showpdf">${docid}</a> -->
														${docid}
													</td>
													<!-- <td class="tdclass6"  width="50%">
														<input type="button" id="${scanned_claim_id}" name="showdetail${scanned_claim_id}" value="Show Detail" class="showdetail">
												        <input type="button" style="margin-left:100px" claimid="${scanned_claim_id}" name="printdetail${scanned_claim_id}" value="print Detail" class="printdetail">
													</td> --> 
												</tr>
												<tr>
													<td class="tdclass6" colspan="10">
													       <div id="detail${form_doc_id}" class="detail" style="display: none;background-color: #fff4a5;">
													       		<div align="right"><input type="button" id="canceldetail${form_doc_id}" value="cancel" class="button_3 canceldetail"></div>
															   <div id="detaillines${form_doc_id}" name="detaillines${form_doc_id}" class="detaillines"></div>
															</div>
													</td>
												</tr>
									   		</c:otherwise>
									   </c:choose>	 
									   </s:iterator>
										
											<!-- 
											 <tr onmouseover="this.bgColor='#dfe8f6';" onmouseout="this.bgColor='#ffffff'">
													<td class="tdclass6">
														${request_id}
													</td>
													<td class="tdclass6">
														 ${status_str}
													</td>
													<td class="tdclass6">
														<fmt:formatDate value="${date_submitted}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6">
														<fmt:formatDate value="${date_completed}" pattern="MM/dd/yyyy"/>
													</td>
													<td class="tdclass6">
														${provider_name}
													</td>
													<td class="tdclass6" td_blue6>
														<a href="###" id="showAEOB" class="2022-108000172-0000">2022-108000172-0000</a>
													</td>
													<td class="tdclass6">
														${charge_amount}
													</td>
													<td class="tdclass6 td_blue6">
														<a href="###" id="${form_doc_id}" class="showdetail">${form_doc_id}</a>
													</td>
												</tr>
												 -->
										</table>
										</form>
									</div>
									 
								</div>
								<form name="showeobdetail" id="showeobdetail" method="post" action="">
								   <input type="hidden" name="tempCLMNUM" id="claimid"/>
								   <input type="hidden" name="subtype" value="print"/>
								</form>
								<form id="showaeobdetail" name="showaeobdetail" action="" method="post">	
								    <!-- <input type="hidden" name="grpno" value="${grpno}"/>
									<input type="hidden" name="empno" value="${empno}"/> -->
									<input type="hidden" id="clmpre" name="clmpre" value=""/>
									<input type="hidden" id="clmno" name="clmno" value=""/>
									<input type="hidden" id="clmsuf" name="clmsuf" value=""/>
									<input type="hidden" id="payto" name="payto" value=""/>
								</form>	
							</td>
						</tr>
					</table>			
				</td>
			</tr>	
		</table>					
	</body>
<script type="text/javascript">
		 
		 $(".canceldetail").click(function(){ 
			$(".detaillines").html("");
			$(".detail").css({"display":"none"});
        }); 
	
	$("#showAEOB").click(function(){ 
			var tempclm = $(this).attr("class");
			var clmpre= tempclm.split("-")[0]; 
			var clmno= tempclm.split("-")[1]; 
			var clmsuf= tempclm.split("-")[2]; 
			$("#clmpre").attr("value",clmpre);
			$("#clmno").attr("value",clmno);
			$("#clmsuf").attr("value",clmsuf);
			//$("#showaeobdetail").attr("action","<%=request.getContextPath()%>/claim/claim_showdetail.do?tab_flag=tab_4");
			//$("#showaeobdetail").attr("action","https://localhost:8080/medi/claim/claim_advshowdetail.do?tab_flag=tab_4&AdvanceEOB=showadvanceeob");
			$("#showaeobdetail").attr("action","https://secure4.achonline.com/claim/claim_advshowdetail.do?tab_flag=tab_4&AdvanceEOB=showadvanceeob");
			$("#showaeobdetail").submit();
        }); 
		 
		$(".showdetail").click(function(){ 
			$(".detaillines").html("");
			$(".detail").css({"display":"none"});
			
			var tempclm=this.id;
			showdetails(tempclm);
			
     		$(".detaillines").attr("style","display:none");
     		$("#detaillines"+tempclm).attr("style","display:block");
     		
        }); 
        
        $(".showpdf").click(function(){  
        var str=this.id;
       
			window.open('<%=path%>/claimfileimport/claimfileimport_showFilesbydocid.action?filename='+str,'_blank','width=1000,height=600,menubar=no,toolbar=no, status=no,scrollbars=yes')
		
        }); 
        
        function sendseccess(idstr){
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
        } 
		   
        function showdetails(str){  
         
            $("#detail"+str).css({"display":"block"});
        	 XMLAjax2("<%=path%>/adeod/adeod_showeobdetail.action" ,"subtype=show&tempCLMNUM="+str,"detaillines"+str,sendseccess); 
        	

		}
		
		$(".printdetail").click(function(){
		  var tempclm=$(this).attr("claimid");
		  $("#claimid").val(tempclm);
		  $("#showeobdetail").attr("action","<%=request.getContextPath()%>/adeod/adeod_showeobdetail.action");
          $("#showeobdetail").submit();
		});
//Claim Search
//验证
$("#searchID").click(function(){
  var taxid = $("#TaxID").val();
  var requestid = $("#RequestID").val();
  var haveError = false;
  if(taxid == null || taxid.trim() == ""){
     $("#mess1").html("(Required)").attr("style","color:red");
     haveError = true;
  }else{
    var isnumber = /^\d+$/.test(taxid);
    if(!isnumber){
      // haveError = true;
      // $("#mess1").html("Must be numeric characters.").attr("style","color:red");
    }else{
       $("#mess1").html("");
    }
  }
   //if((taxid == null || taxid.trim() == "") && (requestid == null || requestid.trim() == "")){
  // 		haveError = true;
  // }
   
  if(requestid != null && requestid.trim() != ""){
     var isnumber = /^\d+$/.test(requestid);
     if(!isnumber){
       haveError = true;
       $("#mess2").html("Must be numeric characters.").attr("style","color:red");
    }else{
       $("#mess2").html("");
    }
  }else{
     $("#mess2").html("");
  }

  if(!haveError){
     $("#taxidForm").attr("action","<%=request.getContextPath()%>/adeod/adeod_showEobByTaxID.action");
     $("#taxidForm").submit();
  }

});
</script>  	 
<script type="text/javascript">
	  $("#goback").click(function(){
	  var r=confirm("Go back to previous page?")
  		if (r==true){
	 		//window.history.back()  
	 		//$("#taxidForm1").attr("action","<%=path%>/claimfileimport/claimfileimport_showlist1.action");
	 		$("#taxidForm1").attr("action","<%=path%>/advancesearch.jsp");
     		$("#taxidForm1").submit();    
	 	}
        });
	</script>  
</html>
