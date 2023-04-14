<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Contact<br>Info</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3" height="26px;"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3">F.A.Q.</a>
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
//helpFAQ
$("#menu_2")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_helpFAQ.do?tab_flag=tab_6&menu_id=menu_2";
				});
//conct
$("#menu_1")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_initHelp.do?tab_flag=tab_6&menu_id=menu_1";
				});
</script>
</html>
