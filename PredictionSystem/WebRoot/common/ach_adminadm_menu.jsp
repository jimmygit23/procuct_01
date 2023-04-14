<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Change Master Group</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3">Master Group Info</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_3" class="Tabmenu3">Enrollment Setup</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_4" class="Tabmenu3">Sub-Group Info</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_5" class="Tabmenu3">Benefit Summaries </a>
				</td>
			</tr>	
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_6" class="Tabmenu3">Rx Plan Info</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_7" class="Tabmenu3">Teams</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_8" class="Tabmenu3">cobra Rates</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_9" class="Tabmenu3">Rates</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_10" class="Tabmenu3">Old Employee Classes</a>
				</td>
			</tr>	
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_11" class="Tabmenu3">Terminate</a>
				</td>
			</tr>						
			<tr>
				<td>
					<img src="<%=request.getContextPath()%>/image/left_orange2.gif"
						width="97" height="33">
				</td>
			</tr>
		</table>
		<input id="mastergroup" type="hidden" value="${mastergroup}" name="mastergroup"/>
		<input id="mastergroupName" type="hidden" value="${GroupName}" name="groupname"/>
		<input id="menu_id" type="hidden" value="${menu_id}" name="menu_id" />
		<%--
		<form id="backhome" action="" method="post">
			<input type="hidden" id="1" name="login" value="${sessionUser.login}">
			<input type="hidden" id="2" name="password"
				value="${sessionUser.password}">
		</form>
         --%>
	</body>
	<script type="text/javascript">
$(document).ready(function() {
	var menuIdvalue = $("#menu_id").val();
	var menu_id = '#' + menuIdvalue;
	$(menu_id).parent().attr("class", "Tabmenu4");
	$(menu_id).parent().mouseout(function() {
		$(menu_id).parent().attr("class", "Tabmenu4");
	});
});
//Change Master Group
$("#menu_1")
		.click(
				function() {
					window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";
				});

//Master Group Info
$("#menu_2")
		.click(
				function() {
				if($("#mastergroup").val()==""){				
				window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";				
				}else{
					window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_2&mastergroup=${mastergroup}&GroupName=${GroupName}";
				    //window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeEnroll.do?tab_flag=tab_5&menu_id=menu_2";
				    //window.open("https://secure.achonline.com/admin/enrollmentlist.asp?login=${sessionUser.login}&password=${sessionUser.password}");
				    //$("#backhome").attr({"action":"https://secure.achonline.com/admin/enrollmentlist.asp","target":"_blank"});
                    //$("#backhome").submit();
				 }});

//Enrollment Setup
$("#menu_3")
		.click(
				function() {
				//	window.location.href = "<%=request.getContextPath()%>/admin/adm_EnrollSetup.do?tab_flag=tab_6&menu_id=menu_3";
				if($("#mastergroup").val()==""){
				window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1&mastergroup=${mastergroup}";
				}else{
					window.location.href = "<%=request.getContextPath()%>/upbenefit/upbenefit_nm01_CoverageSetup.do?tab_flag=tab_6&menu_id=menu_3&mastergroup=${mastergroup}";
				}
				});

//Sub-Group Info
$("#menu_4")
		.click(
				function() {
				if($("#mastergroup").val()==""){
				window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";
				}else{
					window.location.href = "<%=request.getContextPath()%>/admin/adm_subgroupsSetup.do?tab_flag=tab_6&menu_id=menu_4&mastergroup=${mastergroup}";
				}});

//Benefit Summaries 
$("#menu_5")
		.click(
				function() {
				if($("#mastergroup").val()==""){
				window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";
				}else{
					if($("#mastergroup").val()==2900 ||$("#mastergroup").val()==2920 ||$("#mastergroup").val()==2526 ||$("#mastergroup").val()==2821 ||
					$("#mastergroup").val()==2578 ||$("#mastergroup").val()==2535 ||$("#mastergroup").val()==71200 ||
					$("#mastergroup").val()==70220 ||$("#mastergroup").val()==74000 ||$("#mastergroup").val()==70600 ||
					$("#mastergroup").val()==70120 ||$("#mastergroup").val()==71500 ||$("#mastergroup").val()==72400 ||
					$("#mastergroup").val()==71100 ||$("#mastergroup").val()==70180 ||$("#mastergroup").val()==70040 ||
					$("#mastergroup").val()==70260 ||$("#mastergroup").val()==72500 ||$("#mastergroup").val()==70320 ||
					$("#mastergroup").val()==71900 ||$("#mastergroup").val()==72100 ||$("#mastergroup").val()==73800 ||
					$("#mastergroup").val()==72600){
				 window.location.href = "<%=request.getContextPath()%>/upbenefit/upbenefit_showBenefitSummarynew.do?tab_flag=tab_6&menu_id=menu_5&mastergroup=${mastergroup}";			
				}else{
			 	window.location.href = "<%=request.getContextPath()%>/upbenefit/upbenefit_BenefitSummariesold.do?tab_flag=tab_6&menu_id=menu_5&mastergroup=${mastergroup}";
				}
					//window.location.href = "<%=request.getContextPath()%>/admin/adm_BenefitSummariesSetup.do?tab_flag=tab_6&menu_id=menu_5&mastergroup=${mastergroup}";
				}});

//Rx Plan Info
$("#menu_6")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_RxPlanInfoSetup.do?tab_flag=tab_6&menu_id=menu_6&mastergroup=${mastergroup}";
				});

//Teams
$("#menu_7")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_TeamSetup.do?tab_flag=tab_6&menu_id=menu_7&mastergroup=${mastergroup}";
				});
//cobra Rates
$("#menu_8")
		.click(
				function() {
				if($("#mastergroup").val()==""){
				window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";
				}else{
					window.location.href = "<%=request.getContextPath()%>/admin/adm_ratescobraSetup.do?tab_flag=tab_6&menu_id=menu_8&mastergroup=${mastergroup}";
				}});
//Rates
$("#menu_9")
		.click(
				function() {
				if($("#mastergroup").val()==""){
				window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";
				}else{
					window.location.href = "<%=request.getContextPath()%>/admin/adm_ratesSetup.do?tab_flag=tab_6&menu_id=menu_9&mastergroup=${mastergroup}";
				}});
//Old Employee Classes
$("#menu_10")
		.click(
				function() {
				if($("#mastergroup").val()==""){
				window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";
				}else{
					window.location.href = "<%=request.getContextPath()%>/admin/adm_planSetup.do?tab_flag=tab_6&menu_id=menu_10&mastergroup=${mastergroup}";
				}});
//Terminate
$("#menu_11")
		.click(
				function() {
				if($("#mastergroup").val()==""){
				window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";
				}else{
					window.location.href = "<%=request.getContextPath()%>/admin/adm_grouptermSetup.do?tab_flag=tab_6&menu_id=menu_11&mastergroup=${mastergroup}";
				}});
</script>
</html>
