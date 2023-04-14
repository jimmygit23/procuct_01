<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Additional Documents</a>
				</td>
			</tr>
			<%--<c:if test="${sessionUser.msoid != 6}">--%>
				<tr>
					<td height="26px;" align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="#" id="menu_2" class="Tabmenu3">Accumulator</a>
					</td>
				</tr>
			<%--</c:if>--%>
                      
                        <tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_3" class="Tabmenu3">Benefit Summary</a>
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
$("#menu_1")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_benefitSum.do?tab_flag=tab_2&menu_id=menu_1";
				});
//
$("#menu_2")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_initBenefitAcc.do?tab_flag=tab_2&menu_id=menu_2";
				});

$("#menu_3")
		.click(
				function() {
					//$("#backhome1").attr({"action":"https://secure.achonline.com/members/benefits_results.asp","target":"_blank"});
	               //$("#backhome1").submit();
	              window.location.href="<%=request.getContextPath()%>/employee/emp_displayBenefitSummary.do?tab_flag=tab_2&menu_id=menu_1";
	               
				});
</script>
</html>
