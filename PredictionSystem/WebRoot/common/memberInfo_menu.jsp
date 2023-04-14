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
			<c:if test="${sessionUser.msoid != 4 && sessionUser.grpno != 70080 && sessionUser.grpno != 30100 && 
					sessionUser.grpno != 30101 && sessionUser.grpno != 30102 && sessionUser.grpno != 30103 && 
					sessionUser.grpno != 30104 && sessionUser.grpno != 72400 && sessionUser.grpno != 72401 && 
					sessionUser.grpno != 72402 && sessionUser.grpno != 72500 && sessionUser.grpno != 72501 &&
					sessionUser.grpno != 72300 && sessionUser.grpno != 72301 && sessionUser.grpno != 71900 &&
					sessionUser.grpno != 71901 && sessionUser.grpno != 71902 && sessionUser.grpno != 71903 &&
					sessionUser.grpno != 71904 && sessionUser.grpno != 73300 && sessionUser.grpno != 73301 &&
					sessionUser.grpno != 73000 && sessionUser.grpno != 72900 && sessionUser.grpno != 73100 &&
					sessionUser.grpno != 73101 && sessionUser.grpno != 73102 && sessionUser.grpno != 73200 &&
					sessionUser.grpno != 73201 && sessionUser.grpno != 70100 && sessionUser.grpno != 73500 &&
					sessionUser.grpno != 73501 && sessionUser.grpno != 73600 && sessionUser.grpno != 73601 &&
					sessionUser.grpno != 70060 && sessionUser.grpno != 71100 && sessionUser.grpno != 72200 &&
					sessionUser.grpno != 72201 && sessionUser.grpno != 70040 && sessionUser.grpno != 70120 &&
					sessionUser.grpno != 71700 && sessionUser.grpno != 73800 && sessionUser.grpno != 99900 &&
					sessionUser.grpno != 99901 && sessionUser.grpno != 99902 && sessionUser.grpno != 99903 && sessionUser.grpno != 99904}">
				<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="#" id="menu_4" class="Tabmenu3">Request HIPAA Certificate</a>
					</td>
				</tr>
			</c:if>	
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
$("#menu_1")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_memInfoAcc.do?tab_flag=tab_5&menu_id=menu_1";
				});
//
$("#menu_2").click(function() {
	//window.location.href = "${sessionUser.oldurl}/members/WebsiteSettings.asp";
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
