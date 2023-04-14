<html>
	<body>

		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Previous Calls</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3">Memos</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_3" class="Tabmenu3">Changes History</a>
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
//
	$("#menu_1").click(function(){
		window.location.href="<%=request.getContextPath()%>/employee/emp_callsMemos.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_6&menu_id=menu_1";
	});
	$("#menu_2").click(function(){
		window.location.href="<%=request.getContextPath()%>/employee/emp_customMemos.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_6&menu_id=menu_2";
	});
	$("#menu_3").click(function(){
		window.location.href="<%=request.getContextPath()%>/employee/emp_customChanHis.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_6&menu_id=menu_3"
	});
</script>
</html>
