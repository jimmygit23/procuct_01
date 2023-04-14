<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Employee Changes</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3">New Members Enrollment</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_3" class="Tabmenu3">EOI Information</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_4" class="Tabmenu3">Changes History</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_5" class="Tabmenu3">Employee Classes</a>
				</td>
			</tr>	
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_6" class="Tabmenu3">Certificate Request</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_7" class="Tabmenu3">Location Change Request</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_8" class="Tabmenu3">Annual OI</a>
				</td>
			</tr>						
			<tr>
				<td>
					<img src="<%=request.getContextPath()%>/image/left_orange2.gif"
						width="97" height="33">
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
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeChange.do?tab_flag=tab_5&menu_id=menu_1";
				});

//New Members Enrollment
$("#menu_2")
		.click(
				function() {
				    window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeEnroll.do?tab_flag=tab_5&menu_id=menu_2";
				    //window.open("https://secure.achonline.com/admin/enrollmentlist.asp?login=${sessionUser.login}&password=${sessionUser.password}");
				    //$("#backhome").attr({"action":"https://secure.achonline.com/admin/enrollmentlist.asp","target":"_blank"});
                    //$("#backhome").submit();
				 });

//EOI Information
$("#menu_3")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeEOI.do?tab_flag=tab_5&menu_id=menu_3";
				});

//Changes History
$("#menu_4")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeHistory.do?tab_flag=tab_5&menu_id=menu_4";
				});

//Employee Classes
$("#menu_5")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeClasses.do?tab_flag=tab_5&menu_id=menu_5";
				});

//Certificate Request
$("#menu_6")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeCertificate.do?tab_flag=tab_5&menu_id=menu_6";
				});

//Location Change Request
$("#menu_7")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeLocation.do?tab_flag=tab_5&menu_id=menu_7";
				});
//Annual OI
$("#menu_8")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/admin/adm_adminEmployeeAOI.do?tab_flag=tab_5&menu_id=menu_8";
				});

</script>
</html>
