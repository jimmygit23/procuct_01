<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<c:if test="${sessionUser.ssn  > 1}">
				<tr>
					<td height="26px;" align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="#" id="menu_1" class="Tabmenu3">Employers</a>
					</td>
				</tr>
				<tr>
					<td height="26px;" align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="#" id="menu_2" class="Tabmenu3">Brokers</a>
					</td>
				</tr>
				<tr>
					<td height="26px;" align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="#" id="menu_3" class="Tabmenu3">Attach Brokers</a>
					</td>
				</tr>
				<tr>
					<td>
						<img src="<%=request.getContextPath()%>/image/left_orange2.gif"
							width="97" height="33">
					</td>
				</tr>
			</c:if>	
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
//employees
$("#menu_1").click(function() {
	window.location.href="<%=request.getContextPath()%>/admin/adm_adminLoginEmployee.do?tab_flag=tab_4&menu_id=menu_1";
});

//brokers
$("#menu_2").click(function() {
//	window.open("https://secure.achonline.com/admin/loginmanagement_broker.asp?login=${sessionUser.login}&password=${sessionUser.password}");
	window.location.href="<%=request.getContextPath()%>/admin/adm_loginmanagement_broker.do?tab_flag=tab_4&menu_id=menu_2";
});

//Attach Brokers
$("#menu_3").click(function() {
//	window.open("https://secure.achonline.com/admin/brokers.asp?login=${sessionUser.login}&password=${sessionUser.password}");
	window.location.href="<%=request.getContextPath()%>/admin/adm_broker_groups.do?tab_flag=tab_4&menu_id=menu_3";
});
</script>
</html>
