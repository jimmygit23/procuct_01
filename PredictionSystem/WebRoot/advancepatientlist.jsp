<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/xmlajax.js"></script>
	</head>
	<style type='text/css'>
	 .replydiv {
	    position: fixed;
	    background-color: #0089C7;
	    top: 40%;
	    left: 30%;
	    width: 700px;
	    border-radius: 1em;
	    text-align: center;
	    z-index: 99999;
	}
	.replydiv1 {
	    position: fixed;
	    background-color: #0089C7;
	    top: 40%;
	    left: 30%;
	    width: 700px;
	    border-radius: 1em;
	    text-align: center;
	    z-index: 99999;
	}
	</style>

		<div id="advs" class="advs"  style="display:none;position:absolute; z-index:9999; background:white ;filter: alpha(opacity=70); opacity:0.7;border=0;width:100%;height:100%;bottom:0px;"></div>
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
		
		<table id="initPrintArea" width="100%" border="0" cellpadding="10" cellspacing="0">
			<tr>
				<td width="97" valign="top">
					<!-- menu -->
					  <jsp:include page="/common/ach_advance_menu.jsp"></jsp:include> 
				</td>
				<td valign="top" width="100%" style="padding-left:20px;padding-right:30px;">
					<input type="button" value="Go Back" id="goback" >
					
					
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
								<div>
									<div style="float:left;width:850px;position:absolute;">
										<table cellspacing="1" cellpadding="3" width="850" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="5">
													<font class="font_white_bold16">Patient List</font>
												</th>
											</tr>
											
											<tr>
												<td class="tdclass6" width="20%" style="text-align:center;">
													Social Security Number
												</td>
												<td class="tdclass6"  style="text-align:center;">
													Patient Name
												</td>
												<td class="tdclass6" style="text-align:center;">
													 Member ID
												</td>
												<td class="tdclass6" style="text-align:center;">
													 DOB
												</td>
												<td class="tdclass6"  width="31%" style="text-align:center;">
													  Conduct
												</td>
											</tr>
											
									   <s:iterator value="tempadeod" var ="var" status  ="statu">
									    
									   
									   <!--<s:if test='chossedotype == "O"'> aa</s:if>-->
									   <s:if test=' depno == chossedepno || chossedotype == "O"'> 
									   <c:choose>
									   		<c:when test="${statu.count%2==0}">
									   			<tr>
													<td class="tdclass6"  >
														
														XXX-XX-${ssnsub}
														<input type="hidden" value="${ssn}" id="ssn${statu.count}">
														<input type="hidden" value="${grpno}" id="grpno${statu.count}">
														<input type="hidden" value="${empno}" id="empno${statu.count}">
														<input type="hidden" value="${depno}" id="depno${statu.count}">
													</td>
													<td class="tdclass6"  >
														   <s:if test="suffix != null ">
														   ${firstname} ${mi} ${lastname},${suffix}
														   </s:if>
														   <s:else>
														   ${firstname} ${mi} ${lastname}
														   </s:else>
														   <input type="hidden" value="${firstname }" id="firstname${statu.count}">
														   <input type="hidden" value="${mi }" id="mi${statu.count}">
														   <input type="hidden" value="${lastname }" id="lastname${statu.count}">
														   <input type="hidden" value="${suffix }" id="suffix${statu.count}">
														   <input type="hidden" value="${gender }" id="gender${statu.count}">
														   <input type="hidden" value="${spouse }" id="spouse${statu.count}">
														   <input type="hidden" value="${child }" id="child${statu.count}">
														   <input type="hidden" value="${other }" id="other${statu.count}">
													</td>
													<td class="tdclass6">
													    <s:set name="group_number" value="('00000'+grpno).substring(('00000'+grpno).length()-5)"></s:set>
													    <s:set name="employee_number" value="('00000'+ empno).substring(('00000'+ empno).length()-5)"></s:set>
													    <s:set name="dependent_number" value="('00'+ depno).substring(('00'+ depno).length()-2)"></s:set>
													    
													    <s:if test="idalt != null">
													       ${idalt }
													    </s:if>
													    <s:else>
													       ${group_number}${employee_number}${dependent_number}
													    </s:else>
														  
														<input type="hidden" value="${idalt }" id="idalt${statu.count}">
														<input type="hidden" value="${group_number}${employee_number}${dependent_number }" id="memberids${statu.count}">
													</td>
													<td class="tdclass6">
														  <fmt:formatDate value="${dob}" pattern="MM/dd/yyyy"/>
														  <input type="hidden" value='<fmt:formatDate value="${dob}" pattern="MM/dd/yyyy"/>' id="dob${statu.count}">
													</td>
													<td class="tdclass6"> 
														   <!-- <input type="button" name="subfile${statu.count}" id="${ssn},${idalt},M${grpno}${empno}" class="subfile" value="Update file" > -->
														   <input type="button" name="addeob${statu.count}" id="addeob${statu.count},${ssn},${idalt},M${grpno}${empno},${grpno},${empno},${depno}" class="addeob" value="NEW" onclick="chooseadd(${statu.count},this)">
														   <input type="button" name="showeob${statu.count}" id="showeob${statu.count}" class="showeob" value="INQUIRY" >
														   <input type="button" name="showprice${statu.count}" id="showprice${statu.count}" class="showprice" value="Price Comparison" >
													</td>
												</tr>
									   		</c:when>
									   		<c:otherwise>
										   		<tr>
													<td class="tdclass6"   >
														
													XXX-XX-${ssnsub}
														<input type="hidden" value="${ssn}" id="ssn${statu.count}">
														<input type="hidden" value="${grpno}" id="grpno${statu.count}">
														<input type="hidden" value="${empno}" id="empno${statu.count}">
														<input type="hidden" value="${depno}" id="depno${statu.count}">
													</td>
													<td class="tdclass6">
														   <s:if test="suffix != null ">
														   ${firstname} ${mi} ${lastname},${suffix}
														   </s:if>
														   <s:else>
														   ${firstname} ${mi} ${lastname}
														   </s:else>
														   <input type="hidden" value="${firstname }" id="firstname${statu.count}">
														   <input type="hidden" value="${mi }" id="mi${statu.count}">
														   <input type="hidden" value="${lastname }" id="lastname${statu.count}">
														   <input type="hidden" value="${suffix }" id="suffix${statu.count}">
														   <input type="hidden" value="${gender }" id="gender${statu.count}">
														   <input type="hidden" value="${spouse }" id="spouse${statu.count}">
														   <input type="hidden" value="${child }" id="child${statu.count}">
														   <input type="hidden" value="${other }" id="other${statu.count}">
													</td>
													<td class="tdclass6">
														<s:set name="group_number" value="('00000'+grpno).substring(('00000'+grpno).length()-5)"></s:set>
													    <s:set name="employee_number" value="('00000'+ empno).substring(('00000'+ empno).length()-5)"></s:set>
													    <s:set name="dependent_number" value="('00'+ depno).substring(('00'+ depno).length()-2)"></s:set>
													    
													    <s:if test="idalt != null">
													       ${idalt }
													    </s:if>
													    <s:else>
													       ${group_number}${employee_number}${dependent_number}
													    </s:else>
														  
														<input type="hidden" value="${idalt }" id="idalt${statu.count}">
														<input type="hidden" value="${group_number}${employee_number}${dependent_number }" id="memberids${statu.count}">
													</td>
													<td class="tdclass6">
														  <fmt:formatDate value="${dob}" pattern="MM/dd/yyyy"/> 
														  <input type="hidden" value='<fmt:formatDate value="${dob}" pattern="MM/dd/yyyy"/>' id="dob${statu.count}">
													</td>
													<td class="tdclass6"> 
														   <!-- <input type="button" name="subfile${statu.count}" id="${ssn},${idalt},M${grpno}${empno},${grpno},${empno},${depno}" class="subfile" value="Update file" > --> 
														   <input type="button" name="addeob${statu.count}" id="addeob${statu.count},${ssn},${idalt},M${grpno}${empno},${grpno},${empno},${depno}" class="addeob" value="NEW"  onclick="chooseadd(${statu.count},this)">
														   <input type="button" name="showeob${statu.count}" id="showeob${statu.count}" class="showeob" value="INQUIRY" >
														   <input type="button" name="showprice${statu.count}" id="showprice${statu.count}" class="showprice" value="Price Comparison" >
													</td>
												</tr>
									   		</c:otherwise>
									   </c:choose>	
									   </s:if> 
									   </s:iterator>
										
										<table width="850">
											<tr>
												<td align="right" style="padding-top:10px;">
													<!-- <input type="button" id="searchIDc" value="Find Claim" class="button_3"> -->
												</td>
											</tr>
										</table>
									</table>
								</div>
									
									  
									<div style="float:right;width:300px;">
										<form name="displayform" id="displayform" method="post" action="">
									    	<input type="hidden" name="hidden_ssn" id="hidden_ssn" value="" />
									        <input type="hidden" name="hidden_altid" id="hidden_altid" value="" />
									        <input type="hidden" name="hidden_login" id="hidden_login" value="<%=(String) request.getAttribute("hidden_login") %>" />
									        <input type="hidden" name="hidden_password" id="hidden_password" value="<%=(String) request.getAttribute("hidden_password") %>" />
									        <input type="hidden" name="grpno" id="grpno" value="" />
									        <input type="hidden" name="empno" id="empno" value="" />
									        <input type="hidden" name="depno" id="depno" value="" />
									        <input type="hidden" name="firstname" id="firstname" value="" />
									        <input type="hidden" name="mi" id="mi" value="" />
									        <input type="hidden" name="lastname" id="lastname" value="" />
									        <input type="hidden" name="suffix" id="suffix" value="" />
									        <input type="hidden" name="gender" id="gender" value="" />
									        <input type="hidden" name="spouse" id="spouse" value="" />
									        <input type="hidden" name="child" id="child" value="" />
									        <input type="hidden" name="other" id="other" value="" />
									        
									        
									        <input type="hidden" name="count" id="count" value="" />
									        <input type="hidden" name="methodinfo" id="methodinfo" value="" />
									        <input type="hidden" name="submethodinfo" id="submethodinfo" value="1" />
									        
									        <input type="hidden" name="dobdep" id="dobdep" value="<%=(String) request.getAttribute("dob") %>" />
									        
									        <input type="hidden" name="emailaddressinfo" id="emailaddressinfo" value="" />
									        <input type="hidden" name="faxnumberinfo" id="faxnumberinfo" value="" />
									        <input type="hidden" name="usernumber" id="usernumber" value="<%=(String) request.getAttribute("usernumber") %>" />
									        <input type="hidden" name="dotype" id="dotype" value="<%=(String) request.getAttribute("dotype") %>" />
									        <input type="hidden" name="dob" id="dob" value="<%=(String) request.getAttribute("dob") %>" />
									        <input type="hidden" name="memberID" id="memberID" value="<%=(String) request.getAttribute("memberID") %>" />
									        <input type="hidden" name="ssn" id="ssn" value="" />
									        <input type="hidden" name="taxnumber" id="taxnumber" value="" />
										</form>
										<font class="font_black14_arial">
											Choose Add EOB to create a new Advanced EOB file for patient.  
											Choose Show EOB to display existing Advanced EOB files for patient.
										</font>
									</div>
								</div>
							</td>
						</tr>
					</table>
				
				
				
				
				
				
				
							
				</td>
			</tr>	
		</table>
		
		<div id="replydiv" class="replydiv" style="display: none;">
		<br>
		
		
			
			 <form name="replyfrom" id="replyfrom" method="post"  action="">
			 <table cellspacing="1" cellpadding="3" width="680" border="0" bgcolor="#0089C7" align="center">
					<tr>
						<td class="tdclass6" colspan="2" >Submission Method:</td>
						<!-- <td class="tdclass6" colspan="2">Preferred EOB Delivery Method:</td> -->
					</tr>
					<tr>
						<td class="tdclass6" width="40%"  colspan="2">
							<input type="radio" name="Submethod" id="addform" value="1" onclick="changeSub(this);"  />
							Fill Out Online Request Form
						</td>
						<!-- <td class="tdclass6" width="45%">
							<input type="radio" name="method" id="email" value="1" checked/>
							EMAIL ADDRESS
						</td>
						<td class="tdclass6">
							<input name="emailaddress" id="emailaddress" type="text"  class="input001" style="width: 250px"><span id="mess1"></span>
						</td>-->
					</tr>
					<tr>
						<td class="tdclass6" width="30%">
							<input type="radio" name="Submethod" id="addfile" value="0"  onclick="changeSub(this);"/>
							Submit Claim Form
						</td>
						<td class="tdclass6" width="70%">
						<div id="taxiddiv" class="taxiddiv" style="display: none;">
						Provider Tax ID&nbsp;<input name="taxidnumber" id="taxidnumber" type="text"  class="input001" style="width: 120px;">&nbsp;<span id="mess5"></span>
							
						</div>
						</td>
						<!-- <td class="tdclass6" width="45%">
							<input type="radio" name="method" id="fax" value="0" />
							FAX NUMBER
						</td>
						<td class="tdclass6">
							<input name="faxnumber" id="faxnumber" type="text"  class="input001" style="width: 250px;"><span id="mess2"></span>
						</td>-->
					</tr>
				</table>
				 <table width="680">
					<tr>
						<td  width="40%"></td>
						<td align="right" style="padding-top:10px;" >
							<!-- <input type="button" id="submitreply" value="Submit" class="button_3"> -->
							<input type="button" id="submitreply2" value="Submit" class="button_3">
						</td>
						<td align="right" style="padding-top:10px;"  >
							<input type="button" id="cancelreply2" value="Cancel" class="button_3">
						</td>
						<td  width="40%"></td>
					</tr>
				</table> 
				</form>
		
				
		</div>
		
		<div id="replydiv1" class="replydiv1" style="display: none;">
		<br>
		<form name="replyfrom1" id="replyfrom1" method="post"  action="">
				<table cellspacing="1" cellpadding="3" width="680" border="0" bgcolor="#0089C7" align="center">
					<tr>
						<td class="tdclass6"  colspan="3">What method of delivery would the patient prefer?</td>
					</tr>
					<tr>
						<td class="tdclass6" colspan="1" width="30"><input type="radio" name="method" id="email" value="0"  onclick="changeSubform(this);"  checked/></td>
						<td class="tdclass6" colspan="1" width="80">E-mail to：</td>
						<td class="tdclass6" colspan="1"><input name="emailaddress" id="emailaddress" type="text"  class="input001" style="width: 250px"><span id="mess3"></td>
					</tr>
					<tr>
						<td class="tdclass6" colspan="1" width="30"><input type="radio" name="method" id="fax" value="1"   onclick="changeSubform(this);" /></td>
						<td class="tdclass6" colspan="1" width="80">Fax to：</td>
						<td class="tdclass6" colspan="1"><input name="faxnumber" id="faxnumber" type="text"  class="input001" style="width: 250px;"><span id="mess4"></td>
					</tr>
					<tr>
						<td class="tdclass6" colspan="1" width="30"><input type="radio" name="method" id="infile" value="2"   onclick="changeSubform(this);" /></td>
						<td class="tdclass6" colspan="2">Mail to the member address on file</td>
					</tr>
				</table>
				<table width="680">
					<tr>
						<td  width="30%"></td>
						<td align="right" style="padding-top:10px;" >
							<input type="button" id="submitreplyform" value="Submit" class="button_3">
						</td>
						<td align="right" style="padding-top:10px;"  >
							<input type="button" id="cancelreply" value="Cancel" class="button_3">
						</td>
						<td  width="30%"></td>
					</tr>
				</table>
			</form>
		</div>
							
	</body>
	<script type="text/javascript">

$(".subfile").click(function(){
	var temp=this.id;
	var val=temp.split(",");
	var ssn=val[0];
	var altid=val[1];
	var memid=val[2];
	var grpno=val[3];
	var empno=val[4];
	var depno=val[5];
	document.getElementById("hidden_ssn").value=ssn; 
	document.getElementById("hidden_altid").value=altid; 
	document.getElementById("memberID").value=memid;
	document.getElementById("grpno").value=grpno; 
	document.getElementById("empno").value=empno; 
	document.getElementById("depno").value=depno;
	//alert("ssn:"+ssn+",altid:"+altid+",memid:"+memid);
     $("#displayform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_addpatientfile.action");
     $("#displayform").submit();
});

function  subfilefun(){
	 $("#displayform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_addpatientfile.action");
     $("#displayform").submit();
    // $("#advs").css("display","none");
}


$(".addeob_old").click(function(){  
	var temp=this.id;
	temp = temp.substring(6);//获取${statu.count}
	
	/*
	var val=temp.split(",");
	var ssn=val[0];
	var altid=val[1];
	*/
	/*
	document.getElementById("hidden_altid").value=document.getElementById("idalt"+temp).value; 
	*/
	document.getElementById("hidden_ssn").value=document.getElementById("ssn"+temp).value;
	document.getElementById("grpno").value=document.getElementById("grpno"+temp).value;
	document.getElementById("empno").value=document.getElementById("empno"+temp).value;
	document.getElementById("depno").value=document.getElementById("depno"+temp).value; 
	document.getElementById("firstname").value=document.getElementById("firstname"+temp).value; 
	document.getElementById("mi").value=document.getElementById("mi"+temp).value; 
	document.getElementById("lastname").value=document.getElementById("lastname"+temp).value; 
	document.getElementById("suffix").value=document.getElementById("suffix"+temp).value;
	//document.getElementById("dob").value=document.getElementById("dob"+temp).value;
	document.getElementById("dobdep").value=document.getElementById("dob"+temp).value;
	
	document.getElementById("gender").value=document.getElementById("gender"+temp).value;
	document.getElementById("spouse").value=document.getElementById("spouse"+temp).value;
	document.getElementById("child").value=document.getElementById("child"+temp).value;
	document.getElementById("other").value=document.getElementById("other"+temp).value;
	//document.getElementById("memberID").value=document.getElementById("idalt"+temp).value;
	//document.getElementById("memberID").value=document.getElementById("memberids"+temp).value;
	
     $("#displayform").attr("action","<%=request.getContextPath()%>/adeod/adeod_addeob.action");
     $("#displayform").submit();
});
$(".showeob").click(function(){

	var temp=this.id;
	temp = temp.substring(7);//获取${statu.count}
	 
	/*
	var val=temp.split(",");
	var ssn=val[0];
	var altid=val[1];
	*/
	//document.getElementById("ssnID").value=document.getElementById("ssn"+temp).value;
	//document.getElementById("memberID").value=document.getElementById("idalt"+temp).value;
	//document.getElementById("memberID").value=document.getElementById("memberids"+temp).value;
	//document.getElementById("dob").value = document.getElementById("dob"+temp).value;
	document.getElementById("hidden_ssn").value=document.getElementById("ssn"+temp).value;
	document.getElementById("grpno").value=document.getElementById("grpno"+temp).value;
	document.getElementById("empno").value=document.getElementById("empno"+temp).value;
	document.getElementById("depno").value=document.getElementById("depno"+temp).value; 
	document.getElementById("firstname").value=document.getElementById("firstname"+temp).value;
	document.getElementById("dobdep").value = document.getElementById("dob"+temp).value;
	document.getElementById("ssn").value = document.getElementById("ssn1").value;
	
     $("#displayform").attr("action","<%=request.getContextPath()%>/adeod/adeod_showeob.action?searchall=Y");
     $("#displayform").submit();
});
$(".showprice").click(function(){

	var temp=this.id;
	temp = temp.substring(9);//获取${statu.count}
	document.getElementById("grpno").value=document.getElementById("grpno"+temp).value;
	document.getElementById("empno").value=document.getElementById("empno"+temp).value;
	document.getElementById("depno").value=document.getElementById("depno"+temp).value; 
     $("#displayform").attr("action","<%=request.getContextPath()%>/providersearch/providersearch_showppolist.action");
     $("#displayform").submit();
});

	function chooseadd(temp,str){   
	 document.getElementById("email").checked=false;
	 document.getElementById("fax").checked=false;
	 document.getElementById("infile").checked=false; 
	 document.getElementById("addform").checked=false; 
	 document.getElementById("addfile").checked=false; 

		document.getElementById("submethodinfo").value="0";
		var tt=str.id;
		var val=tt.split(",");
		var ssn=val[1];
		var altid=val[2];
		var memid=val[3];
		var grpno=val[4];
		var empno=val[5];
		var depno=val[6];
	 
		document.getElementById("hidden_ssn").value=ssn; 
		document.getElementById("hidden_altid").value=altid; 
		document.getElementById("memberID").value=memid;
		document.getElementById("grpno").value=grpno; 
		document.getElementById("empno").value=empno; 
		document.getElementById("depno").value=depno;
			/*document.getElementById("email").disabled=false;  
			document.getElementById("emailaddress").disabled=false;   
			document.getElementById("fax").disabled=false;  
			document.getElementById("faxnumber").disabled=false; 
			document.getElementById("email").checked=true;  
			document.getElementById("addform").checked=true;   
	 */
		$("#replyfrom1").find('input[type=text],select,input[type=hidden]').each(function() {
            $(this).val('');
        });
        
		$("#mess1").html('');	
		$("#mess2").html('');
		$("#mess5").html('');		
		document.getElementById("taxidnumber").disabled=true; 
		document.getElementById("replydiv1").style.display="block";
		
		document.getElementById("count").value=temp;
		
		
    	$("#advs").css("display","block");
    	$("#advs").css("width","100%");
    	$("#advs").css("height","100%");
		var tttt=getScrollTop();
    	$("#advs").css("top",tttt +"px");
    	 document.documentElement.style.overflow = 'hidden';
    	 
    //var temp=this.id;
	//var val=temp.split(",");
	//var ssn=val[0];
	//var altid=val[1];
	//var memid=val[2];
	//var grpno=val[3];
	//var empno=val[4];
	//var depno=val[5];
	//document.getElementById("hidden_ssn").value=ssn; 
	//document.getElementById("hidden_altid").value=altid; 
	//document.getElementById("memberID").value=memid;
	//document.getElementById("grpno").value=grpno; 
	//document.getElementById("empno").value=empno; 
	//document.getElementById("depno").value=depno;

	}
	
	function changeSub(str){
		var TT=str.value;
		document.getElementById("submethodinfo").value=TT;
		//alert(TT);
		if(TT==1){
			//document.getElementById("email").disabled=false;  
			//document.getElementById("emailaddress").disabled=false;   
			//document.getElementById("fax").disabled=false;  
			//document.getElementById("faxnumber").disabled=false; 
			//document.getElementById("email").checked=true;  
			
		//	$(".replydiv").css("display","none");
		//	$(".replydiv1").css("display","block"); 
		document.getElementById("taxidnumber").disabled=true; 
		$(".taxiddiv").css("display","none");
		}else if(TT==0){
			//document.getElementById("email").disabled=true;   
			//document.getElementById("emailaddress").disabled=true;   
			//document.getElementById("fax").disabled=true;  
			//document.getElementById("faxnumber").disabled=true; 
			//document.getElementById("email").checked=false;  
			//document.getElementById("emailaddress").checked=false;   
		//	$(".replydiv").css("display","none");
		//	$(".replydiv1").css("display","none");
		//	subfilefun();
		
		$(".taxiddiv").css("display","block"); 
		document.getElementById("taxidnumber").disabled=false; 
		}
	}
	 
	function changeSubform(str){
		var TT=str.value;
		document.getElementById("submethodinfo").value=TT;
		//alert(TT);
		if(TT==0){   
			document.getElementById("faxnumber").value="";
		}else if(TT==1){ 
			document.getElementById("emailaddress").value="";
		}else if(TT==2){ 
			document.getElementById("faxnumber").value="";
			document.getElementById("emailaddress").value="";
		}
	}
	
	
	$("#submitreplyform").click(function(){
	 	var TT=document.getElementById("submethodinfo").value;
	 	
		
		
		$("#mess3").html('');
		$("#mess4").html('');
		document.getElementById("emailaddressinfo").value='';
		document.getElementById("faxnumberinfo").value='';
		var haveError = false;
		document.getElementById("methodinfo").value=$("input[name='method']:checked").val();
		var deliver_method=document.getElementById("methodinfo").value;
		var email=document.getElementById("emailaddress").value;
		var fax=document.getElementById("faxnumber").value;
		
		if(deliver_method==0){
			if(!/(\S)+[@]{1}(\S)+[.]{1}(\w)+/.test(email)) {
				$("#mess3").html('Please enter the correct e-mail address.').attr("style","color:red;font-size:85%");
			}else{
				haveError = true;
				document.getElementById("emailaddressinfo").value=document.getElementById("emailaddress").value;
				subemailfun(haveError); 
				 
			}
		}else if(deliver_method==1){
			if(!null==fax || !fax==""){
				document.getElementById("faxnumberinfo").value=document.getElementById("faxnumber").value;
				haveError = true;
     			subefuntion(haveError);
			}else{
				$("#mess4").html('Please enter the correct fax number.').attr("style","color:red;font-size:85%");
			}
		}else if(deliver_method==2){
				document.getElementById("emailaddressinfo").value='2';
				haveError = true;
     			subefuntion(haveError);
		}
					
	});
	
	
	
	$("#submitreply").click(function(){
		var TT=document.getElementById("submethodinfo").value;
		
		if(TT==0){
		 
			subfilefun();
		}
		
	//subfilefun
		$("#mess1").html('');
		$("#mess2").html('');
		document.getElementById("emailaddressinfo").value='';
		document.getElementById("faxnumberinfo").value='';
		var haveError = false;
		document.getElementById("methodinfo").value=$("input[name='method']:checked").val();

		var deliver_method=document.getElementById("methodinfo").value;
		var email=document.getElementById("emailaddress").value;
		var fax=document.getElementById("faxnumber").value;

		if(deliver_method==1){
			if(!/(\S)+[@]{1}(\S)+[.]{1}(\w)+/.test(email)) {
				$("#mess1").html('Please enter the correct e-mail address.').attr("style","color:red;font-size:85%");
			}else{
				haveError = true;
				document.getElementById("emailaddressinfo").value=document.getElementById("emailaddress").value;
			}
		}else if(deliver_method==0){
			if(!null==fax || !fax==""){
				document.getElementById("faxnumberinfo").value=document.getElementById("faxnumber").value;
				haveError = true;
			}else{
				$("#mess2").html('Please enter the correct fax number.').attr("style","color:red;font-size:85%");
			}
		}	

		var temp = document.getElementById("count").value;
		//document.getElementById("method").value=$("input[name='method']:checked").val();
		var submissionid = document.getElementById("dotype").value;
		if(submissionid=="cs" && haveError){
			document.getElementById("hidden_ssn").value=document.getElementById("ssn"+temp).value; 
			document.getElementById("hidden_altid").value=document.getElementById("idalt"+temp).value; 
			document.getElementById("memberID").value=document.getElementById("memberids"+temp).value;
			document.getElementById("grpno").value=document.getElementById("grpno"+temp).value;
			document.getElementById("empno").value=document.getElementById("empno"+temp).value;
			document.getElementById("depno").value=document.getElementById("depno"+temp).value; 
			$("#displayform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_addpatientfile.action");
	     	$("#displayform").submit();
			$("#advs").css("display","none");
    	//document.documentElement.style.overflow = 'scroll';
		}else if(haveError){
			document.getElementById("hidden_ssn").value=document.getElementById("ssn"+temp).value;
			document.getElementById("grpno").value=document.getElementById("grpno"+temp).value;
			document.getElementById("empno").value=document.getElementById("empno"+temp).value;
			document.getElementById("depno").value=document.getElementById("depno"+temp).value; 
			document.getElementById("firstname").value=document.getElementById("firstname"+temp).value; 
			document.getElementById("mi").value=document.getElementById("mi"+temp).value; 
			document.getElementById("lastname").value=document.getElementById("lastname"+temp).value; 
			document.getElementById("suffix").value=document.getElementById("suffix"+temp).value;
			//document.getElementById("dob").value=document.getElementById("dob"+temp).value;
			document.getElementById("dobdep").value=document.getElementById("dob"+temp).value;
			
			document.getElementById("gender").value=document.getElementById("gender"+temp).value;
			document.getElementById("spouse").value=document.getElementById("spouse"+temp).value;
			document.getElementById("child").value=document.getElementById("child"+temp).value;
			document.getElementById("other").value=document.getElementById("other"+temp).value;
			$("#displayform").attr("action","<%=request.getContextPath()%>/adeod/adeod_addeob.action");
     		$("#displayform").submit();
		$("#advs").css("display","none");
    	//document.documentElement.style.overflow = 'scroll';
		}
	});
	
	
	String.prototype.replaceAll = function(s1, s2) {
		return this.replace(new RegExp(s1, "gm"), s2);
	}


	$("#submitreply2").click(function(){
		$("#mess5").html('');
		var haveError = false;
		var TT=document.getElementById("submethodinfo").value;
		var submissionid = document.getElementById("dotype").value;
		var TT2=document.getElementById("taxidnumber").disabled; 
		var TT3=document.getElementById("taxidnumber").value; 
		TT3=TT3.replaceAll("-","");
			if(!TT2){
				if(null!=TT3 && TT3!="" && TT3.length==9){
					haveError = false;
				}else{
					haveError = true;
				}
			}
		
		if(haveError){
				$("#mess5").html('Please enter the correct tax number.').attr("style","color:red;font-size:85%");
		}else{
			document.getElementById("taxnumber").value=TT3; 
		
			if(TT==0 || submissionid=="cs"){
			//alert(TT3);
				subfilefun();
			}else if(TT==1){
				$("#displayform").attr("action","<%=request.getContextPath()%>/adeod/adeod_addeob.action");
	     		$("#displayform").submit();
				//$("#advs").css("display","none"); 
			}
		}
		
	});
	
	$("#cancelreply").click(function(){
		$(".replydiv").css("display","none");
		$(".replydiv1").css("display","none");
		$("#advs").css("display","none");
    	//document.documentElement.style.overflow = 'scroll';
	});
	
	$("#cancelreply2").click(function(){
		$(".replydiv").css("display","none");
		$(".replydiv1").css("display","none");
		$("#advs").css("display","none"); 
	});
</script>
<script type="text/javascript">
	  $("#goback").click(function(){
	  var r=confirm("Go back to previous page?")
  		if (r==true){
	 		//window.history.back()    advancesearch.jsp
	 		window.location.href="<%=request.getContextPath()%>/advancesearch.jsp";
	 	}
        });
       
   
 
 
function  subemailfun(haveError){

	var ssn=document.getElementById("hidden_ssn").value; 
	var altid=document.getElementById("hidden_altid").value; 
	var memid=document.getElementById("memberID").value;
	var grpno=document.getElementById("grpno").value; 
	var empno=document.getElementById("empno").value; 
	var depno=document.getElementById("depno").value;
	var email=document.getElementById("emailaddress").value;
	
 	   
	$.ajax({
 		type:"POST",
 		url:"<%=request.getContextPath()%>/claimfileimport/claimfileimport_checkemail.action",
 		data:{"hidden_ssn":ssn,"hidden_altid":altid,"hidden_memid":memid,"grpno":grpno,"empno":empno,"depno":depno,"emailaddressinfo":email},
 		cache:false,
 	    dataType:"html",
 		success:function(returndata){ 
				    if(returndata == '1'){
     				    subefuntion(haveError);
				    }else if(returndata=='0'){
				      //$('#mess3').html('"'+email+'" is not the address on file. Are you sure to email the EOB to this address?').attr("style","color:red");
				   		var r=confirm("'"+email+"' is not the address on file. Are you sure to email the EOB to this address?");
				  		if (r==true){
     				   		   subefuntion(haveError);
					 	}
				   }else{
				    	//$('#mess3').html('Are you sure to email the EOB to "'+email+'"?').attr("style","color:red");
				    	var r=confirm("Are you sure to email the EOB to '"+email+"' ?");
				  		if (r==true){
     				   		   subefuntion(haveError);
					 	}
				    }
			   
			 }
 	});
 
 	
}


function  subefuntion(haveError){
		var temp = document.getElementById("count").value;
		//document.getElementById("method").value=$("input[name='method']:checked").val();
		var submissionid = document.getElementById("dotype").value;
		if(submissionid=="cs" && haveError){
			document.getElementById("hidden_ssn").value=document.getElementById("ssn"+temp).value; 
			document.getElementById("hidden_altid").value=document.getElementById("idalt"+temp).value; 
			document.getElementById("memberID").value=document.getElementById("memberids"+temp).value;
			document.getElementById("grpno").value=document.getElementById("grpno"+temp).value;
			document.getElementById("empno").value=document.getElementById("empno"+temp).value;
			document.getElementById("depno").value=document.getElementById("depno"+temp).value; 
			
		document.getElementById("replydiv").style.display="block";
		document.getElementById("replydiv1").style.display="none";
			//$("#displayform").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_addpatientfile.action");
	     	//$("#displayform").submit();
			//$("#advs").css("display","none");
    	//document.documentElement.style.overflow = 'scroll';
		}else if(haveError){
			document.getElementById("hidden_ssn").value=document.getElementById("ssn"+temp).value;
			document.getElementById("grpno").value=document.getElementById("grpno"+temp).value;
			document.getElementById("empno").value=document.getElementById("empno"+temp).value;
			document.getElementById("depno").value=document.getElementById("depno"+temp).value; 
			document.getElementById("firstname").value=document.getElementById("firstname"+temp).value; 
			document.getElementById("mi").value=document.getElementById("mi"+temp).value; 
			document.getElementById("lastname").value=document.getElementById("lastname"+temp).value; 
			document.getElementById("suffix").value=document.getElementById("suffix"+temp).value;
			//document.getElementById("dob").value=document.getElementById("dob"+temp).value;
			document.getElementById("dobdep").value=document.getElementById("dob"+temp).value;
			
			document.getElementById("gender").value=document.getElementById("gender"+temp).value;
			document.getElementById("spouse").value=document.getElementById("spouse"+temp).value;
			document.getElementById("child").value=document.getElementById("child"+temp).value;
			document.getElementById("other").value=document.getElementById("other"+temp).value;
			
		document.getElementById("replydiv").style.display="block";
		document.getElementById("replydiv1").style.display="none";
			//$("#displayform").attr("action","<%=request.getContextPath()%>/adeod/adeod_addeob.action");
     		//$("#displayform").submit();
		//$("#advs").css("display","none");
    	//document.documentElement.style.overflow = 'scroll';
		}
	}
  
	</script>  
</html>
