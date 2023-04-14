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
				<td  >
										<table cellspacing="1" cellpadding="3" border="0" bgcolor="#0089C7">
											<tr>
												<td class="tdclass6_1" colspan="1"><!-- A.DATES OF SERVICE-->
												</td>
												<td class="tdclass6_1" colspan="1"><span class="mess21">B.POS</span>
												</td>
												<td class="tdclass6_1" colspan="1"><!-- C.EMG-->
												</td>
												<td class="tdclass6_1" colspan="1"><span class="mess18">C.PROC</span>
												</td> 
												<td class="tdclass6_1" colspan="1"><span class="mess19">D.MODIFIER</span>
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
												 -->
												<!--
												<td class="tdclass6_1" colspan="1">I.QUAL
												</td>
												<td class="tdclass6_1" colspan="1">J.PROVIDER ID
												</td>
												-->
											</tr>
											
										   <s:iterator value="tempLines" var ="var" status  ="statu">
										   		<tr>
													<td class="tdclass6_1" colspan="11">
													${statu.count}.
													</td>
												</tr>
												<tr>
													<td class="tdclass6_1" colspan="1"><!-- <input type="text" size="8" name="dosfdate" id="dosfdate${statu.count}"  value="${A}" class="dosfdate" onmouseover="" onmouseout="hiddenchosedate();" onclick="chosedate(this.id);"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																						<input type="text" size="8" name="dosldate" id="dosldate${statu.count}"  value="${B}" class="dosldate" onmouseover="" onmouseout="hiddenchosedate();"  onclick="chosedate(this.id);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
													</td>
													<td class="tdclass6_1" colspan="1"><input type="text" style="width:50px;" name="POS" id="POS${statu.count}" maxlength="3" class="input001_1" onfocus="defaultchosedate();" value="${C}">
													</td>
													<td class="tdclass6_1" colspan="1"><!-- <input type="text" size="2" name="EMG" id="EMG${statu.count}" class=""  value="${D}"> -->
													</td>
													<td class="tdclass6_1" colspan="1"><input type="text" style="width:80px;" name="PROC" id="PROC${statu.count}" class="input001_1" value="${E}">
													</td>
													<td class="tdclass6_1" colspan="1">
																						<input type="text" style="width:40px;" name="MODIFIER" id="MODIFIER${statu.count}" class="input001_1" value="${F}">
																						<input type="text" style="width:40px;" name="MODIFIERa" id="MODIFIERa${statu.count}" class="input001_1" value="${G}">
																						<input type="text" style="width:40px;" name="MODIFIERb" id="MODIFIERb${statu.count}" class="input001_1" value="${H}">
																						<input type="text" style="width:40px;" name="MODIFIERc" id="MODIFIERc${statu.count}" class="input001_1" value="${I}">
													</td>
													<td class="tdclass6_1" colspan="1"><input type="text" style="width:80px;" name="DIAG" id="DIAG${statu.count}" class="input001_1" value="${J}">
													</td>
													<td class="tdclass6_1" colspan="1">
													   <input type="text" style="width:80px;" name="CHARGE" id="CHARGE${statu.count}" class="chargeamt input001_1" value="${K}">
													</td>
													<td class="tdclass6_1" colspan="1"><input type="text" style="width:40px;" name="DU" id="DU${statu.count}" class="input001_1" value="${L}">
													</td>
													<!-- 
													<td class="tdclass6_1" colspan="1"><input type="text" size="2" name="EPSDT" id="EPSDT${statu.count}" class="" value="${M}">
													</td>
													-->
													<!-- 
													<td class="tdclass6_1" colspan="1">NPI
													</td>
													<td class="tdclass6_1" colspan="1"><input type="text" size="15" name="PROVIDER" id="PROVIDER${statu.count}" class="" value="${N}">
													</td>
													 -->
												</tr>
											</s:iterator>
											 
												
												<input type="hidden" name="linestotal" id="linestotal" value="<%=(String) request.getAttribute("Lines_total")%>" /> 
										
										</table>	
				</td>
			</tr>	
		</table>					
	</body>
	 
</html>
