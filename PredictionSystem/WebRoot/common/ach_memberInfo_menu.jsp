<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Account
						Information</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3">Website
						Settings</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_3" class="Tabmenu3">Request ID
						Card</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_4" class="Tabmenu3">Request HIPAA Certificate</a>
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
        <form id="formssn" action="" method="post">
		 <input type="hidden" id="1" name="grpno" value="${sessionUser.grpno}">
		 <input type="hidden" id="2" name="empno" value="${sessionUser.empno}">
		 <input type="hidden" id="3" name="encssn" value="${sessionUser.encssn}">
		</form>
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
$("#menu_1").click(function() {
	//window.location.href = "<%=request.getContextPath()%>/mem/mem_memInfoAcc.do?tab_flag=tab_5&menu_id=menu_1";
	//window.location.href = "<%=request.getContextPath()%>/emplig/emplig_eligsearch.do?grpno=${sessionUser.grpno}&ssn=${sessionUser.ssn}&empno=${sessionUser.empno}&tab_flag=tab_5&menu_id=menu_1";
	$("#formssn").attr("action","<%=request.getContextPath()%>/emplig/emplig_eligsearch.do?tab_flag=tab_5&menu_id=menu_1");
	$("#formssn").submit();
});
//
$("#menu_2").click(function() {
	//window.open("https://www.achonline.com/members/WebsiteSettings.asp?login=${sessionUser.login}&password=${sessionUser.password}");
	window.location.href="<%=request.getContextPath()%>/mem/mem_memInfoWebsite.do?tab_flag=tab_5&menu_id=menu_2";
	});

$("#menu_3").click(function() {
	//window.location.href = "${sessionUser.oldurl}/members/CardRequest.asp";
	window.location.href="<%=request.getContextPath()%>/mem/mem_memInfoRequest.do?tab_flag=tab_5&menu_id=menu_3";
	});

//Request HIPAA Certificate
$("#menu_4").click(function() {
	window.location.href="<%=request.getContextPath()%>/mem/mem_infoCertificate.do?tab_flag=tab_5&menu_id=menu_4";
});
</script>
</html>
