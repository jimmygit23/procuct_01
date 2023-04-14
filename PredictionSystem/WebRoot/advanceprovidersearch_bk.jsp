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
    	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/xmlajax.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.PrintArea.js"></script>
		 
		 
		<style type='text/css'>
		.divcss5 a,.divcss5 span{display:none; text-decoration:none}
		.divcss5:hover span{ display:block;position:absolute; bottom:-50; right:300;color:#FFF;width:300px; z-index:999;height:36px; line-height:36px; background:#000;filter:alpha(opacity=60);-moz-opacity:0.5;opacity: 0.5;}
		</style> 

<style> 
	.demo{
        width:200px;
        height:100px;
        position:absolute;
        border:2px solid #0089C7;
        background:#f3f9f1;
        border-radius:8px;
        box-shadow: 5px 5px 5px #057748;
        color:#0089C7;
    }
	.shixin{
        width:0;
        height:0;
        border:10px solid transparent;
        border-bottom-color:#0089C7;
        position: relative;
        top: -21%;
        left:15%;
    }
	.kongxin{
        width:0;
        height:0;
        border:10px solid transparent;
        border-bottom-color:#fff;
        position: relative;
        top: -39%;
        left:15%;
    }
	</style>
	</head>

													


 <script type="text/javascript"> 
 //setTimeout(function() {  $("#message").css("display","block");  }, 1000);
 //setTimeout(function() {  $("#message").css("display","none");  }, 8000);
 </script>
 <div id="printAreaGoble">
 1111
 		<div id="advEstimate" class="advs"  style="display:none;position:absolute; z-index:99999; background:white ;filter: alpha(opacity=100); opacity:1;border=0;width:100%;height:100%;bottom:0px;">	
		
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
			 <td width="810px" height="50px">Primary Medical Procedure</td><td width="180px" style="color:#0089C7;font-size:24px;">$0</td><td width="160px" style="color:#ca0a0a;font-size:24px;">$0</td>
			 </tr>
			 <tr>
			 <td colspan="3"  height="300px"></td>
			 </tr>
			 <tr>
			 <td  height="50px" colspan="3" style="color:#0089C7;font-size:14px;align:right;right:50px;" align="right"><!-- see out-of-network Reimbursement --></td>
			 </tr>
			 </table>
			 </div>
			 
			 
			  
			 <div style="display:block;left:350px;top:605px;position:absolute; z-index:999991;color:ffffff;width:160px;height:30px;font-size:24px;">
			 Total Cost
			 </div>
			 <div style="display:block;left:1100px;top:605px;position:absolute; z-index:999991;border-left:20px solid #0089C7;border-top:20px solid #0089C7;background-color:0089C7;color:ffffff;filter: alpha(opacity=100); opacity:1;width:160px;height:30px;font-size:24px;cursor:pointer;border-radius:10px;">
			 $0
			 </div>
			 <div style="display:block;left:1300px;top:605px;position:absolute; z-index:999991;border-left:20px solid #ca0a0a;border-top:20px solid #ca0a0a;background-color:ca0a0a;color:ffffff;filter: alpha(opacity=100); opacity:1;width:160px;height:30px;font-size:24px;cursor:pointer;border-radius:10px;">
			 $0
			 </div> 
		</div>
	</div>	
		
		<div id="advs" class="advs"  style="display:none;position:absolute; z-index:9999999; background:white ;filter: alpha(opacity=80); opacity:0.8;border=0;width:100%;height:100%;bottom:0px;">	
			<img style="position:absolute; z-index:9999999;width:32px;height:32px;top:50%;left:50%" src="<%=request.getContextPath()%>/images/wait.gif" alt="wait" >
		</div>
		<div id="gettop" class="gettop"  style="cursor:pointer;display:none;position:absolute; z-index:9999; border=0;color:orange;width:55px;height:62px;bottom:0px;top:90%;right:5%">	
			<img style="width:55px;height:62px;" src="<%=request.getContextPath()%>/image/jt.png" alt="go top" ><br><br>
			Go Top
		</div>
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
					
					
					
	
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
								<!-- provider start -->
								<div id="showcategory" align="center"></div>
								 
								<div align="center">
									<form name="RequestForm" id="RequestForm" action="" method="post" onSubmit= "getselectValue()">
										<table cellspacing="0" cellpadding="0" border="0">
											<tbody>
												<tr>
													<td colspan="3" bgcolor="#f3f3f3">
													<div id="showerrors" style="color:ff0000;display:none;">Your search could not be processed. Please double check your search criteria and try again.</div>
													<div id="showerrorPro" style="color:ff0000;display:none;">*&nbsp;Please enter procedure code or description!</div>
													<div id="showerrorPpo" style="color:ff0000;display:none;">*&nbsp;Please choose a provider network!</div>
													<div id="showerrorZipcode" style="color:ff0000;display:none;">*&nbsp;Need zip code!</div>
													<div id="showerrorSt" style="color:ff0000;display:none;">*&nbsp;Please choose state!</div>
													<div id="showerrorTaxid" style="color:ff0000;display:none;">*&nbsp;Need NPI number!</div>
													<br><br>
													</td>
												</tr>
												<tr>
													<td bgcolor="0089C7" align="left"><img src="<%=request.getContextPath()%>/newimages/design/table-empty-corner-upper.gif"></td>
													<td bgcolor="0089C7"><img src="<%=request.getContextPath()%>/newimages/blank.gif"></td>
													<td bgcolor="0089C7" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-empty-corner-upper.gif"></td>
												</tr>
												<tr>
													<td valign="top" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif" align="left"><img src="<%=request.getContextPath()%>/newimages/design/table-corner-ul-0089C7.gif"></td>
													<th class="Table2Title" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif"><font color="ffffff"><font size="+1">Price Comparison</font></font></th>
													<td valign="top" bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/top-bg-upper-0089C7.gif" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-corner-ur-0089C7.gif"></td>
													<td rowspan="3" width="6" valign="top" background="<%=request.getContextPath()%>/newimages/design/table-shadow-bg-right.gif" align="right"><img src="<%=request.getContextPath()%>/newimages/design/table-shadow-corner-ur.gif"></td>
												</tr>
												<tr>
													<td colspan="3" bgcolor="0089C7">
														<table cellspacing="1" cellpadding="3" border="0">
															<tbody>
																<tr>
																	<td colspan="3" style="padding:1px" bgcolor="ffffff">
																		<span style="color:ff0000;">*</span>
																		<strong>Procedure Code or Description</strong>
																		<span style="color:ff0000;"> (Please enter this first)</span>
																	</td>
																</tr>
																 
																<tr style="padding:4px">
																	<td colspan="3" bgcolor="ffffff">
																		<input type="text" name="Provcode" id="Provcode" value="" size="100" onchange="textProvcode();" >
																	</td>
																</tr>
																<tr style="padding:4px">
																	<td colspan="3" bgcolor="ffffff">
																		<div id="procoderesault"></div>
																		<br><br>
																	</td>
																</tr>
														<tr><td >
						<!-- divprosearch -->	<div id="divprosearch" style="display: none;" >
						Procedure Code:<input type="text" name="ProvcodeC" id="ProvcodeC" value="" size="30"   >
						 				<input type="hidden" name="ProvcodeCdesc" id="ProvcodeCdesc" value="">
																	
												<table >
																<tr style="padding: 2px">
																	<td style="padding-left: 10px;color:ffffff;" width="320px" >
																	
																		<input type="radio" value="Location" name="Search"   onclick="SearchTax(this.value);" checked> 
																		Location Search 
																	</td>
																	<td width="400px" b  colspan="2" style="padding-left: 10px;color:ffffff;">
																		<input type="radio" value="Taxid" name="Search"   onclick="SearchTax(this.value);" > 
																		NPI Number Search <!-- Tax ID Search  -->
																	</td>
																	
																	 
																</tr>
																<!-- <tr  bgcolor="ffffff">
																	<td colspan="3" style="padding:1px" bgcolor="ffffff">
																	<div id="divtax" style="display: none;">
																			<span style="color:ff0000;">*</span><strong>Tax  ID</strong> &nbsp;
																			<input type="text" name="taxid" value="">
																	</div>
																	</td>
																</tr> -->
																
																
																
																<tr>
																	<td colspan="3" style="padding: 1px" bgcolor="ffffff">
																	
																		<div id="divtax" style="display: none;">
																				<span style="color:ff0000;">*</span><strong>NPI Number</strong><!-- <strong>Tax  ID</strong> --> &nbsp;
																				<input type="text" name="taxid" id="taxid" value="">
																				<br><br>
																		</div>
																		
																		<div id="divlocation" style="display: block;">
																		<table >
																		<tr>
																			<td colspan="3" style="padding:1px" bgcolor="ffffff">
																				<span style="color:ff0000;">*</span><strong>Choose a location </strong>
																			</td>
																		</tr>
																		<tr style="padding: 4px">
																			<td colspan="3" bgcolor="ffffff">
																				<input type="radio" name="state" value="zip" onclick="ShowzipInfo()" checked>Zip
																				<input type="radio" name="state" value="state" onclick="HidezipInfo()" >State
																			</td>
																		</tr> 
																		<tr style="padding: 4px" id="zipInfo">
																			<td colspan="3" bgcolor="ffffff">
																				<div id="divzip">
																					<span style="color:ff0000;">&nbsp;&nbsp;*</span><strong>Zip Code</strong>
							    													<input type="text" name="Zip"  id="Zip"  value="">
							    													<span style="color:ff0000;">*</span><strong>within</strong>
							    													<select style="font-family: monospace" name="Radius" id="Radius">
							    														<option value="1">1</option>
							    														<option value="3">3</option>
							    														<option value="5">5</option>
																						<option value="10">10</option>
																						<option value="15">15</option>
																						<option value="20">20</option>
																						<option value="25">25</option>
																						<option value="30">30</option>
																						<option value="35">35</option>
																						<option value="40">40</option>
																						<option value="45">45</option>
																						<option value="50">50</option>
							    													</select>
							    													<strong>miles</strong>
							    													<br><br>
						    													</div>
																			</td>
																		</tr>
																		<tr style="padding:4px" id="stateInfo">
																			<td colspan="3" bgcolor="ffffff">
																				<div id="divst" style="display: none;">
																				<span style="color:ff0000;">&nbsp;&nbsp;*</span><strong>State</strong>
																				<select name="st" id="st">  
																					<option selected value=""></option>
																					<option value="AA">AA</option>
																					<option value="AE">AE</option>
																					<option value="AK">AK</option>
																					<option value="AL">AL</option>
																					<option value="AP">AP</option>
																					<option value="AR">AR</option>
																					<option value="AS">AS</option>
																					<option value="AZ">AZ</option>
																					<option value="CA">CA</option>
																					<option value="CO">CO</option>
																					<option value="CT">CT</option>
																					<option value="DC">DC</option>
																					<option value="DE">DE</option>
																					<option value="FL">FL</option>
																					<option value="FM">FM</option>
																					<option value="GA">GA</option>
																					<option value="GU">GU</option>
																					<option value="HI">HI</option>
																					<option value="IA">IA</option>
																					<option value="ID">ID</option>
																					<option value="IL">IL</option>
																					<option value="IN">IN</option>
																					<option value="KS">KS</option>
																					<option value="KY">KY</option>
																					<option value="LA">LA</option>
																					<option value="MA">MA</option>
																					<option value="MD">MD</option>
																					<option value="ME">ME</option>
																					<option value="MH">MH</option>
																					<option value="MI">MI</option>
																					<option value="MN">MN</option>
																					<option value="MO">MO</option>
																					<option value="MP">MP</option>
																					<option value="MS">MS</option>
																					<option value="MT">MT</option>
																					<option value="NC">NC</option>
																					<option value="ND">ND</option>
																					<option value="NE">NE</option>
																					<option value="NH">NH</option>
																					<option value="NJ">NJ</option>
																					<option value="NM">NM</option>
																					<option value="NV">NV</option>
																					<option value="NY">NY</option>
																					<option value="OH">OH</option>
																					<option value="OK">OK</option>
																					<option value="OR">OR</option>
																					<option value="PA">PA</option>
																					<option value="PR">PR</option>
																					<option value="PW">PW</option>
																					<option value="RI">RI</option>
																					<option value="SC">SC</option>
																					<option value="SD">SD</option>
																					<option value="TN">TN</option>
																					<option value="TX">TX</option>
																					<option value="UT">UT</option>
																					<option value="VA">VA</option>
																					<option value="VI">VI</option>
																					<option value="VT">VT</option>
																					<option value="WA">WA</option>
																					<option value="WI">WI</option>
																					<option value="WV">WV</option>
																					<option value="WY">WY</option>
																				</select>
																				</div>
																			</td>
																		</tr>
																		</table>
																		</div>
																	</td>
																</tr>
																
																
																
																				<tr>
																					<td colspan="3" style="padding:1px" bgcolor="ffffff">
																						<span style="color:ff0000;">&nbsp;</span>
																						<strong>Choose a provider network</strong>
																						<span style="color:ff0000;"></span>
																					</td>
																				</tr>
																				<tr style="padding: 2px">
																					<td  colspan="3" style="padding-left: 10px" width="720px" bgcolor="ffffff">
																						<select name="ppo" id="ppo"  style="WIDTH: 350px">
																							<option value="0" selected=""></option>
																							<s:iterator value="adppoobj" var ="var" status  ="statu">
																							<option value="${ppo},${ppo_name}">${ppo_name}-${ppo}</option>
																							</s:iterator>
																						</select><br><br>
																					</td>
																				</tr>
																				
																<tr>
																	<td colspan="3" style="padding: 1px" bgcolor="ffffff">
																		<span style="color:ff0000;">&nbsp;</span><strong>Choose a provider type </strong>
																	</td>
																</tr>
																<tr>
																	<td colspan="3" bgcolor="ffffff"> 
																		<input type="radio" name="providerType" value="P" onclick="">Doctor or other healthcare professional 
																		<input type="radio" name="providerType" value="F" onclick="">Hospital, Lab, Imaging Center, Home Health  Center, etc.
																		<input type="radio" name="providerType" value="" onclick="" checked>All Providers
																		<br><br>
																	</td>
																</tr>
																<tr>
																	<td colspan="3" style="padding:1px;color:blue;" bgcolor="ffffff"><strong>&nbsp;Optional</strong></td>
																</tr>
																<tr>
																	<td colspan="3" style="padding-left:4px" bgcolor="ffffff"><strong>&nbsp;Doctor/Facility Name</strong></td>
																</tr>
																<tr style="padding:4px">
																	<td colspan="3" bgcolor="ffffff">
																		&nbsp;<input type="text" name="Provname" id="Provname" value="" size="100">
																		<!-- <span style="color:ff0000; font-size:12px">&nbsp;&nbsp;Please enter valid name </span> -->
																		<br><br>
																	</td>
																</tr>
																
																
																				
																				
																<tr>
																<td style="padding-left:4px" colspan="3" bgcolor="ffffff">
																<div id="divspeclist" style="display: block;">
																		<table>
																				
																				
																				
																				<tr>
																					<td style="padding-left:4px" colspan="3" bgcolor="ffffff"><strong> Choose Specialty </strong></td>
																				</tr>
																				<tr>
																					<td bgcolor="ffffff">
																						<div id="specalist"> 
																							<select style="HEIGHT:   200px;   WIDTH: 400px" multiple>															
																						     <option ></option>
																							</select>
																						</div>
																					</td>
																					<td bgcolor="ffffff" >
																						&nbsp;&nbsp;
																						<input type="button" id= "add" value="Add->" class="move" disabled>
																						&nbsp;&nbsp;
																						<input type="button" id= "del"  value="&lt;-Remove"  class="move" disabled>
																						&nbsp;&nbsp;
																					</td>
																					<td bgcolor="ffffff">
																					
																						<div id="specSelectlist"> 
																							<select style="HEIGHT:   200px;   WIDTH: 400px" multiple>															
																						     <option ></option>
																							</select>
																						</div>
																					</td>
																				</tr>
																		</table>
																</div>
																</td>
																</tr>	
														</table>		
										</div>	<!-- divprosearch -->	
										</td></tr>			
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
										<div  id="divsearchbutton">
										<table cellspacing="0" cellpadding="0" border="0">
											<tbody>
												<tr>
													<td class="Callout" bgcolor="f3f3f3"></td>
													<td bgcolor="f3f3f3"><img src="<%=request.getContextPath()%>/newimages/blank.gif" width="4"></td>
													<td bgcolor="0089C7" align="right"><img src="<%=request.getContextPath()%>/newimages/design/button-left-ffcc00.gif"></td>
													<td bgcolor="0089C7" background="<%=request.getContextPath()%>/newimages/design/button-bg-ffcc00.gif" align="center"><image src="<%=request.getContextPath()%>/newimages/buttons/search.gif" alt="Search" border="0" onclick="searchsubmit('search');"></td>
													<td bgcolor="0089C7" align="left"><img src="<%=request.getContextPath()%>/newimages/design/button-right-ffcc00.gif"></td>
												</tr>
											</tbody>
										</table>
										</div>
									</form>
								</div>
	<P align = "left">
	<font size="-1">While we take great care to keep our provider directory complete and accurate, our network of participating physicians, practitioners and facilities may change.  To make sure that the physician of your choice still participates, you may contact the physician's office directly, or you can call the network directly at the phone number listed on the back of your America's Choice Identification Card.
	<p align = "left">
	<% //if loginarea = "M" then %>
	Please do not assume that all services provided by a participating physician, practitioner or facility will be covered under your health care
	policy or contract. It is your responsibility to verify that the services you receive are covered services. To verify your coverage, consult your <A href="BenefitSummary.asp">benefits summary</a> and <a href="spd.asp">specific plan document</a>.
	<% //end if %>
	</font>
	
								<table width="100%" border="0" cellpadding="10" cellspacing="0">
								<tr>
								<td >
									<div align="center">
									<table  width="1000"  bgcolor="" cellspacing="0" cellpadding="0" border="0">
											<input type="hidden" value="" id="filtertype">
											<tbody>
												<tr><td width="30%" ></td>
													<td width="20%" >&nbsp;&nbsp;<div  id="searchresaultsize" style="cursor:pointer;">Page:  
																					<select name="pagest" id="pagest">  
																					<option selected value="0">0</option>
																				</select>
																				</div>
													</td>
													<td>&nbsp;&nbsp;<div>filter：</div></td>
													<td>&nbsp;&nbsp;<div class="divcss5" id="filSpec" style="cursor:pointer;">&nbsp;&nbsp;Specialty&nbsp;&nbsp;|</div></td>
													<td>&nbsp;&nbsp;<div class="divcss5" id="filPrice" style="cursor:pointer;">&nbsp;&nbsp;Price&nbsp;&nbsp;|</div></td>
													<td>&nbsp;&nbsp;<div  class="divcss5" id="filDistance" style="cursor:pointer;">&nbsp;&nbsp;Distance&nbsp;&nbsp; </div></td>
													<td>&nbsp;&nbsp;&nbsp;&nbsp;<div  class="divcss5" id="showCart" style="cursor:pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Shopping Cart </div></td>
													<td><div  class="divcss5"  id="showCart2"  style="cursor:pointer;"><img  src="<%=request.getContextPath()%>/logoimg/gwc1.png" width="50" height="45" class=""></div>
													<div id="message" name="message" class="demo" style="display:none;">
											        <div class="shixin"></div>
											        <div class="kongxin"></div>
													<span class="message5">&nbsp;&nbsp;filter by Specialty</span>
													<span class="message1">&nbsp;&nbsp;filter by Price</span>
													<span class="message2">&nbsp;&nbsp;filter by Distance</span>
													<span class="message3">&nbsp;&nbsp;Show your Cart</span>
													<span class="message4">&nbsp;&nbsp;Add to your Cart</span>
													<br><br><br>
											    	</div>
											    	</td> 
												</tr>
											</tbody>
									</table>
									</div>
									<br><br><br><br>
									</td> 
								</tr>		
								</table>
								<!-- provider end -->
								
								<div id="addcartresault" style="display:none;"></div>	
								<div id="searchresault"></div>	
							</td>
						</tr>
					</table>	
					
						
				</td>
			</tr>	
		</table>	
		
		
			<input type="hidden" value="<%=(String) request.getAttribute("grpno")%>" id="grpno">
			<input type="hidden" value="<%=(String) request.getAttribute("empno")%>" id="empno">
			<input type="hidden" value="<%=(String) request.getAttribute("depno")%>" id="depno">			
	</body>
	<form name="SpecForm" id="SpecForm" action="" method="post">
	<input type="hidden" value="" id="Specidsel">
	<input type="hidden" value="" id="Specnamesel">
	<input type="hidden" value="" id="Specids">
	<input type="hidden" value="" id="Specnames">
	</form>
	
	<form name="errorForm" id="errorForm" action="" method="post">
	<input type="hidden" value="T" id="errors">
	<input type="hidden" value="T" id="errorPro">
	
	<input type="hidden" value="T" id="errorPpo">
	
	<input type="hidden" value="T" id="errorSearch">
	<input type="hidden" value="T" id="errorLocation">
	<input type="hidden" value="F" id="errorTaxid">
	
	<input type="hidden" value="T" id="errorZipSt">
	<input type="hidden" value="T" id="errorZipcode">
	<input type="hidden" value="F" id="errorSt">
	
	<input type="hidden" value="T" id="chooseZip">
	<input type="hidden" value="" id="subip">
	
	</form>
	
		<%
    	 String tempgrpno=(String) request.getAttribute("grpno");
    	 String tempempno=(String) request.getAttribute("empno");
    	 String tempdepno=(String) request.getAttribute("depno");
    	 
    	 %>
	<form name="estimateForm" id="estimateForm" action="<%=request.getContextPath()%>/claimfileimport/claimfileimport_showlist1.action" method="post">
	<!-- <form name="estimateForm" id="estimateForm" action="<%=request.getContextPath()%>/providersearch/providersearch_showspeccodecategory.action" method="post"> -->
		<input type="hidden" value="" id="dotype">
		<input type="hidden" value="" id="ssn">
		<input type="hidden" value="" id="dob">
		<input type="hidden" value="1" id="salt">
	</form>
	<input type="hidden" value="" id="tempstr">
	<script type="text/javascript"> 
	/*$("#idPrintGoble1").click(function(){
		 alert(1111);
		 var printAreaHtml = $("#printAreaGoble").html();
		 if(printAreaHtml == null){
			 $("#initPrintArea").printArea();
		 }else{
			 $("#printAreaGoble").printArea();
		 }
    });*/
    alert(2222);
    $('#printAreaGoble').on('click','#idPrintGoble1',function(){
    	alert(1111);
    });
    alert(3333);
	
	
	 //default do---->
	$("#divsearchbutton").css("display","none");
	 XMLAjax2("<%=path%>/providersearch/providersearch_showspeccodecategory.action" ,"","showcategory",sendseccesscode); 
	 //default do<----
	 //category---->
	  $("#gobackupper").click(function(){   
	  	document.getElementById('Provcode').value='';
	 	document.getElementById('subip').value='';  
		       		XMLAjax2("<%=path%>/providersearch/providersearch_showspeccodecategory.action" ,"","showcategory",sendseccesscode); 
		         }); 
	function gobackuppercategory(){ 
	  	document.getElementById('Provcode').value='';
	 	document.getElementById('subip').value=''; 
	 
	 	XMLAjax2("<%=path%>/providersearch/providersearch_showspeccodecategory.action" ,"","showcategory",sendseccesscode); 
	 }         
	 function choosecategory(catestr){ 
	  document.getElementById('Provcode').value="";
	 	var str='mstip='+catestr;
	 	 
	 	XMLAjax2("<%=path%>/providersearch/providersearch_showspeccodecategorysub.action" ,str,"showcategory",sendseccesscode); 
	 }
	 function choosecategorysub(catestr){ 
    	 document.documentElement.style.overflow = 'hidden';
	  $("#advs").css("display","block");
    	$("#advs").css("width","100%");
    	$("#advs").css("height","100%");
		var tttt=getScrollTop1();
    	$("#advs").css("top",tttt +"px");
	  //document.getElementById('Provcode').value="";
	 	document.getElementById('subip').value=catestr;
		  var str='subip='+catestr;
		  var temp_check=document.getElementById('Provcode').value; 
		  str=str+'&provcode='+temp_check;
			
		  XMLAjax2("<%=path%>/providersearch/providersearch_showspeccode.action" ,str,"procoderesault",sendseccesscode); 
	 
	 }
	 //category<----
	 
	 
	function jumplink(str,str2,str3,str4,str5,str6){ 
	 
    	 document.documentElement.style.overflow = 'hidden';
	  $("#advs").css("display","block");
    	$("#advs").css("width","100%");
    	$("#advs").css("height","100%");
		var tttt=getScrollTop1();
    	$("#advs").css("top",tttt +"px");
		/*
		,'${poscode}','${serviceamt}'
		var id=str.id;
		id=id.replace("link","");
		var tt_ssn=document.getElementById('ssn'+id).value;
		var tt_dob=document.getElementById('dob'+id).value;
		var tt_dotype=document.getElementById('type'+id).value;
		
		document.getElementById('ssn').value=tt_ssn;
		document.getElementById('dob').value=tt_dob;
		document.getElementById('dotype').value=tt_dotype;
	 		//alert(id);
	 		
	   	//$("#estimateForm").attr("action","<%=request.getContextPath()%>/claimfileimport/claimfileimport_showlist1.action");
	 	$("#estimateForm").submit();
	 	*/
	 	//$("#advEstimate").css("display","none");
	 	$("#advEstimate").css("display","block");
	 	var tttt=getScrollTop1();
	 	
    	$("#advEstimate").css("top",tttt +"px");
    	document.documentElement.style.overflow = 'hidden'; 
    	str=str.replace('<tr><td>Serviceamt:</td><td>$','')
    	str=str.replace('</td></tr>','')
    	
    	str2=str2.replace('<tr><td>Poscode:</td><td>','')
    	str2=str2.replace('</td></tr>','')
    	
    	 
    	 
		var str1='inrate='+str;
	 
		str1=str1+'&pricegrpno='+document.getElementById('grpno').value;
		str1=str1+'&priceempno='+document.getElementById('empno').value;
		str1=str1+'&pricedepno='+document.getElementById('depno').value;
		str1=str1+'&poscode='+str2;
		str1=str1+'&proccd='+document.getElementById('ProvcodeC').value;
		//str1=str1+'&Specids='+document.getElementById('Specids').value;
		str1=str1+'&Specids='+str3;
		str1=str1+'&Zipcode='+str4;
		str1=str1+'&proccdesc='+str5;
		str1=str1+'&ppoprovname='+str6;
	 
		XMLAjax2("<%=path%>/providersearch/providersearch_showinnetwork.action" ,str1,"advEstimate",sendseccessucr); 
	}
	function jumplink2(str,str2,str3,str4,str5,str6,str7){ 
    	 document.documentElement.style.overflow = 'hidden';
    	 
	  $("#advs").css("display","block");
    	$("#advs").css("width","100%");
    	$("#advs").css("height","100%");
		var tttt=getScrollTop1();
    	$("#advs").css("top",tttt +"px");
	
	 	$("#advEstimate").css("display","block");
	 	var tttt=getScrollTop1();
	 	
    	$("#advEstimate").css("top",tttt +"px");
    	document.documentElement.style.overflow = 'hidden'; 
    	str=str.replace('<tr><td>Serviceamt:</td><td>$','')
    	str=str.replace('</td></tr>','')
    	
    	str2=str2.replace('<tr><td>Poscode:</td><td>','')
    	str2=str2.replace('</td></tr>','')
    	
    	 
    	 
		var str1='inrate='+str;
	 
		str1=str1+'&pricegrpno='+document.getElementById('grpno').value;
		str1=str1+'&priceempno='+document.getElementById('empno').value;
		str1=str1+'&pricedepno='+document.getElementById('depno').value;
		str1=str1+'&poscode='+str2;
		str1=str1+'&proccd='+str6; 
		str1=str1+'&Specids='+str3;
		str1=str1+'&Zipcode='+str4;
		str1=str1+'&proccdesc='+str5;
		str1=str1+'&ppoprovname='+str7;
	 
		XMLAjax2("<%=path%>/providersearch/providersearch_showinnetwork.action" ,str1,"advEstimate",sendseccessucr); 
	}
	
	function sendseccessucr(idstr){
		        			 eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
    									$("#advs").css("display","none");	 
		        } 	
		        
	$("#advEstimate").click(function(){ 
    	document.documentElement.style.overflow = 'scroll';
	 	//$("#advEstimate").css("display","none");
	}); 
	
	
	function showmessage(str){ 
	 var t_id=str.id; 
	 var tt=t_id.replace('addCart','');
	 var t_check=document.getElementById('addCartType'+tt).value;
		if(t_check=='N'){
	  		$("#messageline"+t_id.replace('addCart','')).css("display","block");
		}

	}
	
	function hiddenmessage(str){ 
	 var t_id=str.id; 
		$("#messageline"+t_id.replace('addCart','')).css("display","none");
	}
	
	function delshowmessage(str){ 
 
	 var t_id=str.id; 
	  $("#delmessageline"+t_id.replace('addCart','')).css("display","block");
	

	}
	
	function delhiddenmessage(str){ 
	 var t_id=str.id; 
		$("#delmessageline"+t_id.replace('addCart','')).css("display","none");
	}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	function textProvcode(){
		 
		var temp_check=document.getElementById('Provcode').value;
		var temp_subip=document.getElementById('subip').value;
		if(temp_check.replaceAll(' ','')==''){
			$("#divprosearch").css("display","none");
		}else{
		//$("#divprosearch").css("display","block");
			var str='provcode='+temp_check;
			if(temp_subip!=''){
				str=str+'&subip='+temp_subip;
			}
								//$("#procoderesault").css("display","block");
		  XMLAjax2("<%=path%>/providersearch/providersearch_showspeccode.action" ,str,"procoderesault",sendseccesscode); 
		  //XMLAjax2("<%=path%>/providersearch/providersearch_showspeclist.action" ,"ppono=38","specalist",sendseccess); 
		  //XMLAjax2("<%=path%>/providersearch/providersearch_showspeclist.action" ,"ppono=38&"+str,"procoderesault",sendseccesscode); 
		}
	}
	
	
	function chooseprcode(str){
	var tt=document.getElementById('tempprocdesc'+str).value;
	  
		document.getElementById('ProvcodeC').value=str;
		document.getElementById('ProvcodeCdesc').value=tt;
		$("#divprosearch").css("display","block");
	
	 	$("#divsearchbutton").css("display","block");
	}
	
	
	function  checkcart(str){
		var t_id=str.id;  
		$("#"+t_id).css("filter","alpha(opacity=30)");
		$("#"+t_id).css("-moz-opacity","alpha(opacity=30)");
		$("#"+t_id).css("opacity","0.3");
		//$("#"+t_id).css("background","#000"); 
		var tt=t_id.replace('addCart','');
		//searchsubmit();
		var t_check=document.getElementById('addCartType'+tt).value;
		if(t_check=='N'){
			document.getElementById('addCartType'+tt).value='Y';
			sddtocart(tt);
		}
	}
	
	
	
	function sddtocart(strid){ 
		var str="";
			var temp_providername=document.getElementById('providername'+strid).value;
			str=str+'cartProvname='+temp_providername;
			var temp_specialty=document.getElementById('specialty'+strid).value;
			str=str+'&cartspecialty='+temp_specialty;
			var temp_specialtyid=document.getElementById('specialtyid'+strid).value;
			str=str+'&cartspecialtyid='+temp_specialtyid;
			var temp_address1=document.getElementById('address1'+strid).value;
			str=str+'&cartaddress1='+temp_address1;
			var temp_address2=document.getElementById('address2'+strid).value;
			str=str+'&cartaddress2='+temp_address2;
			var temp_city=document.getElementById('city'+strid).value;
			str=str+'&cartcity='+temp_city;
			var temp_St=document.getElementById('St'+strid).value;
			str=str+'&cartSt='+temp_St;
			var temp_zip=document.getElementById('zip'+strid).value;
			str=str+'&cartzip='+temp_zip;
			var temp_phone=document.getElementById('phone'+strid).value;
			str=str+'&cartphone='+temp_phone;
			var temp_effdate=document.getElementById('effdate'+strid).value;
			str=str+'&carteffdate='+temp_effdate;
			var temp_termdate=document.getElementById('termdate'+strid).value;
			str=str+'&carttermdate='+temp_termdate;		
			
			var temp_poscode=document.getElementById('poscode'+strid).value;
			str=str+'&poscode='+temp_poscode;	
			var temp_serviceamt=document.getElementById('serviceamt'+strid).value;
			str=str+'&serviceamt='+temp_serviceamt;	
			var temp_latlon=document.getElementById('latlon'+strid).value;
			str=str+'&latlon='+temp_latlon;	
			
			var temp_zipcode=document.getElementById('zipcode'+strid).value;
			str=str+'&Zipcode='+temp_zipcode;	
			var temp_proccdesc=document.getElementById('proccdesc'+strid).value;
			str=str+'&proccdesc='+temp_proccdesc;	
			var temp_cpt=document.getElementById('ProvcodeC').value;
			str=str+'&cpt='+temp_cpt;
																
		showResaultcarttype(str);
	}
	
	function showResaultcarttype(str){  
	var idstr="addcartresault";
								 var scroll = document.documentElement.scrollTop || document.body.scrollTop || window.pageYOffset;  
								$("#"+idstr).css("top",scroll+300); 
								$("#"+idstr).css("display","block"); 
								$("#"+idstr).css("position","absolute"); 
								$("#"+idstr).css("border","2px solid #0089C7");
								$("#"+idstr).css("background","#f3f9f1"); 
								$("#"+idstr).css("border-radius","8px"); 
								$("#"+idstr).css("box-shadow","5px 5px 5px #057748"); 
								$("#"+idstr).css("color","#0089C7");  
								$("#"+idstr).css("height","100px");  
								$("#"+idstr).css("width","300px");   
								$("#"+idstr).css("left","45%");
		  XMLAjax2("<%=path%>/providersearch/providersearch_resaulteidtcart.action" ,str,"addcartresault",sendseccesscart); 
		  
	}
	
	
	function  delcheckcart(str){
		var t_id=str.id;  
		var tt=t_id.replace('addCart','');
		delfromcart(tt);
		
	}
	function delfromcart(strid){ 
		var str='';
		if('emptyall'==strid){
			var temp_cartid='emptyall';
		}else{
			var temp_cartid=document.getElementById('cartid'+strid).value;
		}
			str=str+'cartid='+temp_cartid;	
			str=str+'&dotype=del';													
		showResaultcartdel(str);
	}
	function showResaultcartdel(str){  
		 
		  XMLAjax2("<%=path%>/providersearch/providersearch_prosearesaultcart.action" ,str,"searchresault",sendseccess); 
		  
	} 
	
	function sendseccesscode(idstr){
    	document.documentElement.style.overflow = 'scroll';
    									$("#advs").css("display","none");
								
		        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
    						 
          				 
		        } 	
	
	function sendseccesscart(idstr){
								
		        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
		        	   		  var tt=xmlhttp.responseText;
		        	   		  if(tt.indexOf('timeout')=='-1'){
 								   setTimeout(function() {  $("#"+idstr).css("display","none"); }, 1000);
		        	   		  }else{
		        	   		  //alert('timeout');
 									setTimeout(function() {  
 															$("#"+idstr).css("display","none");
	  														window.location.href="<%=request.getContextPath()%>/ach_quick_logon.jsp";  
	  														}, 2000);
	  							}
    						 
          				 
		        } 		
	
	
	
		       $("#showCart").click(function(){
		        
		         showResaultcart('str');
		         }); 
		       $("#showCart2").click(function(){  
		      
		         showResaultcart('str'); 
		         }); 
		         
		
    function showResaultcart(str){  
     
		  XMLAjax2("<%=path%>/providersearch/providersearch_prosearesaultcart.action" ,str,"searchresault",sendseccesscartt); 
		  
	}
	         	        
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	$(".divcss5").mouseover(function(e){  
	var x=e.pageX;
	var y=e.pageY;
	var t_id=this.id;
	// alert(t_id);
	if(t_id=='filSpec'){
		$(".message1").css("display","none");
		$(".message2").css("display","none");
		$(".message3").css("display","none");
		$(".message4").css("display","none");
		$(".message5").css("display","block");
	}
	if(t_id=='filPrice'){
		$(".message1").css("display","block");
		$(".message2").css("display","none");
		$(".message3").css("display","none");
		$(".message4").css("display","none");
		$(".message5").css("display","none");
	}
	if(t_id=='filDistance'){
		$(".message1").css("display","none");
		$(".message2").css("display","block");
		$(".message3").css("display","none");
		$(".message4").css("display","none");
		$(".message5").css("display","none");
	}
	if(t_id=='showCart' ||t_id=='showCart2' ){
		$(".message1").css("display","none");
		$(".message2").css("display","none");
		$(".message3").css("display","block");
		$(".message4").css("display","none");
		$(".message5").css("display","none");
	}
	if(t_id=='addCart' ){
		$(".message1").css("display","none");
		$(".message2").css("display","none");
		$(".message3").css("display","none");
		$(".message4").css("display","block");
		$(".message5").css("display","none");
	}
	
	  $("#message").css("display","block");
	  $("#message").css("top",(y+20)+"px");
	  $("#message").css("left",(x-30)+"px");
	}); 
	  
	  
	$(".divcss5").mouseout(function(e){ 
	  $("#message").css("display","none");
	}); 
	  
	  
	   $("#pagest").change(function(){   
	   
		       		var tt=document.getElementById('pagest').value;
		       		// alert(tt);
		       		searchsubmit();
		         }); 
		function pagestchaneg(){
		       		searchsubmit();
		}          
		         
	 			 $("#filSpec").click(function(){   
		       		document.getElementById('filtertype').value='filSpec';
		       		searchsubmit();
		         }); 
		         
		      
		         
		       $("#filPrice").click(function(){  
		       //alert("filPrice");
		       document.getElementById('filtertype').value='filPrice';
		       		searchsubmit();
		         }); 
		       $("#filDistance").click(function(){  
		       //alert("filDistance");
		       document.getElementById('filtertype').value='filDistance';
		       		searchsubmit();
		         }); 
		         
		      
	 
		        function sendseccess(idstr){
		        			 eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
		        			  
 								   
    									$("#advs").css("display","none");
    						 			document.documentElement.style.overflow = 'scroll';
	  						 
    						 
		        } 		
		        
		        function sendseccesscartt(idstr){
		        			 eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
		        			 
		        	   		  var tt=xmlhttp.responseText; 
		        	   		  if(tt.indexOf('timeout')=='-1'){
    									$("#advs").css("display","none");
    						 			document.documentElement.style.overflow = 'scroll';
 									
		        	   		  }else{ 
 								   setTimeout(function() {  
 															$("#advs").css("display","none");
	  														window.location.href="<%=request.getContextPath()%>/ach_quick_logon.jsp";  
	  														}, 2000);
	  							}
		        	   		  
    						 
		        } 
	
	
	 
	function searchsubmit(strurl){ 
		if(strurl=='search'){
			       		document.getElementById('pagest').value='1';
			       		document.getElementById('filtertype').value='';
		
		}
		var temp_errorspro="";
		var temp_errors=document.getElementById('errors').value;
		var temp_errorPpo=document.getElementById('errorPpo').value;
		var temp_errorSearch=document.getElementById('errorSearch').value;
		var temp_errorLocation=document.getElementById('errorLocation').value;
		var temp_errorTaxid=document.getElementById('errorTaxid').value;
		var temp_errorZipSt=document.getElementById('errorZipSt').value;
		var temp_errorZipcode=document.getElementById('errorZipcode').value;
		var temp_errorSt=document.getElementById('errorSt').value;
		
		var temp_ppo=document.getElementById('ppo').value;
		var temp_pro=document.getElementById('ProvcodeC').value;
		var temp_zipcode=document.getElementById('Zip').value;
		var temp_st=document.getElementById('st').value;
		var temp_taxid=document.getElementById('taxid').value;
		var temp_chooseZip=document.getElementById('chooseZip').value;
		  
						$("#showerrors").attr('style','display:none;');
						$("#showerrorPro").attr('style','display:none;');
						$("#showerrorPpo").attr('style','display:none;');
						$("#showerrorZipcode").attr('style','display:none;');
						$("#showerrorSt").attr('style','display:none;');
						$("#showerrorTaxid").attr('style','display:none;');
						
						
		  if(temp_pro.replaceAll(' ','')==''){
		  window.scrollTo(0,100);
				$("#showerrorPro").attr('style','color:ff0000;display:block;');
				$("#showerrors").attr('style','color:ff0000;display:block;');
				temp_errors='T';
				temp_errorspro='T';
			}else{
				$("#showerrorPro").attr('style','display:none;');
				temp_errors='F';
				temp_errorspro='F';
			}
		
		    
			/*
			if(temp_errorPpo=='T'){
				$("#showerrorPpo").attr('style','color:ff0000;display:block;');
				$("#showerrors").attr('style','color:ff0000;display:block;');
				temp_errors='T';
			}else{
				$("#showerrorPpo").attr('style','display:none;');
				temp_errors='F';
			}*/
		
			 
			if(temp_errorLocation=='T'){
				
				if(temp_errorZipcode=='T' && temp_errorspro=='F'){
				//alert('errorZipcode');
					if(temp_zipcode==''){
					window.scrollTo(0,100);
						$("#showerrorZipcode").attr('style','color:ff0000;display:block;');
						$("#showerrors").attr('style','color:ff0000;display:block;');
						temp_errors='T';
					}else{
						$("#showerrorZipcode").attr('style','display:none;');
					}
				}
				
				if(temp_errorSt=='T' && temp_errorspro=='F'){
				//alert('errorSt');
					if(temp_st==''){
					window.scrollTo(0,100);
						$("#showerrorSt").attr('style','color:ff0000;display:block;');
						$("#showerrors").attr('style','color:ff0000;display:block;');
						temp_errors='T';
					}else{
						$("#showerrorSt").attr('style','display:none;');
					}
				}
			}else if(temp_errorTaxid=='T'){
					if(temp_taxid=='' && temp_errorspro=='F'){
					window.scrollTo(0,100);
				//alert('errorTaxid');
						$("#showerrorTaxid").attr('style','color:ff0000;display:block;');
						$("#showerrors").attr('style','color:ff0000;display:block;');
						temp_errors='T';
					}else{
						$("#showerrorTaxid").attr('style','display:none;');
					}
				
			}
		 
		
		document.getElementById('errors').value=temp_errors;
		if(temp_errors=='F'){
			//alert('error'); ppo  taxid Zip Radius st  providerType Provname Specids Specnames
			//var tempval=t.options[t.selectedIndex].text;
			
			var str="";
			var temp_Provcode=document.getElementById('ProvcodeC').value;
			str=str+'procedurecode='+temp_Provcode;
			 
			
			var temp_ppo=document.getElementById('ppo').value;
			var  dateList = temp_ppo.split(",");
					   var tppono=dateList[0];
					   var tpponame=dateList[1]; 
			//if(temp_ppo!=''){
			//	str=str+'&ppo='+temp_ppo;
			//}
			if(tppono!=''){
				str=str+'&ppo='+tppono;
				str=str+'&ppoprovname='+tpponame;
			}
			
			
			if(temp_errorLocation=='T'){
				if(temp_chooseZip=='T'){
					var temp_Zip=document.getElementById('Zip').value;
					if(temp_Zip!=''){
					str=str+'&Zip='+temp_Zip;
					}
					
					var temp_Radius=document.getElementById('Radius').value;
					if(temp_Radius!=''){
					str=str+'&Radius='+temp_Radius;
					}
				}else{
					var temp_st=document.getElementById('st').value;
					if(temp_st!=''){
					str=str+'&provst='+temp_st;
					}
				}
				
				var temp_Specids=document.getElementById('Specids').value;
				if(temp_Specids!=''){
				str=str+'&Specids='+temp_Specids.substring(1);
				}
				
				var temp_Specnames=document.getElementById('Specnames').value;
				if(temp_Specnames!=''){
				str=str+'&Specnames='+temp_Specnames.substring(1).replace(/ /g,'%20');
				}
			}else if(temp_errorTaxid=='T'){
			
				var temp_taxid=document.getElementById('taxid').value;
				if(temp_taxid!=''){
				str=str+'&taxid='+temp_taxid;
				}
			
			}
			
			 
			
			 
			 // alert(str);
			var t=document.getElementsByName('providerType');
			for(var i=0;i<t.length;i++){
				if(t[i].checked){
					if(t[i].value!=''){
					str=str+'&providerType='+t[i].value;
					}
				}
			}
			 
			 
			var temp_filtertype=document.getElementById('filtertype').value;
			if(temp_filtertype!=''){
				str=str+'&filtertype='+temp_filtertype;
			}
    	$("#advs").css("display","block");
    	$("#advs").css("width","100%");
    	$("#advs").css("height","100%");
		//var tttt=getScrollTop();
		var tttt=getScrollTop1();
		
    	$("#advs").css("top",tttt +"px");
    	 document.documentElement.style.overflow = 'hidden';
			 var tt=document.getElementById('pagest').value;
			 if(tt!=''){
				str=str+'&pageset='+tt;
			}
			
		str=str+'&proccdesc='+document.getElementById('ProvcodeCdesc').value;	
			 
			if(strurl=='search'){
				getResaultSize(str);
			}else{ 
				showResault(str);
			} 
		}
	}
	
    function showResault(str){  
		  XMLAjax2("<%=path%>/providersearch/providersearch_prosearesault.action" ,str,"searchresault",sendseccess); 
		  
	}
	
    function getResaultSize(str){  
		  document.getElementById('tempstr').value=str;
		  XMLAjax2("<%=path%>/providersearch/providersearch_getresaultpagetotal.action" ,str,"searchresaultsize",getsizesendseccess); 
		  
	}
	  function getsizesendseccess(idstr){
		        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
		        	   		  var ttstr= document.getElementById('tempstr').value;
		        	   		  showResault(ttstr);
		        } 		
		        
	
	/**
	 *获取scrollTop的值，兼容所有浏览器 
	 */
	function getScrollTop1() {
		var scrollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
		return scrollTop;
	}
	 
	/**
	 *设置scrollTop的值，兼容所有浏览器 
	 */
	function setScrollTop1(scroll_top) {
		document.documentElement.scrollTop = scroll_top;
		window.pageYOffset = scroll_top;
		document.body.scrollTop = scroll_top;
	}
	
	$(window).scroll(function(){
		 var tttt=getScrollTop1();
		if(tttt>800){
		 	$("#gettop").css("display","block");
    		$("#gettop").css("top",tttt+200);
		}else{
		 	$("#gettop").css("display","none");
		}
	});	
	
	$("#gettop").click(function(){ 
	 			window.scrollTo(0,100);
		 		$("#gettop").css("display","none");
		         }); 
		         
	 
//--------------------------------
function getScrollTop(){
	var scrollTop=0;
	if(document.documentElement&&document.documentElement.scrollTop){
		scrollTop=document.documentElement.scrollTop;
	}else if(document.body){
		scrollTop=document.body.scrollTop;
	}
	return scrollTop;
}
//------------------------------
//--------------------------------------------------------------------------------------------------------------	
	
	function ShowzipInfo(){
		          	  $("#divzip").attr('style','display:block;');
		          	  $("#divst").attr('style','display:none;');
					  document.getElementById('chooseZip').value='T';
		          	  
					  document.getElementById('errorZipcode').value='T';
					  document.getElementById('errorSt').value='F';
					  document.getElementById('errorTaxid').value='F';
	}
	
	function HidezipInfo(){
		          	  $("#divzip").attr('style','display:none;');
		          	  $("#divst").attr('style','display:block;');
					  document.getElementById('chooseZip').value='F';
					  
					  document.getElementById('errorZipcode').value='F';
					  document.getElementById('errorSt').value='T';
					  document.getElementById('errorTaxid').value='F';
	}
	
	
		          function SearchTax(str){
		          	if(str=='Location'){
		          	  $("#divlocation").attr('style','display:block;');
		          	  $("#divspeclist").attr('style','display:block;');
		          	  $("#divtax").attr('style','display:none;');
					  document.getElementById('errorZipSt').value='T';
					  
					  document.getElementById('errorLocation').value='T';
					  document.getElementById('errorTaxid').value='F';
					  document.getElementById('errorZipcode').value='T';
					  document.getElementById('errorSt').value='F';
		          	}else if(str=='Taxid'){
		          	  $("#divlocation").attr('style','display:none;');
		          	  $("#divspeclist").attr('style','display:none;');
		          	  $("#divtax").attr('style','display:block;');
					  document.getElementById('errorZipSt').value='T';
					  
					  document.getElementById('errorLocation').value='F';
					  document.getElementById('errorTaxid').value='T';
					  document.getElementById('errorZipcode').value='F';
					  document.getElementById('errorSt').value='F';
		          	} 
		          }
		         
		         
		         
				$("#ppo").change(function(){
					var temp_ppo=this.value;
					var  dateList = temp_ppo.split(",");
					   var tppono=dateList[0];
					   var tpponame=dateList[1]; 
					//alert(temp_ppo);
					//showspecialty(temp_ppo);
					 
					showspecialty(tppono);
					//if(temp_ppo!='0'){
					if(tppono!='0'){
						document.getElementById('errorPpo').value='F';
					}else{
						document.getElementById('errorPpo').value='T';
					}
					 
		        }); 
		        
				   
		        function showspecialty(str){  
		         
		        	 XMLAjax2("<%=path%>/providersearch/providersearch_showspeclist.action" ,"ppono="+str,"specalist",sendseccess); 
		        	
		
				}
				
				
				 function chooseSpec(str){ 
					var temp=str;
					var tempsel=eval("document.getElementById('"+temp+"').value;");
					var t=eval("document.getElementById('"+temp+"');");
					var tempval=t.options[t.selectedIndex].text;
					document.getElementById('Specidsel').value=tempsel;
					document.getElementById('Specnamesel').value=tempval;
					if(temp=='Specialty'){
						document.getElementById('add').disabled=false;
						document.getElementById('del').disabled=true;
					}else if(temp=='SpecSelect'){
						document.getElementById('del').disabled=false;
						document.getElementById('add').disabled=true;
					}
				 	//alert(tempval);
					//showspecselect(temp_ppo);
					 
		        }
		         
		         
				$(".move").click(function(){ 
			    	 document.documentElement.style.overflow = 'hidden';
				  $("#advs").css("display","block");
			    	$("#advs").css("width","100%");
			    	$("#advs").css("height","100%");
					var tttt=getScrollTop1();
			    	$("#advs").css("top",tttt +"px");
			    	
					var temp=this.id;
					
					if(temp=='add'){
						//alert('add');
						var tempsel_=document.getElementById('Specidsel').value;
						var tempval_=document.getElementById('Specnamesel').value;
						if(tempsel_!=''){
							var tempsel=document.getElementById('Specids').value;
							var tempval=document.getElementById('Specnames').value;
							tempval_=tempval_.replace(/&/g,'%26');
							
							tempsel=tempsel.replace(','+tempsel_,'');
							tempsel=tempsel+','+tempsel_;
							//tempval=tempval+','+tempval_.replace('&','%26');
							//tempval=tempval+','+tempval_.replace(/&/g,'%26');
							tempval=tempval.replace(','+tempval_,'');
							tempval=tempval+','+tempval_;
							document.getElementById('Specids').value=tempsel;
							document.getElementById('Specnames').value=tempval;
						document.getElementById('add').disabled=true;
						}
					}else{
						//alert('del');
						var tempsel_=document.getElementById('Specidsel').value;
						var tempval_=document.getElementById('Specnamesel').value;
						if(tempsel_!=''){
							var tempsel=document.getElementById('Specids').value;
							var tempval=document.getElementById('Specnames').value;
							tempsel=tempsel.replace(','+tempsel_,'');
							//tempval=tempval.replace(','+tempval_.replace('&','%26'),'');
							tempval=tempval.replace(','+tempval_.replace(/&/g,'%26'),'');
							document.getElementById('Specids').value=tempsel;
							document.getElementById('Specnames').value=tempval;
						document.getElementById('del').disabled=true;
						}
					}
					document.getElementById('Specidsel').value="";
					document.getElementById('Specnamesel').value="";
					showspecselect();
					 
		        }); 
		        
		        
				   
		        function showspecselect(){  
		        		var tempsel_=document.getElementById('Specids').value;
						var tempval_=document.getElementById('Specnames').value;
		         
		        	 XMLAjax2("<%=path%>/providersearch/providersearch_showspecselect.action" ,"Specids="+tempsel_+"&Specnames="+tempval_,"specSelectlist",sendseccess); 
		        	
		
				}



	</script>
</html>
