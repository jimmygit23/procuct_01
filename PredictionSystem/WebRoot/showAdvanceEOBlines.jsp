<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ include file="/common/commons.jsp"%>
<html>
	<head>
		<title> </title> 
	</head>
	<body>
		<table  width="100%" border="0" cellpadding="10" cellspacing="0">
			<tr> 
				<td>
					<table cellspacing="1" cellpadding="3" width="1150" border="0" bgcolor="#0089C7">
						<tr>
							<th colspan="6">
								<font class="font_white_bold16">Advanced EOB Request form</font>
							</th>
						</tr>
						<tr>
							<td class="tdclass6_1" colspan="4">
							  <!-- 1.Type<br>
								<select  name="adveob1" id="adveob1" class="input001_1" style="background:#DCDCDC;">
								<option value="HCFA">HCFA</option>
								<option value="UB">UB</option>
								<option value="DETAL">DETAL</option>
								<option value="other">other</option>
								</select>
						      -->
							</td>
							<td class="tdclass6_1" colspan="2">
							    1a.  <!-- INSURED'S I.D. NUMBER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->INSURED'S M.D. NUMBER<br>
								<!-- <input type="text" name="adveob" id="adveob1a"  value="${eobdetailobj.employee_ssn }" size="20" class="">
								&nbsp;&nbsp;&nbsp;&nbsp; -->
								<input type="text" name="adveob" id="adveob1a1" value="${eobdetailobj.member_id }" size="20" class="input001_1">
							</td>
						</tr>
						<tr>
							<td class="tdclass6_1" colspan="2">2. PATIENT'S NAME (Last Name, Middle, First Name,Suffix Initial ) <br>
								<input type="text" name="adveob" id="adveob2" value="${eobdetailobj.patient_lname }" class="input001_1">
								<input type="text" name="adveob" id="adveob2a" value="${eobdetailobj.patient_mname }" class="input001_1">
								<input type="text" name="adveob" id="adveob2b" value="${eobdetailobj.patient_fname }" class="input001_1">
								<input type="text" name="adveob" id="adveob2c" value="${eobdetailobj.patient_suffix }" class="input001_1">
							</td>
							<td class="tdclass6_1" colspan="2">
							   3. PATIENT'S BIRTH DATE <br>
							   
							   <input type="text" value='<fmt:formatDate value="${eobdetailobj.patient_dob }" pattern="MM/dd/yyyy"/>' name="adveob" id="adveob3" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);"  style="background:#DCDCDC;">
							   &nbsp;&nbsp;&nbsp;&nbsp;
							   sex&nbsp;
							   <select  name="adveob" id="adveob3a" class="input001_1" style="background:#DCDCDC;"> 
							      
								   <option value="M" <c:if test="${eobdetailobj.patient_gender eq 'M' }">selected</c:if>>Male</option>
								   <option value="F" <c:if test="${eobdetailobj.patient_gender eq 'F' }">selected</c:if>>Female</option>
							   </select>
							</td>
							<td class="tdclass6_1" colspan="2">4. INSURED'S NAME (Last Name, Middle, First Name,Suffix Initial) <br>
								<input type="text" name="adveob" id="adveob4" value="${eobdetailobj.subscriber_lname }" class="input001_1">
								<input type="text" name="adveob" id="adveob4a" value="${eobdetailobj.subscriber_mname }" class="input001_1">
								<input type="text" name="adveob" id="adveob4b" value="${eobdetailobj.subscriber_fname}" class="input001_1">
								<input type="text" name="adveob" id="adveob4c" value="${eobdetailobj.subscriber_suffix }" class="input001_1">
							</td>
						</tr>
						<tr>
							<td class="tdclass6_1" colspan="2">
								<!-- 5. PATIENT'S ADDRESS (No. Street) <br><input type="text" name="adveob" id="adveob5" size="50" class=""> -->
							</td>
							<td class="tdclass6_1" colspan="2">
							   6. PATIENT RELATIONSHIP TO INSURED <br> 
							   <select  name="adveob" id="adveob6" class="input001_1" style="background:#DCDCDC;"> 
									 <option <c:if test="${eobdetailobj.relationship_to_employee eq '18' }">selected</c:if>>Self</option>
									 <option <c:if test="${eobdetailobj.relationship_to_employee eq '01' }">selected</c:if>>Spouse</option>
									 <option <c:if test="${eobdetailobj.relationship_to_employee eq '19' }">selected</c:if>>Child</option>
									 <option <c:if test="${eobdetailobj.relationship_to_employee eq '20' }">selected</c:if>>Other</option>
							   </select>
							</td>
							<td class="tdclass6_1" colspan="2">
							   <!-- 7. INSURED'S ADDRESS (No. Street) <br><input type="text" name="adveob" id="adveob7" size="50" class="">-->
							</td>
						</tr>		
						<!-- 2X2 -->
						<tr>
							<td class="tdclass6_1"> 
								<!-- CITY <br><input type="text" name="adveob" id="adveob5a"  size="25"  class="">-->
							</td>
							<td class="tdclass6_1"  > 
							    <!-- STATE <br>
								<select  name="adveob" id="adveob5b" class="input001_1" style="background:#DCDCDC;"> 
									<option value="IA">IA</option>
									<option value=""></option>
									<option value=""></option>
									<option value="">other</option>
								</select>
								-->
							</td>
							<td class="tdclass6_1" colspan="2" rowspan="2">
								<!-- 8. RESERVED FOR NUCC USE <br><input type="text" name="adveob" id="adveob8"  size="40"  class="">-->
							</td>
							<td class="tdclass6_1"  >
								<!-- CITY <br><input type="text" name="adveob" id="adveob7a" size="25"  class="">-->
							</td>
							<td class="tdclass6_1"  > 
								<!-- STATE <br>
								<select  name="adveob" id="adveob7b" class="input001_1" style="background:#DCDCDC;"> 
									<option value="IA">IA</option>
									<option value=""></option>
									<option value=""></option>
									<option value="">other</option>
								</select>-->
							</td>
						</tr>
						<tr>
							<td class="tdclass6_1"  >
								<!-- ZIP CODE <br><input type="text" name="adveob" id="adveob5c"   size="25"   class="">-->
							</td>
							<td class="tdclass6_1"  >
								<!--  TELEPHONE <br><input type="text" name="adveob" id="adveob5d"  size="25"  class="">-->
							</td>
							<!--<td class="tdclass6_1" colspan="2"> ZIP CODE <input type="text" name="" id="" class="input001_1">
							</td>-->
							<td class="tdclass6_1"  >
								<!--  ZIP CODE <br><input type="text" name="adveob" id="adveob7c" size="25"  class="">-->
							</td>
							<td class="tdclass6_1"  >
								<!-- TELEPHONE <br><input type="text" name="adveob" id="adveob7d" size="25"  class="">-->
							</td>
						</tr>
						<!-- 2X2 -->
						<!-- 2X4 -->
						<tr> 
							<td class="tdclass6_1" colspan="2">
								9. OTHER INSURED's NAME (Last Name, Middle, First Name,Suffix Initial) <br>
								<input type="text" name="adveob" id="adveob9" value="${eobdetailobj.other_subscriber_fname }" class="input001_1">
								<input type="text" name="adveob" id="adveob91" value="${eobdetailobj.other_subscriber_mname }" class="input001_1">
								<input type="text" name="adveob" id="adveob92" value="${eobdetailobj.other_subscriber_lname }" class="input001_1">
								<input type="text" name="adveob" id="adveob93" value="${eobdetailobj.other_subscriber_suffix }" class="input001_1">
							</td>
							<td class="tdclass6_1" colspan="2" rowspan="4">
								10.  IS PATIENT'S CONDITION RELATED TO:
								<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employment? 
								<select  name="adveob" id="adveob10a" class="input001_1" style="background:#DCDCDC;"> 
									<option value="Y" <c:if test="${fn:trim(eobdetailobj.work_related_indicator) eq 'Y'}">selected</c:if>>Yes</option>
									<option value="N" <c:if test="${fn:trim(eobdetailobj.work_related_indicator) eq 'N'}">selected</c:if>>No</option>
								</select>
								<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Auto Accident? 
								<select  name="adveob" id="adveob10b" class="input001_1" style="background:#DCDCDC;"> 
									<option value="Y" <c:if test="${fn:trim(eobdetailobj.auto_accident_indicator) eq 'Y'}">selected</c:if>>Yes</option>
									<option value="N" <c:if test="${fn:trim(eobdetailobj.auto_accident_indicator) eq 'N'}">selected</c:if>>No</option>
								</select>
								<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Auto Accident State
								<select  name="adveob" id="adveob10b1" class="input001_1" style="background:#DCDCDC;"> 
									<option value="" <c:if test="${eobdetailobj.auto_accident_state eq ''}">selected</c:if>></option>
								</select>
								<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Accident?
								<select  name="adveob" id="adveob10c" class="input001_1" style="background:#DCDCDC;"> 
									<option value="Y" <c:if test="${fn:trim(eobdetailobj.accidental_injury_indicator) eq 'Y'}">selected</c:if>>Yes</option>
									<option value="N" <c:if test="${fn:trim(eobdetailobj.accidental_injury_indicator) eq 'N'}">selected</c:if>>No</option>
								</select>
								<br>  
							<td class="tdclass6_1" colspan="2">
								11. INSURED'S POLICY GROUP OR FECA NUMBER <br>
								<input type="text" name="adveob" id="adveob11" value="${eobdetailobj.plan_number }"  size="25"  class="input001_1">
							</td>
						</tr>
						<tr> 
							<td class="tdclass6_1" colspan="2">
								9a. OTHER INSURED's POLICY OR GROUP NUMBER <br>
								<input type="text" name="adveob" id="adveob9a" value="${eobdetailobj.other_policy_number }"  size="25"  class="input001_1">
							</td>
							<td class="tdclass6_1" colspan="2">
								11a. INSURED'S BIRTH DATE <br>
								<input type="text" name="adveob" id="adveob11a" value='<fmt:formatDate value="${eobdetailobj.subscriber_dob }" pattern="MM/dd/yyyy"/>' onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);" class="input001_1" style="background:#DCDCDC;">
								Sex&nbsp;
								<select  name="adveob" id="adveob11a1" class="input001_1" style="background:#DCDCDC;"> 
									<option value="M" <c:if test="${eobdetailobj.subscriber_gender eq 'M'}">selected</c:if>>Male</option>
									<option value="F" <c:if test="${eobdetailobj.subscriber_gender eq 'F'}">selected</c:if>>Female</option>
								</select>
							</td>
						</tr>
						<tr> 
							<td class="tdclass6_1" colspan="2">
								9b. OTHER INSURED'S BIRTH DATE <br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="adveob" id="adveob9b" value='<fmt:formatDate value="${eobdetailobj.other_subscriber_dob }" pattern="MM/dd/yyyy"/>'  size="25"  class="" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);" style="background:#DCDCDC;"><br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OTHER INSURED'S GENDER<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select  name="adveob" id="adveob9b1" class="input001_1" style="background:#DCDCDC;"> 
									<option value="M" <c:if test="${eobdetailobj.other_subscriber_gender eq 'M' }">selected</c:if>>Male</option>
									<option value="F" <c:if test="${eobdetailobj.other_subscriber_gender eq 'F' }">selected</c:if>>Female</option>
								</select>
							</td>
							<td class="tdclass6_1" colspan="2">
								<!-- 11b.  OTHER CLAIM ID (Designated by NUCC) <br><input type="text" name="adveob" id="adveob11b"  size="25" class=""> -->
							</td>
						</tr>
						<tr> 
							<td class="tdclass6_1" colspan="2">
								<!-- 9c. RESERVED FOR NUCC USE <br><input type="text" name="adveob" id="adveob9c"  size="25" class=""> -->
							</td>
							<td class="tdclass6_1" colspan="2">
								11c.  INSURANCE PLAN NAME OR PROGRAM NAME <br>
								<input type="text" name="adveob" id="adveob11c" value="${eobdetailobj.employer_name }" size="25" class="input001_1">
							</td>
						</tr>
						<!-- 2X4 -->
						<tr>
							<td class="tdclass6_1" colspan="2">
								9d. OTHER INSURANCE PLAN NAME OR PROGRAM NAME <br>
								<input type="text" name="adveob" id="adveob9d" value="${eobdetailobj.other_insurance_plan_name }"  size="25" class="input001_1">
							</td>
							<td class="tdclass6_1" colspan="2">
								10d.  Accident Date<br>
								<input type="text" name="adveob" id="adveob10d" value='<fmt:formatDate value="${eobdetailobj.accident_date }" pattern="MM/dd/yyyy"/>' class="input001_1" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);" style="background:#DCDCDC;">
							</td>
							<td class="tdclass6_1" colspan="2">
								11d.  IS THERE ANOTHER HEALTH BENEFIT PLAN? <br>
								<select  name="adveob" id="adveob11d" class="input001_1" style="background:#DCDCDC;">
								    <option value=""></option>
									<option value="Y" <c:if test="${eobdetailobj.otherinsurance eq 'Y' }">selected</c:if>>Yes</option>
									<option value="N" <c:if test="${eobdetailobj.otherinsurance eq 'N' }">selected</c:if>>No</option>
								</select> 
							</td>
						</tr>
						<tr>
							<td class="tdclass6_1" colspan="4">12. PATIENT'S OR AUTHORIZED PERSON'S SIGNATURE <br>
						    	<!--<input type="text" name="adveob" id="adveob12" style="width:190px;" value="${eobdetailobj.releaseofinformation }" class="input001_1"> -->
								<select id="adveob12" name="adveob" class="input001_1" style="background:#DCDCDC;width:400px;">
								  	<option value="A" <c:if test="${eobdetailobj.releaseofinformation eq 'A' }">selected</c:if>>Appropriate Release of Information on File at Health Care Service Provider or at Utilization Review Organization</option>
								  	<option value="I" <c:if test="${eobdetailobj.releaseofinformation eq 'I' }">selected</c:if>>Informed Consent to Release Medical Information for Conditions or Diagnoses Regulated by Federal Statutes</option>
								  	<option value="M" <c:if test="${eobdetailobj.releaseofinformation eq 'M' }">selected</c:if>>The Provider has Limited or Restricted Ability to Release Data Related to a Claim</option>
								  	<option value="N" <c:if test="${eobdetailobj.releaseofinformation eq 'N' }">selected</c:if>>No, Provider is Not Allowed to Release Data</option>
								  	<option value="O" <c:if test="${eobdetailobj.releaseofinformation eq 'O' }">selected</c:if>>On file at Payor or at Plan Sponsor</option>
								  	<option value="Y" <c:if test="${eobdetailobj.releaseofinformation eq 'Y' }">selected</c:if>>Yes, Provider has a Signed Statement Permitting Release of Medical Billing Data Related to a Claim</option>
								</select>&nbsp;&nbsp;&nbsp;&nbsp;
								<!-- Date&nbsp;&nbsp;<input type="text" name="adveob" id="adveob12a" class="input001_1" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);" >-->
							</td>
							<td class="tdclass6_1" colspan="2">13. INSURED'S OR AUTHORIZED PERSON'S SIGNATURE <br>
								<input type="text" name="adveob" id="adveob13" size="50"  class="input001_1" style="width:270px;"  value="${eobdetailobj.assignment_of_benefits }">
							</td>
						</tr>
						<!-- 
						<tr>
							<td class="tdclass6_1" colspan="2">
								14. DATE OF CURRENT ILLNESS, INJURY, or PREGNANCY (LMP) <br>
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
							<td class="tdclass6_1" colspan="2">
								16. DATES PATIENT UNABLE TO WORK IN CURRENT OCCUPATION <br>
								<input type="text" name="adveob" id="adveob16" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
								&nbsp;&nbsp;TO&nbsp;&nbsp;
								<input type="text" name="adveob" id="adveob16a" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
							</td>
						</tr>
						-->
						<tr>
							<td class="tdclass6_1" colspan="2">17. NAME OF REFERRING PROVIDER OR OTHER SOURCE <br>
								<!-- 
								<select  name="adveob" id="adveob17" class="input001_1" style="background:#DCDCDC;"  onfocus="defaultchosedate();"> 
								<option value="DN">DN - Referring Provider</option>
								<option value=""></option>
								</select> <br><br>
								-->
								<input type="text" name="adveob" id="adveob17_1" class="input001_1"  value="${eobdetailobj.referring_provider_fname }">
								<input type="text" name="adveob" id="adveob17_2" class="input001_1" value="${eobdetailobj.referring_provider_mname }">
								<input type="text" name="adveob" id="adveob17_3" class="input001_1" value="${eobdetailobj.referring_provider_lname}">
								<input type="text" name="adveob" id="adveob17_4" class="input001_1" value="${eobdetailobj.referring_provider_suffix }">
							</td>
							<td class="tdclass6_1" colspan="2">
								<!-- 17a. 
								&nbsp;&nbsp;<input type="text" name="adveob" id="adveob17a" size="2" class=" ">
								&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="adveob" id="adveob17a1" class="input001"><br> <br> -->
								17b.
								&nbsp;&nbsp;NPI
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<input type="text" name="adveob" id="adveob17b" value="${eobdetailobj.referring_group_npi }" class="input001_1"><br>
							</td>
							<td class="tdclass6_1" colspan="2">
								<!-- 
								18.HOSPITALIZATION DATES RELATED TO CURRENT SERVICES TO  <br>
								<input type="text" name="adveob" id="adveob18" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
								&nbsp;&nbsp;TO&nbsp;&nbsp;
								<input type="text" name="adveob" id="adveob18a" class="input001_1"  onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">
								-->
							</td>
						</tr>
						<!-- 
						<tr>
							<td class="tdclass6_1" colspan="4">
								19. ADDITIONAL CLAIM INFORMATION (Designated by NUCC) <br><input type="text" name="adveob" id="adveob19" size="80"  onfocus="defaultchosedate();" class="">
							</td>
							<td class="tdclass6_1" colspan="1">
								20. OUTSIDE LAB? <br> 
								<select  name="adveob" id="adveob20" class="input001_1" style="background:#DCDCDC;"> 
									<option value="Y">Yes</option>
									<option value="N">No</option>
								</select>
							</td>
							<td class="tdclass6_1" colspan="1"> $ CHARGES <br><input type="text" name="adveob" id="adveob20a" size="20" class="">
							</td>
						</tr>
						-->
						<tr>
							<td class="tdclass6_1" colspan="4" rowspan="2">
								21. DIAGNOSIS OR NATURE OF ILLNESS OR INJURY 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								ICD Ind.
								<select  name="adveob" id="adveob21" class="input001_1" style="background:#DCDCDC;"> 
									<option value="ICD10">ICD - 10</option>
									<option value=""></option>
								</select>
								<br><br>
								&nbsp;&nbsp;A.&nbsp;&nbsp;
								<input type="text" name="adveob" id="adveob21A" value="${eobdetailobj.diagnosis_code_1 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								B.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21B" value="${eobdetailobj.diagnosis_code_2 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								C.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21C" value="${eobdetailobj.diagnosis_code_3 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								D.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21D" value="${eobdetailobj.diagnosis_code_4 }" class="input001_1">
								<br><br>
								&nbsp;&nbsp;E.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21E" value="${eobdetailobj.diagnosis_code_5 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								F.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21F" value="${eobdetailobj.diagnosis_code_6 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								G.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21G" value="${eobdetailobj.diagnosis_code_7 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								H.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21H" value="${eobdetailobj.diagnosis_code_8 }" class="input001_1">
								<br><br>
								&nbsp;&nbsp;I.&nbsp;&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21I" value="${eobdetailobj.diagnosis_code_9 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								J.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21J" value="${eobdetailobj.diagnosis_code_10 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								K.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21K" value="${eobdetailobj.diagnosis_code_11 }" class="input001_1">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								L.&nbsp;&nbsp;<input type="text" name="adveob" id="adveob21L" value="${eobdetailobj.diagnosis_code_12 }" class="input001_1">
								<br><br>
							</td>
							<td class="tdclass6_1" colspan="1">
								<!-- 22. RESUBMISSION CODE <br><input type="text" name="adveob" id="adveob22" size="s20" class="">-->
							</td>
							<td class="tdclass6_1" colspan="1">
								<!--  ORIGINAL REF. NO. <br><input type="text" name="adveob" id="adveob22a" size="s20" class="">-->
							</td>
						</tr>
						<tr>
							<td class="tdclass6_1" colspan="2">
								23.  PRIOR AUTHORIZATION NUMBER <br>
								<input type="text" name="adveob" id="adveob23" value="${eobdetailobj.prior_authorization_number }" size="s20" class="input001_1" >
							</td>
						</tr>	
						<!---------------------------detail Line --------------------------->
						<tr>
							<td class="tdclass6_1" colspan="6">
								<div id="addlines" name="addlines" >
								   <table  width="100%" border="0" cellpadding="10" cellspacing="0">
								   		<tr> 
											<td>
												<table cellspacing="1" cellpadding="3" border="0" bgcolor="#0089C7">
													<tr>
														<td class="tdclass6_1" colspan="1"><!-- A.DATES OF SERVICE-->
														</td>
														<td class="tdclass6_1" colspan="1">B.POS
														</td>
														<td class="tdclass6_1" colspan="1"><!-- C.EMG-->
														</td>
														<td class="tdclass6_1" colspan="1">D.PROC
														</td> 
														<td class="tdclass6_1" colspan="1">C.MODIFIER
														</td>
														<td class="tdclass6_1" colspan="1">E.DIAG
														</td>
														<td class="tdclass6_1" colspan="1">F.CHARGE
														</td>
														<td class="tdclass6_1" colspan="1">G.D/U
														</td>
														<!-- 
														<td class="tdclass6_1" colspan="1">H.EPSDT
														</td>
														
														<td class="tdclass6_1" colspan="1">I.QUAL
														</td>
														<td class="tdclass6_1" colspan="1">J.PROVIDER ID
														</td>
														 -->
													</tr>
												    <s:iterator value="eobdetailList" var ="var" status  ="statu">
												   		<tr>
															<td class="tdclass6_1" colspan="11">
																${statu.count}.
															</td>
														</tr>
														<tr>
															<td class="tdclass6_1" colspan="1"><!-- <input type="text" size="8" name="dosfdate" id="dosfdate${statu.count}"  value="${A}" class="dosfdate" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																								<input type="text" size="8" name="dosldate" id="dosldate${statu.count}"  value="${B}" class="dosldate" onmouseover="" onmouseout="hiddenchosedate();"  onclick="chosedate(this.id);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
															</td>
															<td class="tdclass6_1" colspan="1"><input type="text" style="width:50px;" name="POS" id="POS${statu.count}" class="input001_1" onfocus="defaultchosedate();" value="${place_of_service_line}">
															</td>
															<td class="tdclass6_1" colspan="1"><!-- <input type="text" size="2" name="EMG" id="EMG${statu.count}" class=""  value="${D}"> -->
															</td>
															<td class="tdclass6_1" colspan="1"><input type="text" style="width:80px;" name="PROC" id="PROC${statu.count}" class="input001_1" value="${cpt_code}">
															</td>
															<td class="tdclass6_1" colspan="1">
																<input type="text" style="width:160px;" name="MODIFIER" id="MODIFIER${statu.count}" class="input001_1" value="${fn:replace(cpt_modifier,',',' ')}">
																<!-- <input type="text" size="2" name="MODIFIERa" id="MODIFIERa${statu.count}" class="" value="${G}">
																<input type="text" size="2" name="MODIFIERb" id="MODIFIERb${statu.count}" class="" value="${H}">
																<input type="text" size="2" name="MODIFIERc" id="MODIFIERc${statu.count}" class="" value="${I}"> -->
															</td>
															<td class="tdclass6_1" colspan="1"><input type="text" style="width:80px;" name="DIAG" id="DIAG${statu.count}" class="input001_1" value="${diagcodepointer}">
															</td>
															<td class="tdclass6_1" colspan="1"><input type="text" style="width:80px;" name="CHARGE" id="CHARGE${statu.count}" class="input001_1" value='$<fmt:formatNumber value="${charge_amount}" pattern="#0.00"/>'>
															</td>
															<td class="tdclass6_1" colspan="1"><input type="text" style="width:40px;" name="DU" id="DU${statu.count}" class="input001_1" value="${totalunitsused}">
															</td>
															<!--
															<td class="tdclass6_1" colspan="1"><input type="text" size="2" name="EPSDT" id="EPSDT${statu.count}" class="" value="${measurement_code}">
															</td>
															 
															<td class="tdclass6_1" colspan="1">NPI
															</td>
															<td class="tdclass6_1" colspan="1"><input type="text" size="15" name="PROVIDER" id="PROVIDER${statu.count}" class="" value="${rendering_group_npi}">
															</td>
															 -->
														</tr>
													</s:iterator>
													<input type="hidden" name="linestotal" id="linestotal" value="<%=(String) request.getAttribute("Lines_total")%>" />
												</table>	
											</td>
										</tr>	
									</table>	
								
								</div>
								<!-- 
								&nbsp;&nbsp;&nbsp;<input type="button" id="addLinebutton" name="addLinebutton" value="Add Line" class="button_3">
								<input type="button" id="delLinebutton" name="delLinebutton" value="Delete Line" class="button_3"> 
								-->
								<br><br>
							</td>
						</tr>
						<!---------------------------detail Line --------------------------->
						<tr>
							<td class="tdclass6_1" colspan="2">25. FEDERAL TAX I.D. NUMBER <br>
								<input type="text" name="adveob" id="adveob25" value="${eobdetailobj.billing_taxid }" SIZE="20" class="input001_1">
									<!-- <select  name="adveob" id="adveob25a" class="input001_1" style="background:#DCDCDC;"> 
									<option value="EIN">EIN</option>
									<option value=""></option>
									</select>-->
								<br><br>
							</td>
							<td class="tdclass6_1" colspan="1">
								26. PATIENT'S ACCOUNT NO. <br>
								<input type="text" name="adveob" id="adveob26" value="${eobdetailobj.patient_account_number }" class="input001_1"><br><br>
							</td>
							<td class="tdclass6_1" colspan="1">
								27. ACCEPT ASSIGNMENT? <br>
								<select  name="adveob" id="adveob27" class="input001_1" style="background:#DCDCDC;"> 
									<option value="Y" <c:if test="${eobdetailobj.medicare_assignment eq 'Y' }">selected</c:if>>Yes</option>
									<option value="N" <c:if test="${eobdetailobj.medicare_assignment eq 'N' }">selected</c:if>>No</option>
								</select> <br><br>
							</td>
							<td class="tdclass6_1" colspan="2">
								28.  TOTAL CHARGE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<!-- 29. AMOUNT PAID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
								<!-- 30. Rsvd for NUCC Use--><br>
								$&nbsp;<input type="text" name="adveob" id="adveob28" value="<fmt:formatNumber value="${eobdetailobj.total_charge_amount }" pattern="#0.00"/>" class="input001_1"> 
								<!--&nbsp;&nbsp;&nbsp;&nbsp;$&nbsp;<input type="text" name="adveob" value="<fmt:formatNumber value="${eobdetailobj.total_paid_amount }" pattern="#0.00"/>" id="adveob29" class="input001_1"> -->
								<!-- &nbsp;&nbsp;&nbsp;&nbsp;$&nbsp;<input type="text" name="adveob" id="adveob30" class="input001_1">-->
								<br><br>
							</td> 
						</tr>
						<tr>
							<td class="tdclass6_1" colspan="2"  >31. ORDERING PHYSICIAN 
							    <br><br>NPI <input type="text" name="adveob" id="adveob32npi" size="20" class="input001_1" value="${eobdetailobj.rendering_group_npi}">												
								<br><br><input type="text" name="adveob" id="adveob31" class="input001_1" value="${eobdetailobj.rendering_provider_fname }" onfocus="" onblur="" style="">
								<input type="text" name="adveob" id="adveob31_1" class="input001_1" value="${eobdetailobj.rendering_provider_mname }" onfocus="" onblur="" style="">
								<br><br><input type="text" name="adveob" id="adveob31_2" class="input001_1" value="${eobdetailobj.rendering_provider_lname }" onfocus="" onblur="" style="">
								<input type="text" name="adveob" id="adveob31_3" class="input001_1" value="${eobdetailobj.rendering_provider_suffix }" onfocus=""  onblur="" style="">
								<!-- <br><br><input type="text" name="adveob" id="adveob31_4" class="input001_1" value="Date"  onfocus="changeStyle(this.id);"  onblur="defaultStyle(this.id);" style="color:#dcdcdc;" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);">-->
							</td>
							<td class="tdclass6_1" colspan="2">32. SERVICE FACILITY LOCATION INFORMATION 
								<br>Name <input type="text" name="adveob" id="adveob32" value="${eobdetailobj.service_facility_name }" style="width:190px;" class="input001_1" onfocus="defaultchosedate();"> 
								<br><br>Address <input type="text" name="adveob" id="adveob32a" value="${eobdetailobj.service_facility_address1 }"  style="width:190px;" class="input001_1" onfocus="defaultchosedate();"> 
								<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="adveob" id="adveob32a1" value="${eobdetailobj.service_facility_address2 }"  style="width:190px;" class="input001_1" onfocus="defaultchosedate();"> 
								<br><br>City <input type="text" name="adveob" id="adveob32b" value="${eobdetailobj.service_facility_city }" class="input001_1" style="width:150px;" onfocus="defaultchosedate();"> 
								<select  name="adveob" id="adveob32b1" class="input001_1" style="width:50px;background:#DCDCDC;" onfocus="defaultchosedate();"> 
									<option value="IA" <c:if test="${eobdetailobj.service_facility_st  eq 'IA'}">selected</c:if>>IA</option>
									<option value="" <c:if test="${eobdetailobj.service_facility_st  eq 'IC'}">selected</c:if>></option>
									<option value="" <c:if test="${eobdetailobj.service_facility_st  eq 'IB'}">selected</c:if>></option>
									<option value="" <c:if test="${eobdetailobj.service_facility_st  eq 'other'}">selected</c:if>>other</option>
								</select>
								<br><br>Zip <input type="text" name="adveob" id="adveob32c" value="${eobdetailobj.service_facility_zip }" class="input001_1" onfocus="defaultchosedate();"> 
								<!--  <br><br>Phone <input type="text" name="adveob" id="adveob32d" class="input001_1" onfocus="defaultchosedate();">-->
							</td>
							<td class="tdclass6_1" colspan="2">33.  SUBMITTER INFORMAITON 
							    <br>Name <input type="text" name="adveob" id="adveob33" value="${eobdetailobj.billing_provider_lname }" style="width:190px;" class="input001_1" onfocus="defaultchosedate();"> 
								<br><br>Contact First Name: <input type="text" name="adveob" id="adveob33a" value="${eobdetailobj.billing_provider_address1 }" style="width:150px;" class="input001_1" onfocus="defaultchosedate();"> 
								<br><br>Contact Last Name:
								<input type="text" name="adveob" id="adveob33a1" value="${eobdetailobj.billing_provider_address2 }"  style="width:150px;" class="input001_1" onfocus="defaultchosedate();"> 
								<!-- <br><br>City <input type="text" name="adveob" id="adveob33b" value="${eobdetailobj.billing_provider_city }" class="input001_1" onfocus="defaultchosedate();"> 
								<select  name="adveob" id="adveob33b1" class="input001_1" style="background:#DCDCDC;" onfocus="defaultchosedate();"> 
									<option value="IA" <c:if test="${eobdetailobj.billing_provider_st  eq 'IA'}">selected</c:if>>IA</option>
									<option value="" <c:if test="${eobdetailobj.billing_provider_st  eq 'IB'}">selected</c:if>></option>
									<option value="" <c:if test="${eobdetailobj.billing_provider_st  eq 'IC'}">selected</c:if>></option>
									<option value="" <c:if test="${eobdetailobj.billing_provider_st  eq 'other'}">selected</c:if>>other</option>
								</select>
								<br><br>Zip <input type="text" name="adveob" id="adveob33c" value="${eobdetailobj.billing_provider_zip }" class="input001_1" onfocus="defaultchosedate();">  -->
								 <br><br>Phone <input type="text" name="adveob" id="adveob33d" value="${eobdetailobj.billing_contact_number }" class="input001_1" style="width:150px;" onfocus="defaultchosedate();">
							     <br><br>Fax <input type="text" name="adveob" id="adveob33npi" value="${eobdetailobj.billing_group_npi }" style="width:190px;" class="input001_1">
							     <br><br>Email Address <input type="text" name="adveob" id="adveob33aa" value="${eobdetailobj.billing_provider_city }" style="width:190px;" class="input001_1">
							</td>
						</tr>
						<tr>
							<td class="tdclass6_1" colspan="1"  >
								<!-- 
								a. NPI 
								<br><input type="text" name="adveob" id="adveob31aa" size="20" class="">
								-->
							</td> 
							<td class="tdclass6_1" colspan="1"  >
								<!-- B. 
								<br><input type="text" name="adveob" id="adveob31bb" size="20" class="">
								-->
							</td>
							<td class="tdclass6_1" colspan="1"  >
								a. NPI 
								<br><input type="text" name="adveob" id="adveob32aa" value="${eobdetailobj.service_facility_group_npi }" size="20" class="input001_1">
							</td> 
							<td class="tdclass6_1" colspan="1"  >
								<!-- B. 
								<br><input type="text" name="adveob" id="adveob32bb" size="20" class="">
								-->
							</td>
							<td class="tdclass6_1" colspan="1"  >
							  <!-- 
								a. Fax 
								<br><input type="text" name="adveob" id="adveob33aa" value="${eobdetailobj.billing_group_npi }" size="20" class="">
							  -->
							</td> 
							<td class="tdclass6_1" colspan="1"  ><br><!-- B. 
								<br><input type="text" name="adveob" id="adveob33bb" size="20" class="">-->
							<br></td>
						</tr>
					</table>			   	
				</td>
			</tr>	
		</table>					
	</body>
	
</html>
