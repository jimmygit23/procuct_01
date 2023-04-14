<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Current
						Employees</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_2" class="Tabmenu3">Census Analysis</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_3" class="Tabmenu3">New Employees</a>
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
//
$("#menu_1").click(function(){
	window.location.href="<%=request.getContextPath()%>/hr/hr_empSearchInit.do?tab_flag=tab_3&menu_id=menu_1"
});
//census Analysis
// old<%--
$("#menu_2").click(function(){
	window.location.href= "${sessionUser.oldurl}/employers/CensusByTiers.asp";
});

$("#menu_3").click(function(){
	window.location.href= "${sessionUser.oldurl}/employers/NewEmployees.asp";
});
--%>

$("#menu_2").click(function(){
	window.location.href="<%=request.getContextPath()%>/hr/hr_hrEmpCensus.do?tab_flag=tab_3&menu_id=menu_2"
});

$("#menu_3").click(function(){
	 window.location.href="<%=request.getContextPath()%>/hr/hr_empNewEmp.do?tab_flag=tab_3&menu_id=menu_3"
	 //old
	 //$("#backhome").attr({"action":"https://secure.achonline.com/newta/employers/nm01-personal.asp","target":"_blank"});
	 //$("#backhome").submit();

});

</script>
</html>
