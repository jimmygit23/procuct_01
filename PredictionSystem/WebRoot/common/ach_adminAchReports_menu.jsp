<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Parameter Sheets</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3">Funding Requests</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_3" class="Tabmenu3">Monthly Billing</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_4" class="Tabmenu3">Monthly Commission</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_5" class="Tabmenu3">Spec Filings</a>
				</td>
			</tr>	
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_6" class="Tabmenu3">Aggregate Reports</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_7" class="Tabmenu3">Bank Reconciliations</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_8" class="Tabmenu3">Quarterly Reports</a>
				</td>
			</tr>						
			<tr>
				<td>
					<img src="<%=request.getContextPath()%>/image/left_orange2.gif"
						width="107" height="33">
				</td>
			</tr>
		</table>
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
//Employee Changes
$("#menu_1")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminParameterSheets.do?tab_flag=tab_9&menu_id=menu_1";
				});

//New Members Enrollment
$("#menu_2")
		.click(
				function() {
				    window.location.href = "<%=request.getContextPath()%>/admin/adm_adminFundingRequest.do?tab_flag=tab_9&menu_id=menu_2";
				    //window.open("https://secure.achonline.com/admin/enrollmentlist.asp?login=${sessionUser.login}&password=${sessionUser.password}");
				    //$("#backhome").attr({"action":"https://secure.achonline.com/admin/enrollmentlist.asp","target":"_blank"});
                    //$("#backhome").submit();
				 });

//EOI Information
$("#menu_3")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminMonthlyBilling.do?tab_flag=tab_9&menu_id=menu_3";
				});

//Changes History
$("#menu_4")
		.click(
				function() {
				    window.location.href = "<%=request.getContextPath()%>/admin/adm_adminMonthlyCommission.do?tab_flag=tab_9&menu_id=menu_4";
					//window.location.href="https://secure.achonline.com/admin/ChangesHistory.asp?login=${sessionUser.login}&password=${sessionUser.password}";
				
				});

//Employee Classes
$("#menu_5")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminSpecFilings.do?tab_flag=tab_9&menu_id=menu_5";
					
				});

//Certificate Request
$("#menu_6")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminAggregateReports.do?tab_flag=tab_9&menu_id=menu_6";
				});

//Location Change Request
$("#menu_7")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminBankReconciliations.do?tab_flag=tab_9&menu_id=menu_7";
				});
//Annual OI
$("#menu_8")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminQuarterlyReports.do?tab_flag=tab_9&menu_id=menu_8";
				});

</script>
</html>
