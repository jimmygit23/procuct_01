<html>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td height="26px;" align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'"><a href="#" id="menu_1"
				class="Tabmenu3">Job Listings</a></td>
		</tr>
		<tr>
			<td height="26px;" align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'"><a href="#" id="menu_2"
				class="Tabmenu3">Claims Addresses</a></td>
		</tr>
		<tr>
			<td height="26px;" align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'"><a href="#" id="menu_3"
				class="Tabmenu3">ACH Employee Maintenance</a></td>
		</tr>
		<tr>
			<td height="26px;" align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'"><a href="#" id="menu_4"
				class="Tabmenu3">Client E-Mailing</a></td>
		</tr>
		<tr>
			<td height="26px;" align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'"><a href="#" id="menu_5"
				class="Tabmenu3">MSO Teams</a></td>
		</tr>
		<tr>
			<td height="26px;" align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'"><a href="#" id="menu_6"
				class="Tabmenu3">WLT Daily</a></td>
		</tr>
		<tr>
			<td><img
				src="<%=request.getContextPath()%>/image/left_orange2.gif"
				width="97" height="33"></td>
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
//Job Listings
$("#menu_1")
		.click(
				function() {
				window.location.href="<%=request.getContextPath()%>/admin/adm_adminAch_Jobs.do?tab_flag=tab_7&menu_id=menu_1&submittype=0";
				});

//Claims Addresses
$("#menu_2")
		.click(
				function() {
				window.location.href="<%=request.getContextPath()%>/admin/adm_adminPpoNetWorkInPut.do?tab_flag=tab_7&menu_id=menu_2";				
				 });

//ACH Employee Maintenance
$("#menu_3")
		.click(
				function() {
				window.location.href="<%=request.getContextPath()%>/admin/adm_adminach_employee_maintenance.do?tab_flag=tab_7&menu_id=menu_3&loginname=";
				});

//Client E-Mailing
$("#menu_4")
		.click(
				function() {
				window.location.href="<%=request.getContextPath()%>/admin/adm_adminCEMail.do?tab_flag=tab_7&menu_id=menu_4"
				});

//MSO Teams
$("#menu_5")
		.click(
				function() {
				window.location.href="<%=request.getContextPath()%>/admin/adm_adminTeamMSO.do?tab_flag=tab_7&menu_id=menu_5&type=999";		
				});

//WLT Daily
$("#menu_6")
		.click(
				function() {
				window.location.href="<%=request.getContextPath()%>/admin/adm_adminwltdaily.do?tab_flag=tab_7&menu_id=menu_6";
				});

</script>
</html>
