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
		
		<table id="initPrintArea" width="100%" border="0" cellpadding="10" cellspacing="0"  >
			<tr>
				<td width="97" valign="top" style="padding-top:0px;">
					<!-- menu -->
					  <jsp:include page="/common/ach_advance_menu.jsp"></jsp:include>  
				</td>
				<td valign="top" width="100%" style="padding-left:20px;padding-right:30px;">
					
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
								<p class="font_black14_arial">
									Welcome to the America's Choice Healthplans website for submitting predetermination requests. 
								</p>
								<div>
									<div style="float:left;width:500px;position:absolute;">
									  <form name="form1" id="form1" action="" method="post">
										<table cellspacing="1" cellpadding="3" width="450" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="2">
													<font class="font_white_bold16">Patient Search</font>
												</th>
											</tr>
											<tr>
												<td class="tdclass6" width="45%">
													<input type="radio" name="insured" id="sn" value="1" checked/>
													Insured's Social Security Number
												</td>
												<td class="tdclass6">
													<input name="ssn" id="ssn" type="text"  class="input001"><span id="mess1"></span>
												</td>
												
											</tr>
											<tr>
												<td class="tdclass6">
													<input type="radio" name="insured" id="ad" value="2"/>
													Alternate ID #
												</td>
												<td class="tdclass6">
													<input name="memberID" id="memberID" maxlength="30"  type="text" class="input001"><span id="mess2"></span>
												    <input type="hidden" name="salt" id="salt" value="" />
												    <input type="hidden" name="ach"  value="si" />
												</td>
											</tr>
											<tr>
												<td class="tdclass6">
													Patient's Birth Date
												</td>
												<td class="tdclass6">
													<input type="text" class="input001" name="dob" id="fromdate">
													<span style="color: #888"  id="dobSpan1">mm/dd/yyyy</span>
												</td>
											</tr>
										</table>
										
										<table width="450">
											<tr>
												<td align="right" style="padding-top:10px;">
													<input type="button" id="searchID" value="Find" class="button_3">
												</td>
											</tr>
										</table>
									</form>
								</div>
									
									<div style="float:right;width:350px;"><font class="font_black14_arial">
											Use Patient Search to begin the process for submitting Advanced EOB information.
											Simply enter the insured's  Social Security Number or Alternate ID  and the patient's birth date in the boxes left
											and click "Find" <!-- and you will be provided with a
											summary of this patient's benefits -->.
										</font>
									</div>
								</div>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
					
					</table><br/><br/><br/><br/>
					
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
								
								<div>
									<div style="float:left;width:500px;position:absolute;">
									  <form name="form2" id="form2" method="post" action="">
										<table cellspacing="1" cellpadding="3" width="450" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="2">
													<font class="font_white_bold16">Advance EOB Search</font>
												</th>
											</tr>
											<tr>
												<td class="tdclass6" width="45%">
													Provider Tax ID
												</td>
												<td class="tdclass6">
													<input type="text" name="TaxID" id="TaxID" class="input001"><span id="mess5"></span>
												    <input type="hidden" name="ach" id="achline" value="ye" />
												</td>
											</tr>
											<!-- <tr>
												<td class="tdclass6" width="45%">
													Date of Service
												</td>
												<td class="tdclass6">
													<input type="text" class="input001" name="sdate" id="fromdate1">
													<span style="color: #888" id="dobSpan2">mm/dd/yyyy</span><br/>
													<input type="checkbox" id="showall" value=""/>show all
												</td>
											</tr> -->
											<tr>
												<td class="tdclass6" width="45%">
													<input type="radio" id="snc" value="1" name="insuredclaim" checked/>
													Insured's Social Security Number
												</td>
												<td class="tdclass6">
													<input type="text" name="ssn" id="ssnc" class="input001"><span id="mess3"></span>
												</td>
											</tr>
											<tr>
												<td class="tdclass6">
													<input type="radio" id="adc" value="2" name="insuredclaim"/>
													Alternate ID #
												</td>
												<td class="tdclass6">
													<input type="text" name="memberID" id="memberIDc" class="input001"><span id="mess4"></span>
												</td>
											</tr>
											<tr>
												<td class="tdclass6">
													Patient's Birth Date
												</td>
												<td class="tdclass6">
													<input type="text" name="dob" class="input001" id="fromdate2">
													<span style="color: #888" id="dobSpan3">mm/dd/yyyy</span>
												</td>
											</tr>
										</table>
										
										<table width="450">
											<tr>
												<td align="right" style="padding-top:10px;">
													<input type="button" id="searchIDc" value="Find" class="button_3">
												</td>
											</tr>
										</table>
										</form>
									</div>
									
									<div style="float:right;width:350px;">
										<font class="font_black14_arial">
											To search for existing requests for Advanced EOB good faith
											estimates sent to America's Choice Healthplans®, please enter 
											your tax id number, the insured's ID number and the patient's 
											birth date. 
										</font>
									</div>
								</div>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>
					</table>			
				</td>
			</tr>	
		</table>					
	</body>
	<script type="text/javascript">
$( "#fromdate" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});

$("#fromdate").blur(function(){
 	if(checkdate($("#fromdate"),'Date format error',$("#dobSpan1"))){
 	 	$("#dobSpan1").html('mm/dd/yyyy').attr("style","color:#888");
 	}
});

$( "#fromdate1" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});

$("#fromdate1").blur(function(){
 	if(checkdate($("#fromdate1"),'Date format error',$("#dobSpan2"))){
 	 	$("#dobSpan2").html('mm/dd/yyyy').attr("style","color:#888");
 	}
});

$("#fromdate2").datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});

$("#fromdate2").blur(function(){
 	if(checkdate($("#fromdate2"),'Date format error',$("#dobSpan3"))){
 	 	$("#dobSpan3").html('mm/dd/yyyy').attr("style","color:#888");
 	}
});

$("#fromdate").blur(function(){
	dob = $.trim($("#fromdate").val());
	if(dob == ""){
		$("#dobSpan1").html('mm/dd/yyyy').attr("style","color:#888");
	}else  if(checkdate($("#fromdate"),'Date format error.',$("#dobSpan1"))){
		$("#dobSpan1").html('mm/dd/yyyy').attr("style","color:#888");
	}
	
});

$("#fromdate1").blur(function(){
	dob = $.trim($("#fromdate1").val());
	if(dob == ""){
		$("#dobSpan2").html('mm/dd/yyyy').attr("style","color:#888");
	}else  if(checkdate($("#fromdate1"),'Date format error.',$("#dobSpan2"))){
		$("#dobSpan2").html('mm/dd/yyyy').attr("style","color:#888");
	}
	
});

$("#fromdate2").blur(function(){
	dob = $.trim($("#fromdate2").val());
	if(dob == ""){
		$("#dobSpan3").html('mm/dd/yyyy').attr("style","color:#888");
	}else  if(checkdate($("#fromdate2"),'Date format error.',$("#dobSpan3"))){
		$("#dobSpan3").html('mm/dd/yyyy').attr("style","color:#888");
	}
	
});



$("#sn").click(function(){
   $("#memberID").attr("value","");
   $("#altid").attr("value","");
   $("#memberID").attr("disabled",true);
   $("#mess2").html('');
   $("#ssn").attr("checked","checked");
   $("#ssn").attr("disabled",false);
});

$("#ad").click(function(){
   $("#ssn").attr("value","");
   $("#ssn").attr("disabled",true);
   $("#mess1").html('');
   $("#memberID").attr("checked","checked");
   $("#memberID").attr("disabled",false);
});

$("#ssn").blur(function(){
   if ($.trim($("#ssn").val()) == ""){
      $("#mess1").html('please enter your ssn.').attr("style","color:red;font-size:85%");
      }
   else{
      $("#mess1").html('');
   }
});

$("#memberID").blur(function(){
   if ($.trim($("#memberID").val()) == ""){
      $("#mess2").html('please enter your ID #.').attr("style","color:red;font-size:85%");
      }
   else{
      $("#mess2").html('');
   }
});

$("#memberID").click(function(){
  $("#ad").attr("checked","checked");
  $("#ssn").attr("value","");
  $("#ssn").attr("disabled",true);
  $("#mess1").html('');
});

$("#searchID").click(function(){

	var haveError = false;


 var dobs = $.trim($("#fromdate").val());
 if (dobs == ""){
    $("#dobSpan1").html('please enter dob').attr("style","color:red;font-size:85%");
    haveError = true;
 }
 
 if ($.trim($("#ssn").val()) == "" && $("#sn").attr("checked") == "checked"){
    $("#mess1").html('please enter your ssn.').attr("style","color:red;font-size:85%");
    haveError = true;
 }
 
 if ($.trim($("#memberID").val()) == "" && $("#ad").attr("checked") == "checked"){
    $("#mess2").html('please enter your ID #.').attr("style","color:red;font-size:85%");
    haveError = true;
 
 }
  var checkssn = $.trim($("#sn").attr("checked"));
  if (checkssn == "checked"){
      $("#salt").attr("value","1");
  }else{
      $("#salt").attr("value",2);
  }

 $("#ssn1").val($("#ssn").val());
  var dobstr = dobs.split("/");
  $("#month_a").val(dobstr[0].toString());
  $("#day_a").val(dobstr[1].toString());
  $("#year_a").val(dobstr[2].toString());
  if ($.trim($("#memberID").val()) != ""){
    $("#altid").val($.trim($("#memberID").val()));
  }
   $("#fromdate").val(dobs);
   $("#ssn").val($.trim($("#ssn").val()));
   $("#memberID").val($.trim($("#memberID").val()));
 if (!haveError){
     //$("#form1").attr("action","<%=request.getContextPath()%>/provider/prov_checkBenefitsNew.do?menu_id=menu_1");
     //$("#form1").attr("action","<%=request.getContextPath()%>/provider/prov_displayBenefitSummary.do?menu_id=menu_1");
     //$("#form1").attr({"action":"https://secure.achonline.com/providers/benefits_results.asp","target":"_blank"});
     $("#form1").attr("action","<%=path%>/claimfileimport/claimfileimport_showlist1.action?salt="+salt);
     $("#form1").submit();
     }
});
//find claim
$("#snc").click(function(){
   $("#memberIDc").attr("value","");
   $("#memberIDc").attr("disabled",true);
   $("#mess4").html('');
   $("#ssnc").attr("checked","checked");
   $("#ssnc").attr("disabled",false);
});

$("#adc").click(function(){
   $("#ssnc").attr("value","");
   $("#ssnc").attr("disabled",true);
   $("#mess3").html('');
   $("#memberIDc").attr("checked","checked");
   $("#memberIDc").attr("disabled",false);
});

$("#ssnc").blur(function(){
   if ($.trim($("#ssnc").val()) == ""){
      $("#mess3").html('please enter your ssn.').attr("style","color:red;font-size:85%");
      }
   else{
      $("#mess3").html('');
   }
});

$("#memberIDc").blur(function(){
   if ($.trim($("#memberIDc").val()) == ""){
      $("#mess4").html('please enter your ID #.').attr("style","color:red;font-size:85%");
      }
   else{
      $("#mess4").html('');
   }
});

$("#memberIDc").click(function(){
  $("#adc").attr("checked","checked");
  $("#ssnc").attr("value","");
  $("#ssnc").attr("disabled",true);
  $("#mess3").html('');
});

$("#TaxID").blur(function(){
   if ($.trim($("#TaxID").val()) == ""){
      $("#mess5").html('please enter Tax ID #.').attr("style","color:red;font-size:85%");
      }
   else{
      $("#mess5").html('');
   }
});

$("#showall").click(function(){
    if ($.trim($("#showall").attr("checked")) == "checked"){
        $("#fromdate1").attr("disabled",true);
    }else{
        $("#fromdate1").attr("disabled",false);
    }

});

$("#searchIDc").click(function(){

	var haveError = false;


 var dobs = $.trim($("#fromdate1").val());
 if (dobs == ""){
    $("#dobSpan2").html('please enter Date').attr("style","color:red;font-size:85%");
    //haveError = true;
 }
 
 var birth = $.trim($("#fromdate2").val());
 if (birth == ""){
    $("#dobSpan3").html('please enter dob').attr("style","color:red;font-size:85%");
    haveError = true;
 }
 
 var taxid = $.trim($("#TaxID").val());
 if (taxid == ""){
    $("#mess5").html('please enter Tax ID #').attr("style","color:red;font-size:85%");
    haveError = true;
 }
 
 var ssn=$.trim($("#ssnc").val());
 if ($.trim($("#ssnc").val()) == "" && $.trim($("#snc").attr("checked")) == "checked"){
    $("#mess3").html('please enter your ssn.').attr("style","color:red;font-size:85%");
    haveError = true;
 }
 
 if ($.trim($("#memberIDc").val()) == "" && $.trim($("#adc").attr("checked")) == "checked"){
    $("#mess4").html('please enter your ID #.').attr("style","color:red;font-size:85%");
    //haveError = true;
 
 }
 
 
 var showall = $.trim($("#showall").attr("checked"));
 if (showall == "checked"){
   // $("#showall").attr("value","1");
    var showall = 1;
 }else{
   // $("#showall").attr("value","0");
   var showall = 0;
  }
  
  var checkssn = $.trim($("#snc").attr("checked"));
  if (checkssn == "checked"){
      //$("#salt").attr("value",1);
      var salt = 1;
  }else{
      //$("#salt").attr("value",2);
      var salt = 2;
  }
  $("#TaxID").val(taxid);
  $("#fromdate1").val(dobs);
  $("#ssn").val(ssn);
  $("#memberIDc").val($.trim($("#memberIDc").val()));
  $("#fromdate2").val(birth);
  
 if (!haveError){ 
     //$("#form2").attr("action","<%=path%>/claimfileimport/claimfileimport_showlist.action?salt="+salt+"&showall="+showall);
     $("#form2").attr("action","<%=path%>/adeod/adeod_showeob.action?salt="+salt+"&showall="+showall);
     $("#form2").submit();
     }
});

</script>
</html>
