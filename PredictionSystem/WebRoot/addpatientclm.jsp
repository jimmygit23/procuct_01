<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ include file="/common/commons.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
					
					
											
					<div id="spanID" style="margin-top:20px;">
						<font style="color:red;font-size:14px;font-family:arial">
							<span id="messdt1"></span><span id="messdt2"></span>
							<span id="messdt3"></span><span id="messdt4"></span>
							<span id="mess1"></span><span id="mess2"></span>
							<span id="mess3"></span><span id="mess4"></span>
							<span id="mess5"></span><span id="mess6"></span>
							<span id="mess7"></span><span id="mess8"></span>
							<span id="mess9"></span><span id="mess10"></span>
							<span id="mess11"></span><span id="mess12"></span>
							<span id="mess13"></span>
							<span id="mess14"></span><span id="mess15"></span>
							<span id="mess16"></span><span id="mess17"></span>
							<span id="mess18"></span><span id="mess19"></span>
							<span id="mess20"></span><span id="mess21"></span>
							<span id="mess22"></span><span id="mess23"></span>
							<span id="mess24"></span><span id="mess25"></span>
							<span id="mess26"></span>
						</font>
					</div>						
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
											<!---------------------------addstatus --------------------------->
												<br><br><div id="addstatus" name="addstatus"></div><br><br>
											<!---------------------------detail Line ------------------------->
								<div>
									<div style="float:left;width:1200px;position:absolute;">
									  <form name="form2" id="form2" method="post" action="">
										<table cellspacing="1" cellpadding="3" width="1150" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="6">
													<font class="font_white_bold16">Advanced EOB Request form</font>
												</th>
											</tr>
											
											
											<tr>
												<td class="tdclass6_1" colspan="4"><!-- 1.  Type<br>
																						<select  name="adveob1" id="adveob1" class="input001_1" style="background:#DCDCDC;">
																						<option value="HCFA">HCFA</option>
																						<option value="UB">UB</option>
																						<option value="DETAL">DETAL</option>
																						<option value="other">other</option>
																						</select>-->
											
												</td>
												<td class="tdclass6_1" colspan="2">1a.  <!--INSURED'S I.D. NUMBER
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
												INSURED'S M.D. NUMBER  <br>
												    <!-- 
													<input type="text" name="adveob" id="adveob1a"  value="<%=(String) request.getAttribute("hidden_ssn") %>" size="20" class="">
													&nbsp;&nbsp;&nbsp;&nbsp; -->
													<input type="hidden" name="adveob" id="adveob1a"  value="${insuredobj.ssn }" size="20" class="">
													<s:if test="insuredobj.idalt == null">
													  <s:set name="group_number" value="('00000'+grpno).substring(('00000'+grpno).length()-5)"></s:set>
													  <s:set name="employee_number" value="('00000'+ empno).substring(('00000'+ empno).length()-5)"></s:set>
													  <s:set name="dependent_number" value="'00'"></s:set>
													  <input type="text" name="adveob" id="adveob1a1" value="${group_number}${employee_number}${dependent_number }" size="20" class="input001_1">
													</s:if>
													<s:else>
													   <input type="text" name="adveob" id="adveob1a1" value="${insuredobj.idalt }" size="20" class="input001_1">
													</s:else>
													
												</td>
											</tr>
											<tr>
												<td class="tdclass6_1" colspan="2">2. PATIENT'S NAME (Last Name, Middle, First Name,Suffix Initial ) <br>
												<input type="text" name="adveob" id="adveob2" class="input001_1" value="${lastname}">
												<input type="text" name="adveob" id="adveob2a" class="input001_1" value="${mi}">
												<input type="text" name="adveob" id="adveob2b" class="input001_1" value="${firstname}">
												<input type="text" name="adveob" id="adveob2c" class="input001_1" value="${suffix}">
												</td>
												<td class="tdclass6_1" colspan="2">
													<span class="messdt1">3. PATIENT'S BIRTH DATE</span> <br>
													<input type="text" name="adveob" id="adveob3" value="${dob }" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id)"  style="background:#DCDCDC;">
													<span style="color: #888" id="dobSpan1">mm/dd/yyyy</span>
													<br/>
													Sex
													<br/>
													<select  name="adveob" id="adveob3a" class="input001_1" style="background:#DCDCDC;"> 
														<option value="M" <c:if test="${gender eq 'M'}">selected</c:if>>Male</option>
														<option value="F" <c:if test="${gender eq 'F'}">selected</c:if>>Female</option>
													</select>
												</td>
												<td class="tdclass6_1" colspan="2">4. INSURED'S NAME (Last Name, Middle, First Name,Suffix Initial) <br>
												<input type="text" name="adveob" id="adveob4" class="input001_1" value="${insuredobj.lastname}">
												<input type="text" name="adveob" id="adveob4a" class="input001_1" value="${insuredobj.mi}">
												<input type="text" name="adveob" id="adveob4b" class="input001_1" value="${insuredobj.firstname}">
												<input type="text" name="adveob" id="adveob4c" class="input001_1" value="${insuredobj.suffix}">
												</td>
											</tr>
											<tr>
												<td class="tdclass6_1" colspan="2"><!-- 5. PATIENT'S ADDRESS (No. Street) <br><input type="text" name="adveob" id="adveob5" size="50" class=""> -->
												</td>
												<td class="tdclass6_1" colspan="2">6. PATIENT RELATIONSHIP TO INSURED <br> 
																						<select  name="adveob" id="adveob6" class="input001_1" style="background:#DCDCDC;"> 
																						  <option value="18">Self</option>
																						  <option value="01" <c:if test="${spouse eq 'T'}">selected</c:if>>Spouse</option>
																						  <option value="19" <c:if test="${child eq 'T'}">selected</c:if>>Child</option>
																						  <option value="20" <c:if test="${other eq 'T'}">selected</c:if>>Other</option>
																						</select>
												
												</td>
												<td class="tdclass6_1" colspan="2"><!-- 7. INSURED'S ADDRESS (No. Street) <br><input type="text" name="adveob" id="adveob7" size="50" class="">-->
												</td>
											</tr>
											
											<!-- 2X2 -->
											<tr>
												<td class="tdclass6_1"  > <!-- CITY <br><input type="text" name="adveob" id="adveob5a"  size="25"  class="">-->
												</td>
												<td class="tdclass6_1"  > <!-- STATE <br>
													<select  name="adveob" id="adveob5b" class="input001_1" style="background:#DCDCDC;"> 
																						<option value="IA">IA</option>
																						<option value=""></option>
																						<option value=""></option>
																						<option value="">other</option>
																						</select>-->
												</td>
												<td class="tdclass6_1" colspan="2" rowspan="2"><!-- 8. RESERVED FOR NUCC USE <br><input type="text" name="adveob" id="adveob8"  size="40"  class="">-->
												</td>
												<td class="tdclass6_1"  > <!-- CITY <br><input type="text" name="adveob" id="adveob7a" size="25"  class="">-->
												</td>
												<td class="tdclass6_1"  > <!-- STATE <br>
													<select  name="adveob" id="adveob7b" class="input001_1" style="background:#DCDCDC;"> 
																						<option value="IA">IA</option>
																						<option value=""></option>
																						<option value=""></option>
																						<option value="">other</option>
																						</select>-->
												</td>
											</tr>
											<tr>
												<td class="tdclass6_1"  > <!-- ZIP CODE <br><input type="text" name="adveob" id="adveob5c"   size="25"   class="">-->
												</td>
												<td class="tdclass6_1"  ><!--  TELEPHONE <br><input type="text" name="adveob" id="adveob5d"  size="25"  class="">-->
												</td>
												<!--<td class="tdclass6_1" colspan="2"> ZIP CODE <input type="text" name="" id="" class="input001_1">
												</td>-->
												<td class="tdclass6_1"  ><!--  ZIP CODE <br><input type="text" name="adveob" id="adveob7c" size="25"  class="">-->
												</td>
												<td class="tdclass6_1"  > <!-- TELEPHONE <br><input type="text" name="adveob" id="adveob7d" size="25"  class="">-->
												</td>
											</tr>
											<!-- 2X2 -->
											
											
											<!-- 2X4 -->
											<tr> 
												<td class="tdclass6_1" colspan="2">9. OTHER INSURED's NAME (<span class="mess1">Last Name</span>, <span class="mess2">Middle</span>, <span class="mess3">First Name</span>,<span class="mess4">Suffix Initial</span>) <br>
														<input type="text" name="adveob" id="adveob9" class="input001_1">
														<input type="text" name="adveob" id="adveob91" class="input001_1">
														<input type="text" name="adveob" id="adveob92" class="input001_1">
														<input type="text" name="adveob" id="adveob93" class="input001_1">
												</td>
												<td class="tdclass6_1" colspan="2" rowspan="4">10.  IS PATIENT'S CONDITION RELATED TO:
												<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employment? 
												<select  name="adveob" id="adveob10a" class="input001_1" style="background:#DCDCDC;">
												                                        <option value=""></option> 
																						<option value="Y">Yes</option>
																						<option value="N" selected>No</option>
																						</select>
												<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Auto Accident? 
												<select  name="adveob" id="adveob10b" class="input001_1" style="background:#DCDCDC;"> 
																						<option value=""></option>
																						<option value="Y">Yes</option>
																						<option value="N" selected>No</option>
																						</select>
												<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Auto Accident State
												<select  name="adveob" id="adveob10b1" class="input001_1" style="background:#DCDCDC;"> 
																						<option value=""></option>
																						<option value="Y">Yes</option>
																						<option value="N">No</option>
																						</select>
												<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Accident?
												<select  name="adveob" id="adveob10c" class="input001_1" style="background:#DCDCDC;"> 
																						<option value=""></option>
																						<option value="Y">Yes</option>
																						<option value="N" selected>No</option>
																						</select>
												<br>  
												<td class="tdclass6_1" colspan="2"><span class="mess6">11. INSURED'S POLICY GROUP OR FECA NUMBER</span> <br><input type="text" name="adveob" id="adveob11" value="${grpno }"  size="25"  class="input001_1">
												</td>
											</tr>
											<tr> 
												<td class="tdclass6_1" colspan="2"><span class="mess5">9a. OTHER INSURED's POLICY OR GROUP NUMBER</span> <br><input type="text" name="adveob" id="adveob9a"  size="25"  class="input001_1">
												</td>
												<td class="tdclass6_1" colspan="2">
													<span class="messdt3">11a. INSURED'S BIRTH DATE</span> <br>
													<input type="text" name="adveob" id="adveob11a" value="<fmt:formatDate value='${insuredobj.dob }' pattern='MM/dd/yyyy'/>" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);" class="input001_1" style="background:#DCDCDC;">
													<span style="color: #888" id="dobSpan3">mm/dd/yyyy</span>
													<br>Sex<br>
													<select  name="adveob" id="adveob11a1" class="input001_1" style="background:#DCDCDC;"> 
													    <option value="M" <c:if test="${insuredobj.gender eq 'M'}">selected</c:if>>Male</option>
														<option value="F" <c:if test="${insuredobj.gender eq 'F'}">selected</c:if>>Female</option>
													</select>
												</td>
											</tr>
											<tr> 
												<td class="tdclass6_1" colspan="2"><span class="messdt2">9b. OTHER INSURED'S BIRTH DATE</span> <br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="adveob" id="adveob9b"  size="10"  class="input001_1" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);" style="background:#DCDCDC;">
												<span style="color: #888" id="dobSpan2">mm/dd/yyyy</span>
												<br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex<br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select  name="adveob" id="adveob9b1" class="input001_1" style="background:#DCDCDC;"> 
																						<option value=""></option>
																						<option value="M">Male</option>
																						<option value="F">Female</option>
																						</select>
												</td>
												<td class="tdclass6_1" colspan="2"><!-- 11b.  OTHER CLAIM ID (Designated by NUCC) <br><input type="text" name="adveob" id="adveob11b"  size="25" class=""> -->
												</td>
											</tr>
											<tr> 
												<td class="tdclass6_1" colspan="2"><!-- 9c. RESERVED FOR NUCC USE <br><input type="text" name="adveob" id="adveob9c"  size="25" class=""> -->
												</td>
												<td class="tdclass6_1" colspan="2"><span class="mess7">11c.  INSURANCE PLAN NAME OR PROGRAM NAME</span> <br><input type="text" name="adveob" id="adveob11c" size="25" class="input001_1">
												</td>
											</tr>
											<!-- 2X4 -->
											
											<tr>
												<td class="tdclass6_1" colspan="2"><span class="mess8">9d. OTHER INSURANCE PLAN NAME OR PROGRAM NAME</span> <br><input type="text" name="adveob" id="adveob9d"  size="25" class="input001_1">
												</td>
												<td class="tdclass6_1" colspan="2">
												<span class="messdt4">10d.  Accident Date</span><br>
												<input type="text" name="adveob" id="adveob10d" class="input001_1" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);" style="background:#DCDCDC;">
												<span style="color: #888" id="dobSpan4">mm/dd/yyyy</span>
												</td>
												<td class="tdclass6_1" colspan="2">11d.  IS THERE ANOTHER HEALTH BENEFIT PLAN? <br>
																						<select  name="adveob" id="adveob11d" class="input001_1" style="background:#DCDCDC;"> 
																						<option value=""></option>
																						<option value="Y">Yes</option>
																						<option value="N">No</option>
																						</select> 
												</td>
											</tr>
											<tr>
												<td class="tdclass6_1" colspan="4"><span class="mess9">12. PATIENT'S OR AUTHORIZED PERSON'S SIGNATURE</span> <br>
														  <!-- <input type="text" name="adveob" id="adveob12" placeholder="Release of Information Code" class="input001_1" onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);" style="width:190px;color:#dcdcdc;"> -->
														  <select id="adveob12" name="adveob" class="input001_1" style="background:#DCDCDC;width:400px;">
														  	<option value="A">Appropriate Release of Information on File at Health Care Service Provider or at Utilization Review Organization</option>
														  	<option value="I">Informed Consent to Release Medical Information for Conditions or Diagnoses Regulated by Federal Statutes</option>
														  	<option value="M">The Provider has Limited or Restricted Ability to Release Data Related to a Claim</option>
														  	<option value="N">No, Provider is Not Allowed to Release Data</option>
														  	<option value="O">On file at Payor or at Plan Sponsor</option>
														  	<option value="Y">Yes, Provider has a Signed Statement Permitting Release of Medical Billing Data Related to a Claim</option>
														  </select>&nbsp;&nbsp;&nbsp;&nbsp;
														<!-- Date&nbsp;&nbsp;<input type="text" name="adveob" id="adveob12a" class="input001_1" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);" >-->
												</td>
												<td class="tdclass6_1" colspan="2"><span class="mess10">13. INSURED'S OR AUTHORIZED PERSON'S SIGNATURE</span> <br>
															  <input type="text" name="adveob" id="adveob13"  class="input001_1" style="width:270px;color:#dcdcdc;" placeholder="Benefits Assignment Certification Indicator" onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);">
												</td>
											</tr>
											<!-- <tr>
												<td class="tdclass6_1" colspan="2">14. DATE OF CURRENT ILLNESS, INJURY, or PREGNANCY (LMP) <br>
												<input type="text" name="adveob" id="adveob14" class="input001_1" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
												<select  name="adveob" id="adveob14a" class="input001_1" style="background:#DCDCDC;"> 
																						<option value="431">431 - Onset</option>
																						<option value=""></option>
																						</select> 
												</td>
												<td class="tdclass6_1" colspan="2">15. OTHER DATE <br>
												<select  name="adveob" id="adveob15a" class="input001_1" style="background:#DCDCDC;"> 
																						<option value="439">439 - Accident</option>
																						<option value=""></option>
																						</select> <br>
												<input type="text" name="adveob" id="adveob15" class="input001_1" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
												</td>
												<td class="tdclass6_1" colspan="2">16. DATES PATIENT UNABLE TO WORK IN CURRENT OCCUPATION <br>
												<input type="text" name="adveob" id="adveob16" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
												&nbsp;&nbsp;TO&nbsp;&nbsp;
												<input type="text" name="adveob" id="adveob16a" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
												</td>
											</tr>-->
											<tr>
												<td class="tdclass6_1" colspan="2"><span class="mess11">17. NAME OF REFERRING PROVIDER OR OTHER SOURCE</span> <br>
																						<!-- <select  name="adveob" id="adveob17" class="input001_1" style="background:#DCDCDC;"  onfocus="defaultchosedate();"> 
																						<option value="DN">DN - Referring Provider</option>
																						<option value=""></option>
																						</select> <br><br>-->
																						<input type="text" name="adveob" id="adveob17_1" class="input001_1"  placeholder="Last Name" class=" " onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);"  style="color:#dcdcdc;">
																						<input type="text" name="adveob" id="adveob17_2" class="input001_1" placeholder="Middle" class=" " onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);"   style="color:#dcdcdc;">
																						<input type="text" name="adveob" id="adveob17_3" class="input001_1" placeholder="First Name" class=" " onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);"   style="color:#dcdcdc;">
																						<input type="text" name="adveob" id="adveob17_4" class="input001_1" placeholder="Suffix" class=" " onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);"  style="color:#dcdcdc;">
												</td>
												<td class="tdclass6_1" colspan="2">
													<!-- 17a. 
													&nbsp;&nbsp;<input type="text" name="adveob" id="adveob17a" size="2" class=" ">
													&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="adveob" id="adveob17a1" class="input001"><br> <br> -->
													<span class="mess16">17b.&nbsp;&nbsp;NPI</span>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
													<input type="text" name="adveob" id="adveob17b" class="input001_1"><br>
												</td>
												<td class="tdclass6_1" colspan="2"><!-- 18.HOSPITALIZATION DATES RELATED TO CURRENT SERVICES TO  <br>
																					<input type="text" name="adveob" id="adveob18" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
																					&nbsp;&nbsp;TO&nbsp;&nbsp;
																					<input type="text" name="adveob" id="adveob18a" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
																					-->
												</td>
											</tr>
											<!-- <tr>
												<td class="tdclass6_1" colspan="4">19. ADDITIONAL CLAIM INFORMATION (Designated by NUCC) <br><input type="text" name="adveob" id="adveob19" size="80"  onfocus="defaultchosedate();" class="">
												</td>
												<td class="tdclass6_1" colspan="1">20. OUTSIDE LAB? <br> 
																						<select  name="adveob" id="adveob20" class="input001_1" style="background:#DCDCDC;"> 
																						<option value="Y">Yes</option>
																						<option value="N">No</option>
																						</select>
												</td>
												<td class="tdclass6_1" colspan="1"> $ CHARGES <br><input type="text" name="adveob" id="adveob20a" size="20" class="">
												</td>
											</tr>-->
											
											
											<tr>
												<td class="tdclass6_1" colspan="4" rowspan="2"><span class="mess17"><span class="mess20">21. DIAGNOSIS OR NATURE OF ILLNESS OR INJURY</span>
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																						ICD Ind.
																						<select  name="adveob" id="adveob21" class="input001_1" style="background:#DCDCDC;"> 
																						<option value="ICD10">ICD - 10</option>
																						<option value=""></option>
																						</select>
												<br><br>
												&nbsp;&nbsp;A.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21A" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												B.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21B" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												C.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21C" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												D.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21D" class="input001_1">
												<br><br>
												&nbsp;&nbsp;E.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21E" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												F.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21F" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												G.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21G" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												H.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21H" class="input001_1">
												<br><br>
												&nbsp;&nbsp;I.&nbsp;&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21I" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												J.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21J" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												K.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21K" class="input001_1">
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												L.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21L" class="input001_1">
												<br><br>
												</td>
												<td class="tdclass6_1" colspan="1"><!-- 22. RESUBMISSION CODE <br><input type="text" name="adveob" id="adveob22" size="s20" class="">-->
												</td>
												<td class="tdclass6_1" colspan="1"><!--  ORIGINAL REF. NO. <br><input type="text" name="adveob" id="adveob22a" size="s20" class="">-->
												</td>
											</tr>
											<tr>
												<td class="tdclass6_1" colspan="2">23.  PRIOR AUTHORIZATION NUMBER <br><input type="text" name="adveob" id="adveob23" size="20" class="input001_1" >
												</td>
											</tr>
											
											<!---------------------------detail Line --------------------------->
											<tr>
												<td class="tdclass6_1" colspan="6">
												<div id="addlines" name="addlines" ></div>
												&nbsp;&nbsp;&nbsp;<input type="button" id="addLinebutton" name="addLinebutton" value="Add Line" class="button_3">
												<input type="button" id="delLinebutton" name="delLinebutton" value="Delete Line" class="button_3">
												<br><br></td>
											</tr>
											<!---------------------------detail Line --------------------------->
											
											
											<tr>
												<td class="tdclass6_1" colspan="2">25. FEDERAL TAX I.D. NUMBER <font color="red">(Required)</font><br>
												<input type="text" name="adveob" id="adveob25" SIZE="20" class="input001_1">
																						<!-- <select  name="adveob" id="adveob25a" class="input001_1" style="background:#DCDCDC;"> 
																						<option value="EIN">EIN</option>
																						<option value=""></option>
																						</select>-->
												<br><br>
												</td>
												<td class="tdclass6_1" colspan="1">26. PATIENT'S ACCOUNT NO. <br><input type="text" name="adveob" id="adveob26" class="input001_1"><br><br>
												</td>
												<td class="tdclass6_1" colspan="1">27. ACCEPT ASSIGNMENT? <br>
																						<select  name="adveob" id="adveob27" class="input001_1" style="background:#DCDCDC;"> 
																						<option value=""></option>
																						<option value="Y">Yes</option>
																						<option value="N">No</option>
																						</select> <br><br>
												</td>
												<td class="tdclass6_1" colspan="2">28.  TOTAL CHARGE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--29. AMOUNT PAID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --><!-- 30. Rsvd for NUCC Use--><br>
												
												$&nbsp;<input type="text" name="adveob" id="adveob28" class="input001_1" value="0.00">
												<!--&nbsp;&nbsp;&nbsp;&nbsp;$&nbsp;<input type="text" name="adveob" id="adveob29" class="input001_1" value="0.00"> -->
												<!-- &nbsp;&nbsp;&nbsp;&nbsp;$&nbsp;<input type="text" name="adveob" id="adveob30" class="input001_1">--><br><br>
												</td> 
											</tr>
											<tr>
												<td class="tdclass6_1" colspan="2"  ><span class="mess12">31. ORDERING PHYSICIAN </span>
												                                    
																					<br><br><span class="mess22">NPI</span> <input type="text" name="adveob" id="adveob32npi" size="20" class="input001_1">
																					<br><br><input type="text" name="adveob" id="adveob31" class="input001_1" placeholder="Fname" onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);" style="color:#dcdcdc;">
																					<input type="text" name="adveob" id="adveob31_1" class="input001_1" placeholder="Middle" onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);" style="color:#dcdcdc;">
																					<br><br><input type="text" name="adveob" id="adveob31_2" class="input001_1" placeholder="Lname" onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);" style="color:#dcdcdc;">
																					<input type="text" name="adveob" id="adveob31_3" class="input001_1" placeholder="Suffix" onfocus="changeStyle(this.id);" onblur="defaultStyle(this.id);" style="color:#dcdcdc;">
																					<!-- <br><br><input type="text" name="adveob" id="adveob31_4" class="input001_1" value="Date"  onfocus="changeStyle(this.id);"  onblur="defaultStyle(this.id);" style="color:#dcdcdc;" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">-->
												</td>
												<td class="tdclass6_1" colspan="2"><span class="mess13">32. SERVICE FACILITY LOCATION INFORMATION</span> 
																				<br>Name <input type="text" name="adveob" id="adveob32" class="input001_1" style="width:190px;" onfocus="defaultchosedate();"> 
																				<br><br>Address <input type="text" name="adveob" id="adveob32a" class="input001_1"  style="width:190px;" onfocus="defaultchosedate();"> 
																				<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																				<input type="text" name="adveob" id="adveob32a1"  style="width:190px;" class="input001_1" onfocus="defaultchosedate();"> 
																				<br><br>City <input type="text" name="adveob" id="adveob32b" class="input001_1" style="width:150px;" onfocus="defaultchosedate();"> 
																					<select  name="adveob" id="adveob32b1" class="input001_1"  style="width:50px;background:#DCDCDC;" onfocus="defaultchosedate();">
																						<option value=""></option>
																						<option value="AL">AL</option> 
																						<option value="AK">AK</option>
																						<option value="AZ">AZ</option>
																						<option value="AR">AR</option> 
																						<option value="CA">CA</option> 
																						<option value="CO">CO</option>
																						<option value="CT">CT</option>
																						<option value="DE">DE</option>
																						<option value="FL">FL</option> 
																						<option value="GA">GA</option>
																						<option value="HI">HI</option>
																						<option value="ID">ID</option> 
																						<option value="IL">IL</option> 
																						<option value="IN">IN</option>
																						<option value="IA">IA</option>
																						<option value="KS">KS</option> 
																						<option value="KY">KY</option> 
																						<option value="LA">LA</option>
																						<option value="ME">ME</option>
																						<option value="MD">MD</option>
																						<option value="MA">MA</option> 
																						<option value="MI">MI</option>
																						<option value="MN">MN</option>
																						<option value="MS">MS</option> 
																						<option value="MO">MO</option> 
																						<option value="MT">MT</option>
																						<option value="NE">NE</option>
																						<option value="NV">NV</option> 
																						<option value="NH">NH</option> 
																						<option value="NJ">NJ</option>
																						<option value="NM">NM</option>
																						<option value="NY">NY</option>
																						<option value="NC">NC</option> 
																						<option value="ND">ND</option>
																						<option value="OH">OH</option>
																						<option value="OK">OK</option>
																						<option value="OR">OR</option> 
																						<option value="PA">PA</option>
																						<option value="RI">RI</option>
																						<option value="SC">SC</option>
																						<option value="SD">SD</option> 
																						<option value="TN">TN</option>
																						<option value="TX">TX</option>
																						<option value="UT">UT</option>
																						<option value="VT">VT</option> 
																						<option value="VA">VA</option>
																						<option value="WA">WA</option>
																						<option value="DC">DC</option>
																						<option value="WV">WV</option> 
																						<option value="WI">WI</option>
																						<option value="WY">WY</option>
																					</select>
																				<br><br>Zip <input type="text" name="adveob" id="adveob32c" class="input001_1" style="width:150px;" onfocus="defaultchosedate();"> 
																				<!--  <br><br>Phone <input type="text" name="adveob" id="adveob32d" class="input001_1" onfocus="defaultchosedate();">-->
												</td>
												<td class="tdclass6_1" colspan="2"><span class="mess14">33.  SUBMITTER INFORMAITON</span> 
																			    <br>Name <input type="text" name="adveob" id="adveob33" class="input001_1" style="width:190px;" onfocus="defaultchosedate();"> 
																				<br><br>Contact First Name <input type="text" name="adveob" id="adveob33a" class="input001_1" style="width:150px;" onfocus="defaultchosedate();"> 
																				<br><br>Contact Last Name
																				<input type="text" name="adveob" id="adveob33a1"  style="width:150px;" class="input001_1" onfocus="defaultchosedate();"> 
																				<!-- <br><br>City:
																				<input type="text" name="adveob" id="adveob33b" class="input001_1" onfocus="defaultchosedate();">
																				
																					<select  name="adveob" id="adveob33b1" class="input001_1" style="background:#DCDCDC;" onfocus="defaultchosedate();"> 
																						<option value=""></option>
																						<option value="AL">AL</option> 
																						<option value="AK">AK</option>
																						<option value="AZ">AZ</option>
																						<option value="AR">AR</option> 
																						<option value="CA">CA</option> 
																						<option value="CO">CO</option>
																						<option value="CT">CT</option>
																						<option value="DE">DE</option>
																						<option value="FL">FL</option> 
																						<option value="GA">GA</option>
																						<option value="HI">HI</option>
																						<option value="ID">ID</option> 
																						<option value="IL">IL</option> 
																						<option value="IN">IN</option>
																						<option value="IA">IA</option>
																						<option value="KS">KS</option> 
																						<option value="KY">KY</option> 
																						<option value="LA">LA</option>
																						<option value="ME">ME</option>
																						<option value="MD">MD</option>
																						<option value="MA">MA</option> 
																						<option value="MI">MI</option>
																						<option value="MN">MN</option>
																						<option value="MS">MS</option> 
																						<option value="MO">MO</option> 
																						<option value="MT">MT</option>
																						<option value="NE">NE</option>
																						<option value="NV">NV</option> 
																						<option value="NH">NH</option> 
																						<option value="NJ">NJ</option>
																						<option value="NM">NM</option>
																						<option value="NY">NY</option>
																						<option value="NC">NC</option> 
																						<option value="ND">ND</option>
																						<option value="OH">OH</option>
																						<option value="OK">OK</option>
																						<option value="OR">OR</option> 
																						<option value="PA">PA</option>
																						<option value="RI">RI</option>
																						<option value="SC">SC</option>
																						<option value="SD">SD</option> 
																						<option value="TN">TN</option>
																						<option value="TX">TX</option>
																						<option value="UT">UT</option>
																						<option value="VT">VT</option> 
																						<option value="VA">VA</option>
																						<option value="WA">WA</option>
																						<option value="DC">DC</option>
																						<option value="WV">WV</option> 
																						<option value="WI">WI</option>
																						<option value="WY">WY</option>
																					</select>
																				
																				<br><br>Zip <input type="text" name="adveob" id="adveob33c" class="input001_1" onfocus="defaultchosedate();"> 
																				--> 
																				<br><br>Phone: <input type="text" name="adveob" id="adveob33d" class="input001_1" style="width:150px;" onfocus="defaultchosedate();">
												                                <br><br><span class="mess24">Fax: </span><input type="text" name="adveob" id="adveob33aa" style="width:180px;" value="${faxnumberinfo}" class="input001_1">
												                                <br><br><span class="mess24">Email Adress: </span><input type="text" name="adveob" id="adveob33npi" style="width:180px;" value="${emailaddressinfo}" class="input001_1">
												                                
												                                
												</td>
											</tr>
											<tr>
												<td class="tdclass6_1" colspan="1"  ><!-- a. NPI 
																					<br><input type="text" name="adveob" id="adveob31aa" size="20" class="">-->
																					</td> 
												<td class="tdclass6_1" colspan="1"  ><!-- B. 
																					<br><input type="text" name="adveob" id="adveob31bb" size="20" class="">-->
																					</td>
												<td class="tdclass6_1" colspan="1"  ><span class="mess23">a. NPI</span> 
																					<br><input type="text" name="adveob" id="adveob32aa" size="20" class="input001_1">
																					</td> 
												<td class="tdclass6_1" colspan="1"  ><!-- B. 
																					<br><input type="text" name="adveob" id="adveob32bb" size="20" class="">-->
																					</td>
												<td class="tdclass6_1" colspan="1"  ><!-- <span class="mess24">a. Fax</span>
																					<br><input type="text" name="adveob" id="adveob33aa" size="20" class=""> -->
																					</td> 
												<td class="tdclass6_1" colspan="1"  ><!-- B. 
																					<br><input type="text" name="adveob" id="adveob33bb" size="20" class="">-->
																					</td>
											</tr>
											<!-- end -->
											
											
											
									 
									    	<input type="hidden" name="hidden_ssn" id="hidden_ssn" value="<%=(String) request.getAttribute("hidden_ssn") %>" />
									        <input type="hidden" name="hidden_altid" id="hidden_altid" value="<%=(String) request.getAttribute("hidden_altid") %>" />
										
											<table width="1150">
												<tr>
													<td align="right" style="padding-top:10px;">
														<input type="button" id="updatedate" value="submit" class="button_5">
													</td>
												</tr>
											</table>
										</table>
									</form>
								</div>
									
									<div style="float:right;width:120px;">
										<font class="font_black14_arial">
											Please complete all fields of this form in order to submit an Advanced EOB request.
										</font>
									</div>
								</div>
							</td>
						</tr>
					</table>			
				</td>
			</tr>	
		</table>		
	</body>
	<script type="text/javascript">
$( "#adveob3" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});

$("#adveob3").blur(function(){
 	if(checkdate($("#adveob3"),'Date format error',$("#dobSpan1"))){
 	 	$("#dobSpan1").html('mm/dd/yyyy').attr("style","color:#888");
 	}
});

$( "#adveob9b" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});

$("#adveob9b").blur(function(){
 	if(checkdate($("#adveob9b"),'Date format error',$("#dobSpan2"))){
 	 	$("#dobSpan2").html('mm/dd/yyyy').attr("style","color:#888");
 	}
});

$("#adveob11a").datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});

$("#adveob11a").blur(function(){
 	if(checkdate($("#adveob11a"),'Date format error',$("#dobSpan3"))){
 	 	$("#dobSpan3").html('mm/dd/yyyy').attr("style","color:#888");
 	}
});

$("#adveob10d").datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});

$("#adveob10d").blur(function(){
 	if(checkdate($("#adveob10d"),'Date format error',$("#dobSpan4"))){
 	 	$("#dobSpan4").html('mm/dd/yyyy').attr("style","color:#888");
 	}
});

$("#updatedate").click(function(){ 
  var haveError = false;
 //验证信息
 //验证3. PATIENT'S BIRTH DATE
 var patbrith = $("#dobSpan1").html();
 if(patbrith == 'Date format error'){
    $("#messdt1").html("<b>3. PATIENT'S BIRTH DATE:</b> Please enter the correct date format.<br>").attr("style","color:red");
	$(".messdt1").attr("style","color:red");
	haveError = true;
 }else{
	$("#messdt1").html('').attr("style","color:black");
	$(".messdt1").attr("style","");
 }
 //验证9b. OTHER INSURED'S BIRTH DATE 
 var otherinsbrith = $("#dobSpan2").html();
 if(otherinsbrith == 'Date format error'){
    $("#messdt2").html("<b>9b. OTHER INSURED'S BIRTH DATE:</b> Please enter the correct date format.<br>").attr("style","color:red");
	$(".messdt2").attr("style","color:red");
	haveError = true;
 }else{
	$("#messdt2").html('').attr("style","color:black");
	$(".messdt2").attr("style","");
 }
 //验证11a. INSURED'S BIRTH DATE 
 var insbrith = $("#dobSpan3").html();
 if(insbrith == 'Date format error'){
    $("#messdt3").html("<b>11a. INSURED'S BIRTH DATE:</b> Please enter the correct date format.<br>").attr("style","color:red");
	$(".messdt3").attr("style","color:red");
	haveError = true;
 }else{
	$("#messdt3").html('').attr("style","color:black");
	$(".messdt3").attr("style","");
 }
 var accdate = $("#dobSpan4").html();
 if(accdate == 'Date format error'){
    $("#messdt4").html("<b>10d. Accident Date:</b> Please enter the correct date format.<br>").attr("style","color:red");
	$(".messdt4").attr("style","color:red");
	haveError = true;
 }else{
	$("#messdt4").html('').attr("style","color:black");
	$(".messdt4").attr("style","");
 }
 //var patrn = /[`~!@#$%^&*()_\-+=<>?:"{}|,.\/;\\[\]·~！@#￥%……&*（）——\-+={}|《》？：“”【】、；‘'，。、]/im;
 var patrn = /[`~!@#$%^*()_+=<>?:"{}|\/;\\[\]·~！@#￥%……&*（）——\+={}|《》？：“”【】、；‘，。、]/im;
 if(patrn.test($("#adveob9").val())){
   $("#mess1").html("<b>9. OTHER INSURED's NAME(Last Name)</b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess1").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess1").html("");
   $(".mess1").attr("style","");
 }
 
 if(patrn.test($("#adveob91").val())){
   $("#mess2").html("<b>9. OTHER INSURED's NAME(Middle)</b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess2").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess2").html("");
   $(".mess2").attr("style","");
 }
 if(patrn.test($("#adveob92").val())){
   $("#mess3").html("<b>9. OTHER INSURED's NAME(First Name)</b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess3").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess3").html("");
   $(".mess3").attr("style","");
 }
 if(patrn.test($("#adveob93").val())){
   $("#mess4").html("<b>9. OTHER INSURED's NAME(Suffix Initial)</b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess4").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess4").html("");
   $(".mess4").attr("style","");
 }
 if(patrn.test($("#adveob9a").val())){
   $("#mess5").html("<b>9a. OTHER INSURED's POLICY OR GROUP NUMBER</b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess5").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess5").html("");
   $(".mess5").attr("style","");
 }
 if(patrn.test($("#adveob11").val())){
   $("#mess6").html("<b>11. INSURED'S POLICY GROUP OR FECA NUMBER </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess6").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess6").html("");
   $(".mess6").attr("style","");
 }
 if(patrn.test($("#adveob11c").val())){
   $("#mess7").html("<b>11c. INSURANCE PLAN NAME OR PROGRAM NAME </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess7").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess7").html("");
   $(".mess7").attr("style","");
 }
 if(patrn.test($("#adveob9d").val())){
   $("#mess8").html("<b>9d. OTHER INSURANCE PLAN NAME OR PROGRAM NAME </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess8").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess8").html("");
   $(".mess8").attr("style","");
 }
 if(patrn.test($("#adveob12").val())){
   $("#mess9").html("<b>12. PATIENT'S OR AUTHORIZED PERSON'S SIGNATURE </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess9").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess9").html("");
   $(".mess9").attr("style","");
 }
 if(patrn.test($("#adveob13").val())){
   $("#mess10").html("<b>13. INSURED'S OR AUTHORIZED PERSON'S SIGNATURE </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess10").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess10").html("");
   $(".mess10").attr("style","");
 }
 if(patrn.test($("#adveob17_1").val()) || patrn.test($("#adveob17_2").val()) || patrn.test($("#adveob17_3").val()) || patrn.test($("#adveob17_4").val())){
   $("#mess11").html("<b>17. NAME OF REFERRING PROVIDER OR OTHER SOURCE </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess11").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess11").html("");
   $(".mess11").attr("style","");
 }
 if(patrn.test($("#adveob31").val()) || patrn.test($("#adveob31_1").val()) || patrn.test($("#adveob31_2").val()) || patrn.test($("#adveob31_3").val())){
   $("#mess12").html("<b>31. PHYSICIAN SIGNATURE </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess12").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess12").html("");
   $(".mess12").attr("style","");
 }
 if(patrn.test($("#adveob32").val())){
   $("#mess13").html("<b>32. SERVICE FACILITY LOCATION INFORMATION  </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess13").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess13").html("");
   $(".mess13").attr("style","");
 }
 if(patrn.test($("#adveob33").val())){
   $("#mess14").html("<b>33. BILLING PROVIDER INFORMATION   </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess14").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess14").html("");
   $(".mess14").attr("style","");
 }
 if(patrn.test($("#adveob17b").val())){
   $("#mess16").html("<b>17b.   NPI</b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess16").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess16").html("");
   $(".mess16").attr("style","");
 }
 if(patrn.test($("#adveob21A").val()) || patrn.test($("#adveob21B").val()) || patrn.test($("#adveob21C").val()) || patrn.test($("#adveob21D").val()) ||
    patrn.test($("#adveob21E").val()) || patrn.test($("#adveob21F").val()) || patrn.test($("#adveob21G").val()) || patrn.test($("#adveob21H").val()) ||
    patrn.test($("#adveob21I").val()) || patrn.test($("#adveob21J").val()) || patrn.test($("#adveob21K").val()) || patrn.test($("#adveob21L").val())){
   $("#mess17").html("<b>21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(A-L) </b> Cannot contain special characters.<br>").attr("style","color:red");
   $(".mess17").attr("style","color:red");
   haveError = true;
 }else{
   $("#mess17").html("");
   $(".mess17").attr("style","");
 }
 //验证25. FEDERAL TAX I.D. NUMBER必填项及有值的情况下必须为9位数字
 if($("#adveob25").val() == null || $("#adveob25").val().trim() == ""){
    $("#mess15").html("<b>25. FEDERAL TAX I.D. NUMBER:</b> Required.<br>").attr("style","color:red");
    haveError = true;
 }else{
   //验证有值的情况下必须为9位数字
   var isnumber = /^\d+$/.test($("#adveob25").val());
   if(!isnumber){
       haveError = true;
       $("#mess15").html("<b>25. FEDERAL TAX I.D. NUMBER:</b> Must be 9 digits.<br>").attr("style","color:red");
   }else{
      if($("#adveob25").val().length != 9){
        haveError = true;
        $("#mess15").html("<b>25. FEDERAL TAX I.D. NUMBER:</b> Must be 9 digits.<br>").attr("style","color:red");
      }else{
        $("#mess15").html("");
      }
   }
      
 }
 //验证31.npi的10位有效数字
 if($("#adveob32npi").val() != null && $("#adveob32npi").val() != ""){
   var isnumber = /^\d+$/.test($("#adveob32npi").val());
   if(!isnumber){
       haveError = true;
       $("#mess22").html("<b>31. NPI:</b> Must be 10 digits.<br>").attr("style","color:red");
       $(".mess22").attr("style","color:red");
   }else{
      if($("#adveob32npi").val().length != 10){
        haveError = true;
        $("#mess22").html("<b>31. NPI:</b> Must be 10 digits.<br>").attr("style","color:red");
        $(".mess22").attr("style","color:red");
      }else{
        $("#mess22").html("");
        $(".mess22").attr("style","");
      }
   }
 }else{
   $("#mess22").html("");
   $(".mess22").attr("style","");
 }
 //验证32.npi的10位有效数字
 if($("#adveob32aa").val() != null && $("#adveob32aa").val() != ""){
   var isnumber = /^\d+$/.test($("#adveob32aa").val());
   if(!isnumber){
       haveError = true;
       $("#mess23").html("<b>32. NPI:</b> Must be 10 digits.<br>").attr("style","color:red");
       $(".mess23").attr("style","color:red");
   }else{
      if($("#adveob32aa").val().length != 10){
        haveError = true;
        $("#mess23").html("<b>32. NPI:</b> Must be 10 digits.<br>").attr("style","color:red");
        $(".mess23").attr("style","color:red");
      }else{
        $("#mess23").html("");
        $(".mess23").attr("style","");
      }
   }
 }else{
   $("#mess23").html("");
   $(".mess23").attr("style","");
 }
 //验证33.npi的10位有效数字
 /*
 if($("#adveob33aa").val() != null && $("#adveob33aa").val() != ""){
   var isnumber = /^\d+$/.test($("#adveob33aa").val());
   if(!isnumber){
       haveError = true;
       $("#mess24").html("<b>33. NPI:</b> Must be 10 digits.<br>").attr("style","color:red");
       $(".mess24").attr("style","color:red");
   }else{
      if($("#adveob33aa").val().length != 10){
        haveError = true;
        $("#mess24").html("<b>33. NPI:</b> Must be 10 digits.<br>").attr("style","color:red");
        $(".mess24").attr("style","color:red");
      }else{
        $("#mess24").html("");
        $(".mess24").attr("style","");
      }
   }
 }else{
   $("#mess24").html("");
   $(".mess24").attr("style","");
 }
 */
 //验证24 B.POS所填信息是否在表中存在
 var total = document.getElementById("linestotal").value;
 var errorline = 0;
 var isbreak = 0;
 for(var ii=1;ii<=parseInt(total);ii++){
   var posval = document.getElementById("POS"+ii).value;
   if(posval != null && posval.trim() != ""){
      errorline = ii;
        $.ajax({
		    type:"POST",
		    url:"<%=request.getContextPath()%>/adeod/adeod_searchPos.action",
			data:{"pos":posval.trim()},
			cache:false,
			async: false,
			dataType:"html",
			success:function(data){
				if(null == data || data == ""){
					haveError = true;
					$("#mess21").html("<b>24-B.POS-"+errorline+"</b> missing or improperly formatted.<br>").attr("style","color:red");
                    $(".mess21").attr("style","color:red");
                    isbreak = 1;
				}else if(data == "NaN"){
				    $("#mess21").html("<b>24-B.POS-"+errorline+"</b> missing or improperly formatted.<br>").attr("style","color:red");
                    $(".mess21").attr("style","color:red");
				}else{
				    $("#mess21").html("");
                    $(".mess21").attr("style","");
				}
			}
		});
   }
   if(isbreak == 1){
      break;
   }
 }
 //验证24 C.PROC所填信息是否在表中存在
 //var total = document.getElementById("linestotal").value;
 errorline = 0;
 isbreak = 0;
 for(var ii=1;ii<=parseInt(total);ii++){
   var procval = document.getElementById("PROC"+ii).value;
   if(procval != null && procval.trim() != ""){
      errorline = ii;
        $.ajax({
		    type:"POST",
		    url:"<%=request.getContextPath()%>/adeod/adeod_searchProccd.action",
			data:{"proccd":procval.trim()},
			cache:false,
			async: false,
			dataType:"html",
			success:function(data){
				if(null == data || data == ""){
					haveError = true;
					$("#mess18").html("<b>24-C.PROC-"+errorline+"</b> missing or improperly formatted.<br>").attr("style","color:red");
                    $(".mess18").attr("style","color:red");
                    isbreak = 1;
				}else{
				    $("#mess18").html("");
                    $(".mess18").attr("style","");
				}
			}
		});
   }
   if(isbreak == 1){
      break;
   }
 }
 //验证24 D.MODIFIER所填信息是否在表中存在
 errorline = 0;
 isbreak = 0;
 var modcd = "";
 for(var ii=1;ii<=parseInt(total);ii++){
   modcd = "";
   if(document.getElementById("MODIFIER"+ii).value != null && document.getElementById("MODIFIER"+ii).value.trim() != ""){
      modcd = modcd + document.getElementById("MODIFIER"+ii).value.trim()+",";
   }
   
   if(document.getElementById("MODIFIERa"+ii).value != null && document.getElementById("MODIFIERa"+ii).value.trim() != ""){
      modcd = modcd + document.getElementById("MODIFIERa"+ii).value.trim()+",";
   }
   
   if(document.getElementById("MODIFIERb"+ii).value != null && document.getElementById("MODIFIERb"+ii).value.trim() != ""){
      modcd = modcd + document.getElementById("MODIFIERb"+ii).value.trim()+",";
   }
   
   if(document.getElementById("MODIFIERc"+ii).value != null && document.getElementById("MODIFIERc"+ii).value.trim() != ""){
      modcd = modcd + document.getElementById("MODIFIERc"+ii).value.trim()+",";
   }
   
   
   if(modcd != ""){
     //去除最后一个逗号
     modcd = modcd.substring(0,modcd.length-1);
   }
   
   if(modcd != null && modcd.trim() != ""){
      errorline = ii;
        $.ajax({
		    type:"POST",
		    url:"<%=request.getContextPath()%>/adeod/adeod_searchModcd.action",
			data:{"modcd":modcd},
			cache:false,
			async: false,
			dataType:"html",
			success:function(data){
				if(null == data || data == ""){
					haveError = true;
					$("#mess19").html("<b>24-D.MODIFIER-"+errorline+"</b> MODIFIER is not being matched, please check the filled information.<br>").attr("style","color:red");
                    $(".mess19").attr("style","color:red");
                    isbreak = 1;
				}else{
				    $("#mess19").html("");
                    $(".mess19").attr("style","");
				}
			}
		});
   }
   if(isbreak == 1){
      break;
   }
 }
 //验证24 E.DIAG所填信息是否在21对应文本框中存在值
 function checkDiag(){
 		errorline = 0;
        isbreak = 0;
	 	for(var ii=1;ii<=parseInt(total);ii++){
		   var diagval = document.getElementById("DIAG"+ii).value;
		   if(diagval != null && diagval.trim() != ""){
		      errorline = ii;
			      	//通过E.DIAG的值获取21中对应文本框中的值,并判断其值是否包含a-l A-L之外的信息
			      	var diagexp = /[^a-lA-L]/g.test(diagval.trim());
			      	if(diagexp){//说明包含了除a-l A-L之外的信息,要给出提示信息
			      	    haveError = true;
			      		$("#mess26").html("<b>24-E.DIAG-"+errorline+"</b> DIAG is not being matched, Must be a-l and A-L.<br>").attr("style","color:red");
			      		isbreak = 1;
			      	}else{
			      		diagval = diagval.trim().toUpperCase().split('');
			      		for(var kk = 0;kk < diagval.length;kk++){
			      			//判断id为"adveob21"+diagval.trim()的元素是否存在
					      	//if(document.getElementById("adveob21"+diagval[ii].trim()) != undefined){
					      	   if(document.getElementById("adveob21"+diagval[kk]).value != null && document.getElementById("adveob21"+diagval[kk]).value.trim() != ""){
					      	   		//id为"adveob21"+diagval.trim()有值
					      	   		$("#mess26").html("");
					      	   }else{
					      	   		//id为"adveob21"+diagval.trim()无值
					      	   		haveError = true;
					      	   		$("#mess26").html("<b>21-"+diagval[kk]+":</b> Please type information for this field.<br>").attr("style","color:red");
				                    isbreak = 1;
					      	   }
					      	//}else{
					      		//id为"adveob21"+diagval.trim()的元素不存在
					      		//haveError = true;
					      		//$("#mess26").html("<b>24-E.DIAG-"+errorline+"</b> DIAG is not being matched, Must be a-l and A-L.<br>").attr("style","color:red");
					      	//}
					      	if(isbreak == 1){
		                        break;
		                    }
			      		}
			      	}
		   }
		   if(isbreak == 1){
		      break;
		   }
	 }
 }
 checkDiag();
 
 //验证21 所填信息是否在表中存在
 var code = "";
   if(document.getElementById("adveob21A").value != null && document.getElementById("adveob21A").value.trim() != ""){
      code = code + document.getElementById("adveob21A").value.trim()+":A,";
   }
    
   if(document.getElementById("adveob21B").value != null && document.getElementById("adveob21B").value.trim() != ""){
      code = code + document.getElementById("adveob21B").value.trim()+":B,";
   }
   
   if(document.getElementById("adveob21C").value != null && document.getElementById("adveob21C").value.trim() != ""){
      code = code + document.getElementById("adveob21C").value.trim()+":C,";
   }
   
   if(document.getElementById("adveob21D").value != null && document.getElementById("adveob21D").value.trim() != ""){
      code = code + document.getElementById("adveob21D").value.trim()+":D,";
   }
   if(document.getElementById("adveob21E").value != null && document.getElementById("adveob21E").value.trim() != ""){
      code = code + document.getElementById("adveob21E").value.trim()+":E,";
   }
   if(document.getElementById("adveob21F").value != null && document.getElementById("adveob21F").value.trim() != ""){
      code = code + document.getElementById("adveob21F").value.trim()+":F,";
   }
   if(document.getElementById("adveob21G").value != null && document.getElementById("adveob21G").value.trim() != ""){
      code = code + document.getElementById("adveob21G").value.trim()+":G,";
   }
   if(document.getElementById("adveob21H").value != null && document.getElementById("adveob21H").value.trim() != ""){
      code = code + document.getElementById("adveob21H").value.trim()+":H,";
   }
   if(document.getElementById("adveob21I").value != null && document.getElementById("adveob21I").value.trim() != ""){
      code = code + document.getElementById("adveob21I").value.trim()+":I,";
   }
   if(document.getElementById("adveob21J").value != null && document.getElementById("adveob21J").value.trim() != ""){
      code = code + document.getElementById("adveob21J").value.trim()+":J,";
   }
   if(document.getElementById("adveob21K").value != null && document.getElementById("adveob21K").value.trim() != ""){
      code = code + document.getElementById("adveob21K").value.trim()+":K,";
   }
   if(document.getElementById("adveob21L").value != null && document.getElementById("adveob21L").value.trim() != ""){
      code = code + document.getElementById("adveob21L").value.trim()+":L,";
   }
   if(code != ""){
     //去除最后一个逗号
     code = code.substring(0,code.length-1);
   }
   if(code != null && code.trim() != ""){
        $.ajax({
		    type:"POST",
		    url:"<%=request.getContextPath()%>/adeod/adeod_searchCode.action",
			data:{"code":code},
			cache:false,
			async: false,
			dataType:"html",
			success:function(data){
				if(data != "all"){
					haveError = true;
					$("#mess20").html("<b>21. DIAGNOSIS OR NATURE OF ILLNESS OR INJURY-"+data+"</b> missing or improperly formatted.<br>").attr("style","color:red");
                    $(".mess20").attr("style","color:red");
				}else{
				    $("#mess20").html("");
                    $(".mess20").attr("style","");
				}
			}
		});
   }
 
   

//验证字符长度
 //haveError = verifylen("adveob1a",10,"1a.INSURED'S I.D. NUMBER",haveError);
 haveError = verifylen("adveob1a1",30,"INSURED'S M.D. NUMBER",haveError);
 haveError = verifylen("adveob2",35,"2. PATIENT'S NAME(Last Name)",haveError);
 haveError = verifylen("adveob2a",25,"2. PATIENT'S NAME(Middle)",haveError);
 haveError = verifylen("adveob2b",60,"2. PATIENT'S NAME(First Name)",haveError);
 haveError = verifylen("adveob2c",10,"2. PATIENT'S NAME(Suffix Initial)",haveError);
 //haveError = verifylen("adveob3a",1,"1a.INSURED'S I.D. NUMBER");
 haveError = verifylen("adveob4",35,"4.INSURED'S NAME(Last Name)",haveError);
 haveError = verifylen("adveob4a",25,"4.INSURED'S NAME(Middle)",haveError);
 haveError = verifylen("adveob4b",60,"4.INSURED'S NAME(First Name)",haveError);
 haveError = verifylen("adveob4c",10,"4.INSURED'S NAME(Suffix Initial)",haveError);
 //haveError = verifylen("adveob6",2,"1a.INSURED'S I.D. NUMBER");
 haveError = verifylen("adveob9",35,"9.OTHER INSURED's NAME(Last Name)",haveError);
 haveError = verifylen("adveob91",25,"9.OTHER INSURED's NAME(Middle)",haveError);
 haveError = verifylen("adveob92",60,"9.OTHER INSURED's NAME(First Name)",haveError);
 haveError = verifylen("adveob93",10,"9.OTHER INSURED's NAME(Suffix Initial)",haveError);
 
 haveError = verifylen("adveob9a",30,"9a.OTHER INSURED's POLICY OR GROUP NUMBER",haveError);
 //haveError = verifylen("adveob9b1",1,"1a.INSURED'S I.D. NUMBER");
 haveError = verifylen("adveob9d",60,"9d.OTHER INSURANCE PLAN NAME OR PROGRAM NAME",haveError);
 //haveError = verifylen("adveob10a",2,"1a.INSURED'S I.D. NUMBER");
 //haveError = verifylen("adveob10b",2,"1a.INSURED'S I.D. NUMBER");
 //haveError = verifylen("adveob10b1",2,"1a.INSURED'S I.D. NUMBER");
 //haveError = verifylen("adveob10c",2,"1a.INSURED'S I.D. NUMBER");
 haveError = verifylen("adveob11",50,"11.INSURED'S POLICY GROUP OR FECA NUMBER",haveError);
 //haveError = verifylen("adveob11a1",1,"1a.INSURED'S I.D. NUMBER");
 haveError = verifylen("adveob11c",60,"11c.INSURANCE PLAN NAME OR PROGRAM NAME",haveError);
 //haveError = verifylen("adveob11d",100,"1a.INSURED'S I.D. NUMBER");
 haveError = verifylen("adveob12",100,"12.PATIENT'S OR AUTHORIZED PERSON'S SIGNATURE",haveError);
 haveError = verifylen("adveob13",100,"13.INSURED'S OR AUTHORIZED PERSON'S SIGNATURE",haveError);
 haveError = verifylen("adveob17_1",35,"17.NAME OF REFERRING PROVIDER OR OTHER SOURCE(Last Name)",haveError);
 haveError = verifylen("adveob17_2",25,"17.NAME OF REFERRING PROVIDER OR OTHER SOURCE(Middle)",haveError);
 haveError = verifylen("adveob17_3",60,"17.NAME OF REFERRING PROVIDER OR OTHER SOURCE(First Name)",haveError);
 haveError = verifylen("adveob17_4",10,"17.NAME OF REFERRING PROVIDER OR OTHER SOURCE(Suffix)",haveError);
 haveError = verifylen("adveob17b",10,"17b. NPI",haveError);
 haveError = verifylen("adveob21A",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(A)",haveError);
 haveError = verifylen("adveob21B",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(B)",haveError);
 haveError = verifylen("adveob21C",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(C)",haveError);
 haveError = verifylen("adveob21D",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(D)",haveError);
 haveError = verifylen("adveob21E",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(E)",haveError);
 haveError = verifylen("adveob21F",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(F)",haveError);
 haveError = verifylen("adveob21G",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(G)",haveError);
 haveError = verifylen("adveob21H",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(H)",haveError);
 haveError = verifylen("adveob21I",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(I)",haveError);
 haveError = verifylen("adveob21J",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(J)",haveError);
 haveError = verifylen("adveob21K",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(K)",haveError);
 haveError = verifylen("adveob21L",10,"21.DIAGNOSIS OR NATURE OF ILLNESS OR INJURY(L)",haveError);
 haveError = verifylen("adveob23",50,"23.PRIOR AUTHORIZATION NUMBER",haveError);
 haveError = verifylen("adveob25",50,"25.FEDERAL TAX I.D. NUMBER",haveError);
 haveError = verifylen("adveob26",38,"26. PATIENT'S ACCOUNT NO.",haveError);
 //haveError = verifylen("adveob27",1,"1a.INSURED'S I.D. NUMBER");
 haveError = verifylen("adveob28",19,"28.TOTAL CHARGE",haveError);
 //haveError = verifylen("adveob29",19,"29.AMOUNT PAID",haveError);
 
 haveError = verifylen("adveob31",35,"31.PHYSICIAN SIGNATURE",haveError);
 haveError = verifylen("adveob31_1",25,"31.PHYSICIAN SIGNATURE",haveError);
 haveError = verifylen("adveob31_2",60,"31.PHYSICIAN SIGNATURE",haveError);
 haveError = verifylen("adveob31_3",10,"31.PHYSICIAN SIGNATURE",haveError);
 haveError = verifylen("adveob32",60,"32.SERVICE FACILITY LOCATION INFORMATION(Name)",haveError);
 haveError = verifylen("adveob32a",55,"32.SERVICE FACILITY LOCATION INFORMATION(Address)",haveError);
 
 haveError = verifylen("adveob32a1",55,"32.SERVICE FACILITY LOCATION INFORMATION(Address2)",haveError);
 haveError = verifylen("adveob32b",30,"32.SERVICE FACILITY LOCATION INFORMATION(City)",haveError);
 //haveError = verifylen("adveob32b1",2,"1a.INSURED'S I.D. NUMBER");
 haveError = verifylen("adveob32c",15,"32.SERVICE FACILITY LOCATION INFORMATION(Zip)",haveError);
 //haveError = verifylen("adveob32aa",10,"32.SERVICE FACILITY LOCATION INFORMATION(a. NPI)",haveError);
 haveError = verifylen("adveob33",60,"33.SUBMITTER INFORMAITON(Name)",haveError);
 
 haveError = verifylen("adveob33a",55,"33.SUBMITTER INFORMAITON(Address)",haveError);
 haveError = verifylen("adveob33a1",55,"33.SUBMITTER INFORMAITON(Address2)",haveError);
 //haveError = verifylen("adveob33b",30,"33.BILLING PROVIDER INFORMATION(City)",haveError);
 //haveError = verifylen("adveob33b1",2,"1a.INSURED'S I.D. NUMBER");
 //haveError = verifylen("adveob33c",15,"33.BILLING PROVIDER INFORMATION(Zip)",haveError);
 haveError = verifylen("adveob33d",15,"33.SUBMITTER INFORMAITON(Phone)",haveError);
 //haveError = verifylen("adveob33aa",10,"33.SUBMITTER INFORMAITON(a. NPI)",haveError);

 //验证有错误，回到页面顶部查看错误信息
 if(haveError) scrollTo(0,0);
 
 


 if(!haveError){
	//alert("updatedate");
	 var str="&linestr=";
     var total = document.getElementById("linestotal").value;
		        for(var i=1;i<=parseInt(total);i++){
			         if((document.getElementById("PROC"+i).value != null && document.getElementById("PROC"+i).value != "") 
			         		|| (document.getElementById("MODIFIER"+i).value != null && document.getElementById("MODIFIER"+i).value != "")
			         		|| (document.getElementById("MODIFIERa"+i).value != null && document.getElementById("MODIFIERa"+i).value != "")
			         		|| (document.getElementById("MODIFIERb"+i).value != null && document.getElementById("MODIFIERb"+i).value != "")
			         		|| (document.getElementById("MODIFIERc"+i).value != null && document.getElementById("MODIFIERc"+i).value != "")
			         		|| (document.getElementById("CHARGE"+i).value != null && document.getElementById("CHARGE"+i).value != "")){
			         	//str=str+document.getElementById("dosfdate"+i).value;
			        	//str=str+"|_"+document.getElementById("dosldate"+i).value;
			        	str=str+"|_";
			        	var posval = document.getElementById("POS"+i).value;
			        	if(posval != null && posval.trim() != ""){
			        		//str=str+"|_"+document.getElementById("POS"+i).value;
			        		str=str+"|_"+posval;
			        	}else{
			        		str=str+"|_11";
			        	}
			        	//str=str+"|_"+document.getElementById("EMG"+i).value;
			        	str=str+"|_";
			        	str=str+"|_"+document.getElementById("PROC"+i).value;
			        	str=str+"|_"+document.getElementById("MODIFIER"+i).value;
						str=str+"|_"+document.getElementById("MODIFIERa"+i).value;
			        	str=str+"|_"+document.getElementById("MODIFIERb"+i).value;
			        	str=str+"|_"+document.getElementById("MODIFIERc"+i).value;
			        	var diagval = document.getElementById("DIAG"+i).value;
			        	if(diagval != null && diagval.trim() != ""){
			        		str=str+"|_"+diagval;
			        	}else{
			        		str=str+"|_A";
			        		document.getElementById("DIAG"+i).value = 'A';
			        		checkDiag();
			        	}
			        	//str=str+"|_"+document.getElementById("DIAG"+i).value;
			        	str=str+"|_"+document.getElementById("CHARGE"+i).value;
			        	var duval = document.getElementById("DU"+i).value;
			        	if(duval != null && duval.trim() != ""){
			        		str=str+"|_"+duval;
			        	}else{
			        		str=str+"|_1";
			        	}
			        	//str=str+"|_"+document.getElementById("DU"+i).value;
			        	//str=str+"|_"+document.getElementById("EPSDT"+i).value;
			        	str=str+"|_"+"";
			        	str=str+"|_"+document.getElementById("adveob32npi").value;
			        	str=str+"|;";
			         }
		        }

	 var str1="&headstr=";
	 str1=str1+document.getElementById("adveob1a").value;
	 str1=str1+"|_"+document.getElementById("adveob1a1").value;
	 str1=str1+"|_"+document.getElementById("adveob2").value;
	 str1=str1+"|_"+document.getElementById("adveob2a").value;
	 str1=str1+"|_"+document.getElementById("adveob2b").value;
	 str1=str1+"|_"+document.getElementById("adveob2c").value;
	 str1=str1+"|_"+document.getElementById("adveob3").value;
	 str1=str1+"|_"+document.getElementById("adveob3a").value;
	 str1=str1+"|_"+document.getElementById("adveob4").value;
	 str1=str1+"|_"+document.getElementById("adveob4a").value;
	 str1=str1+"|_"+document.getElementById("adveob4b").value;
	 str1=str1+"|_"+document.getElementById("adveob4c").value;
	 str1=str1+"|_"+document.getElementById("adveob6").value;
	 str1=str1+"|_"+document.getElementById("adveob9").value;
	 str1=str1+"|_"+document.getElementById("adveob91").value;
	 str1=str1+"|_"+document.getElementById("adveob92").value;
	 str1=str1+"|_"+document.getElementById("adveob93").value;
	 str1=str1+"|_"+document.getElementById("adveob9a").value;
	 str1=str1+"|_"+document.getElementById("adveob9b").value;
	 str1=str1+"|_"+document.getElementById("adveob9b1").value;
	 str1=str1+"|_"+document.getElementById("adveob9d").value;
	 str1=str1+"|_"+document.getElementById("adveob10a").value;
	 str1=str1+"|_"+document.getElementById("adveob10b").value;
	 str1=str1+"|_"+document.getElementById("adveob10b1").value;
	 str1=str1+"|_"+document.getElementById("adveob10c").value;
	 str1=str1+"|_"+document.getElementById("adveob10d").value;
	 str1=str1+"|_"+document.getElementById("adveob11").value;
	 str1=str1+"|_"+document.getElementById("adveob11a").value;
	 str1=str1+"|_"+document.getElementById("adveob11a1").value;
	 str1=str1+"|_"+document.getElementById("adveob11c").value;
	 str1=str1+"|_"+document.getElementById("adveob11d").value;
	 str1=str1+"|_"+document.getElementById("adveob12").value;
	 str1=str1+"|_"+document.getElementById("adveob13").value;
	 str1=str1+"|_"+document.getElementById("adveob17_1").value;
	 str1=str1+"|_"+document.getElementById("adveob17_2").value;
	 str1=str1+"|_"+document.getElementById("adveob17_3").value;
	 str1=str1+"|_"+document.getElementById("adveob17_4").value;
	 str1=str1+"|_"+document.getElementById("adveob17b").value;
	 str1=str1+"|_"+document.getElementById("adveob21").value;
	 str1=str1+"|_"+document.getElementById("adveob21A").value;
	 str1=str1+"|_"+document.getElementById("adveob21B").value;
	 str1=str1+"|_"+document.getElementById("adveob21C").value;
	 str1=str1+"|_"+document.getElementById("adveob21D").value;
	 str1=str1+"|_"+document.getElementById("adveob21E").value;
	 str1=str1+"|_"+document.getElementById("adveob21F").value;
	 str1=str1+"|_"+document.getElementById("adveob21G").value;
	 str1=str1+"|_"+document.getElementById("adveob21H").value;
	 str1=str1+"|_"+document.getElementById("adveob21I").value;
	 str1=str1+"|_"+document.getElementById("adveob21J").value;
	 str1=str1+"|_"+document.getElementById("adveob21K").value;
	 str1=str1+"|_"+document.getElementById("adveob21L").value;
	 str1=str1+"|_"+document.getElementById("adveob23").value;
	 str1=str1+"|_"+document.getElementById("adveob25").value;
	 str1=str1+"|_"+document.getElementById("adveob26").value;
	 str1=str1+"|_"+document.getElementById("adveob27").value;
	 str1=str1+"|_"+document.getElementById("adveob28").value;
	 //str1=str1+"|_"+document.getElementById("adveob29").value;
	 str1=str1+"|_"+"";
	 str1=str1+"|_"+document.getElementById("adveob31").value;
	 str1=str1+"|_"+document.getElementById("adveob31_1").value;
	 str1=str1+"|_"+document.getElementById("adveob31_2").value;
	 str1=str1+"|_"+document.getElementById("adveob31_3").value;
	 str1=str1+"|_"+document.getElementById("adveob32").value;
	 str1=str1+"|_"+document.getElementById("adveob32a").value;
	 str1=str1+"|_"+document.getElementById("adveob32a1").value;
	 str1=str1+"|_"+document.getElementById("adveob32b").value;
	 str1=str1+"|_"+document.getElementById("adveob32b1").value;
	 str1=str1+"|_"+document.getElementById("adveob32c").value;
	 str1=str1+"|_"+document.getElementById("adveob32aa").value;
	 str1=str1+"|_"+document.getElementById("adveob33").value;
	 str1=str1+"|_"+document.getElementById("adveob33a").value;
	 str1=str1+"|_"+document.getElementById("adveob33a1").value;
	 //str1=str1+"|_"+document.getElementById("adveob33b").value;
	 str1=str1+"|_"+"";
	 //str1=str1+"|_"+document.getElementById("adveob33b1").value;
	 str1=str1+"|_"+"";
	 //str1=str1+"|_"+document.getElementById("adveob33c").value;
	 str1=str1+"|_"+"";
	 str1=str1+"|_"+document.getElementById("adveob33d").value;
	 str1=str1+"|_"+document.getElementById("adveob33aa").value;
	 str1=str1+"|_"+document.getElementById("adveob32npi").value;
	 str1=str1+"|_"+document.getElementById("adveob33npi").value;
	 str1=str1+"|_";
	// alert(str1);
	
	var hidden_ssn=document.getElementById("hidden_ssn").value; 
	//var hidden_altid=document.getElementById("hidden_altid").value; 
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
    if(!haveError){
    	XMLAjax("<%=path%>/adeod/adeod_addAdvanceeob.action","grpno=${grpno}&empno=${empno}&depno=${depno}&hidden_ssn="+hidden_ssn+"&firstname=${firstname}&dob=${dob}&Lines_total="+total+str+str1+"&methodinfo=${methodinfo}&emailaddressinfo=${emailaddressinfo}&faxnumberinfo=${faxnumberinfo}&emailtoaddress=${emailtoaddress}","addstatus",sendseccesssub);
    } 
 }else{
 
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
 }
});


 function sendseccesssub(idstr){
           eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
           var errorinfo=document.getElementById("errorinfo").value;   		
           if(errorinfo!=""){
           		alert("Can't update:"+errorinfo);
	 	   }else{  
           		alert("Data update success!");
           	//$("#resualtform").attr("action","<%=request.getContextPath()%>/adeod/adeod_addeob.action");
           	//$("#resualtform").attr("action","<%=request.getContextPath()%>/adeod/adeod_showeob.action");
           	$("#resualtform").attr("action","<%=request.getContextPath()%>/adeod/adeod_addAdvancesuccess.action");
	       	$("#resualtform").submit();
	       }
 } 
 
 function verifylen(selector,len,title,haveError){
    if($("#"+selector).val() != null && $("#"+selector).val().trim() != ""){
	    if($("#"+selector).val().trim().length > len){
	      $("#mess25").html("<b>"+title+":<b> Length limit exceeded").attr("style","color:red");
	      return true;
	    }
    }
    return haveError;
 }
 //自动填充box 32的name
 $("#adveob32npi").keyup(function(){
  if($("#adveob32npi").val() != null && $("#adveob32npi").val().trim() != ""){
     $.ajax({
		type:"POST",
		url:"<%=request.getContextPath()%>/adeod/adeod_searchPhyName.action",
		data:{"npi":$("#adveob32npi").val().trim()},
		cache:false,
		dataType:"html",
		success:function(data){
			if(null != data && data != ""){
				var name = data;
				name = name.split(";");
				$("#adveob31").css("color","").val(name[0]);
				$("#adveob31_1").css("color","").val(name[1]);
				$("#adveob31_2").css("color","").val(name[2]);
				$("#adveob31_3").css("color","").val(name[3]);
			}
		}
	});
  }
 });
 //计算box 28 total charge, 自动求和 line上的charge
 $(".chargeamt").live('change',function(){
    totalcharge();
 });

 function totalcharge(){
    var total = document.getElementById("linestotal").value;
    var amount = 0;
	for(var i=1;i<=parseInt(total);i++){
      if(document.getElementById("CHARGE"+i).value != null && document.getElementById("CHARGE"+i).value.trim() != ""){
        amount = amount + parseFloat(document.getElementById("CHARGE"+i).value);
      }
	   
	}
	document.getElementById("adveob28").value = amount.toFixed(2);

 }
 


</script>
<script type="text/javascript">
	  $("#goback").click(function(){
	  var r=confirm("Go back to previous page?")
  		if (r==true){
	 		window.history.back()    
	 	}
        });
	</script>  
	
	
	
<script type="text/javascript">
		addLines1();
		$("#addLinebutton").click(function(){ 
			addLines(); 
        });
		$("#delLinebutton").click(function(){ 
			delLines(); 
        });

        
        function sendseccess(idstr){
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
        	   		  //delLines是执行
        	   		  totalcharge();
        } 
		
        function addLines1(){ 

        	XMLAjax2("<%=path%>/adeod/adeod_addeoblines.action" ,"","addlines",sendseccess); 
        	

		}
		    
        function addLines(){ 
        var str="&linestr=";
        var total = document.getElementById("linestotal").value;
		        for(var i=1;i<=parseInt(total);i++){
		        	//str=str+document.getElementById("dosfdate"+i).value;
		        	//str=str+"|_"+document.getElementById("dosldate"+i).value;
		        	str=str+"|_";
		        	str=str+"|_"+document.getElementById("POS"+i).value;
		        	//str=str+"|_"+document.getElementById("EMG"+i).value;
		        	str=str+"|_";
		        	str=str+"|_"+document.getElementById("PROC"+i).value;
		        	str=str+"|_"+document.getElementById("MODIFIER"+i).value;
					str=str+"|_"+document.getElementById("MODIFIERa"+i).value;
		        	str=str+"|_"+document.getElementById("MODIFIERb"+i).value;
		        	str=str+"|_"+document.getElementById("MODIFIERc"+i).value;
		        	str=str+"|_"+document.getElementById("DIAG"+i).value;
		        	str=str+"|_"+document.getElementById("CHARGE"+i).value;
		        	str=str+"|_"+document.getElementById("DU"+i).value;
		        	//str=str+"|_"+document.getElementById("EPSDT"+i).value;
		        	str=str+"|_"+"";
		        	str=str+"|_"+document.getElementById("adveob32npi").value;
		        	str=str+"|;";
		        }
        
        
        //alert(str);
        	XMLAjax2("<%=path%>/adeod/adeod_addeoblines.action" ,"doLine=add&Lines_total="+total+str,"addlines",sendseccess); 
        	

		} 
		   
        function delLines(){  
        var str="&linestr=";
        var total = document.getElementById("linestotal").value;
         
        for(var i=1;i<parseInt(total);i++){
		        	//str=str+document.getElementById("dosfdate"+i).value;
		        	//str=str+"|_"+document.getElementById("dosldate"+i).value;
		        	str=str+"|_";
		        	str=str+"|_"+document.getElementById("POS"+i).value;
		        	//str=str+"|_"+document.getElementById("EMG"+i).value;
		        	str=str+"|_";
		        	str=str+"|_"+document.getElementById("PROC"+i).value;
		        	str=str+"|_"+document.getElementById("MODIFIER"+i).value;
					str=str+"|_"+document.getElementById("MODIFIERa"+i).value;
		        	str=str+"|_"+document.getElementById("MODIFIERb"+i).value;
		        	str=str+"|_"+document.getElementById("MODIFIERc"+i).value;
		        	str=str+"|_"+document.getElementById("DIAG"+i).value;
		        	str=str+"|_"+document.getElementById("CHARGE"+i).value;
		        	str=str+"|_"+document.getElementById("DU"+i).value;
		        	//str=str+"|_"+document.getElementById("EPSDT"+i).value;
		        	str=str+"|_"+"";
		        	str=str+"|_"+document.getElementById("adveob32npi").value;
		        	str=str+"|;";
		        }
		        
        	XMLAjax2("<%=path%>/adeod/adeod_addeoblines.action" ,"doLine=del&Lines_total="+total+str,"addlines",sendseccess); 
        	

		}     
	</script>   
	
	
<div id="tempdate" style="position:absolute;visibility:hidden;"  >
<input type="hidden" class="input001" name="dosdate" id="dosdate" onchange="dochosedate(this.value);" >
<input type="hidden"   name="dosid" id="dosid" >
</div>
<script type="text/javascript"> 
	 
	  function changeStyle(strid){  
	  	document.getElementById(strid).value="";
  		//$("#"+strid).css("color","black");
  		$("#"+strid).css("color","#666");
	  }
	     
	  
	 function defaultStyle(strid){  
	 
	  	var tt=document.getElementById(strid).value;
	  	if(tt==""){
	  		if(strid=="adveob12"){
	  		document.getElementById(strid).value="Release of Information Code";
	  		}
	  		if(strid=="adveob13"){
	  		document.getElementById(strid).value="Benefits Assignment Certification Indicator";
	  		}
	  		if(strid=="adveob31"){
	  		document.getElementById(strid).value="Fname";
	  		}
	  		if(strid=="adveob31_1"){
	  		document.getElementById(strid).value="Middle";
	  		}
	  		if(strid=="adveob31_2"){
	  		document.getElementById(strid).value="Lname";
	  		}
	  		if(strid=="adveob31_3"){
	  		document.getElementById(strid).value="Suffix";
	  		}
	  		if(strid=="adveob31_4"){
	  		document.getElementById(strid).value="Date";
	  		}
	  		
	  		if(strid=="adveob17_1"){
	  		document.getElementById(strid).value="Fname";
	  		}
	  		if(strid=="adveob17_2"){
	  		document.getElementById(strid).value="Middle";
	  		}
	  		if(strid=="adveob17_3"){
	  		document.getElementById(strid).value="Lname";
	  		}
	  		if(strid=="adveob17_4"){
	  		document.getElementById(strid).value="Suffix";
	  		}
	  		
	  		$("#"+strid).css("color","#DCDCDC");
	  	}
  		
	  }
	  
	 function defaultchosedate(){  
  		$("#tempdate").css("visibility","hidden");
	 	document.getElementById("dosdate").value="";
	 }
	  
	 function dochosedate(str){  
	 	var id=document.getElementById("dosid").value;
	 	document.getElementById(id).value=str;
  		$("#tempdate").css("visibility","hidden");
	 	document.getElementById("dosdate").value="";
  		$("#"+id).css("color","black");
	 }
	 
	 /*
	 function chosedate(idstr){ 
	 	var divleft = event.pageX;
	 	var divtop = event.pageY;
	 	$("#tempdate").css("left",parseInt(divleft)-10);
	 	$("#tempdate").css("top",divtop);
  		$("#tempdate").css("visibility","visible");
	 	document.getElementById("dosid").value=idstr;
	 	// document.getElementById("dosdate").click();
	 }*/
	 
	 
	 function hiddenchosedate(){ 
  		//$("#tempdate").css("visibility","hidden");
	 }
	 
  
$( "#dosdate" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: false,
	buttonImage: "<%=request.getContextPath()%>/image/calendar3.gif",
	buttonImageOnly: true
}); 
	 
$( "#dosfdate" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});
	 
$( "#dosldate" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});
	 
</script>  
</html>
