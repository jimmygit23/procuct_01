<html>
  <body>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'">
				<a href="#" id="menu_1" class="Tabmenu3">Patient Benefits</a>
			</td>
		</tr>
		<tr>
			<td align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'" height="26">
				<a href="#" id="menu_2" class="Tabmenu3">Claim Status</a>
			</td>
		</tr>
		<tr>
			<td align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'" height="26">
				<a href="#" id="menu_3" class="Tabmenu3">Contact Info</a>
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

//Patient
$("#menu_1").click(function() {
    var ach = "si";
	window.location.href = "<%=request.getContextPath()%>/provider/prov_benefits.do?menu_id=menu_1&ach="+ach;
});

//Claim
$("#menu_2").click(function() {
    var ach = "si";
	window.location.href = "<%=request.getContextPath()%>/provider/prov_findclaim.do?menu_id=menu_2&ach="+ach;
});

//Contact
$("#menu_3").click(function() {
    var ach = "si";
    window.location.href = "<%=request.getContextPath()%>/provider/prov_contact.do?menu_id=menu_3&ach="+ach;
});
</script>
</html>
