<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Website Tracking</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3">Call Tracking</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_3" class="Tabmenu3">Production</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_4" class="Tabmenu3">Turn-Around</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_5" class="Tabmenu3">Custom Reports</a>
				</td>
			</tr>	
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_6" class="Tabmenu3">WLT<br/> Provider Search</a>
				</td>
			</tr>
															
			<tr>
				<td>
					<img src="<%=request.getContextPath()%>/image/left_orange.gif"
						width="97" height="33">
				</td>
			</tr>
		</table>
		<input id="menu_id" type="hidden" value="${menu_id}" name="menu_id" />

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

//Website Tracking
$("#menu_1")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminReportWebsite.do?tab_flag=tab_2&menu_id=menu_1";
				});
				
//Call Tracking
$("#menu_2")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminReportCall.do?tab_flag=tab_2&menu_id=menu_2";
				//	 window.open("https://secure.achonline.com/admin/call_tracker_report.asp?login=${sessionUser.login}&password=${sessionUser.password}");
				});
				
//Production
$("#menu_3")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminReportProd.do?tab_flag=tab_2&menu_id=menu_3";
	 			//	window.open("https://secure.achonline.com/admin/report_production.asp?login=${sessionUser.login}&password=${sessionUser.password}");
				});
				
//Turn-Around
$("#menu_4")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminReportTurn.do?tab_flag=tab_2&menu_id=menu_4";
				//	 window.open("https://secure.achonline.com/admin/report_turnaround.asp?login=${sessionUser.login}&password=${sessionUser.password}");
				});
				
//Custom Reports
$("#menu_5")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminReportCustom.do?tab_flag=tab_2&menu_id=menu_5";
				//	 window.open("https://secure.achonline.com/admin/customreports.asp?login=${sessionUser.login}&password=${sessionUser.password}");
				});
//WLT Provider Search

$("#menu_6")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminReportWLT.do?tab_flag=tab_2&menu_id=menu_6";
				//	 window.open("https://secure.achonline.com/admin/WLT_Provider_Search.asp?login=${sessionUser.login}&password=${sessionUser.password}");
				});

</script>
</html>
