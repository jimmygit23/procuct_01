<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<c:choose>
		  <c:when test="${sessionUser.msoid eq '6'}">
		   <%--<c:when test="${'0' eq '6'}"> --%>
		        <tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="###" id="menu_1" class="Tabmenu3">Current Employees</a>
					</td>
				</tr>
				<c:if test="${sessionUser.login eq 'ltibbetts.hr' || sessionUser.login eq 'fgallippi' || sessionUser.login eq 'mfrye.hr'}">
				<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="###" id="menu_4" class="Tabmenu3">Review Plan
							Documents</a>
					</td>
				</tr>
				</c:if>
				<tr>
					<td>
						<img src="<%=request.getContextPath()%>/image/left_orange.gif"
							width="97" height="33">
					</td>
				</tr>
		   </c:when>
		   <c:otherwise>
				<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="###" id="menu_1" class="Tabmenu3">Current Employees</a>
					</td>
				</tr>
				<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="###" id="menu_2" class="Tabmenu3">Census Analysis</a>
					</td>
				</tr>
				<c:if test="${(sessionUser.ssn eq 4 && sessionUser.loginType eq 'B') || (sessionUser.login eq 'pgsemrau')}">
					<tr>
						<td align="center" valign="middle" class="Tabmenu3"
							onmouseover="this.className='Tabmenu5'"
							onmouseout="this.className='Tabmenu3'">
							<a href="###" id="menu_3" class="Tabmenu3">New Employees</a>
						</td>
					</tr>
				</c:if>
				<c:if test="${sessionUser.login ne 'Cdudik'}">
				<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="###" id="menu_4" class="Tabmenu3">Review Plan
							Documents</a>
					</td>
				</tr>
				</c:if>
				<tr>
					<td>
						<img src="<%=request.getContextPath()%>/image/left_orange.gif"
							width="97" height="33">
					</td>
				</tr>
			 </c:otherwise>
		   </c:choose>
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
					window.location.href = "<%=request.getContextPath()%>/bk/bk_bkinit.do?tab_flag=tab_3&menu_id=menu_1";
				});

//census Analysis
// old
$("#menu_2").click(function() {
	window.location.href = "${sessionUser.oldurl}/brokers/CensusByTiers.asp";
});

$("#menu_2").click(function() {
	window.location.href = "<%=request.getContextPath()%>/bk/bk_brkEmpCensus.do?tab_flag=tab_3&menu_id=menu_2";
});

<%--
$("#menu_3").click(function() {
	window.location.href = "<%=request.getContextPath()%>/bk/bk_newEmployee.do?tab_flag=tab_3&menu_id=menu_3";
});
--%>
$("#menu_3").click(function(){
	 window.location.href="<%=request.getContextPath()%>/hr/hr_empNewEmp.do?tab_flag=tab_3&menu_id=menu_3"
	//old
	//$("#backhome").attr({"action":"https://secure.achonline.com/newta/brokers/enrollment.asp","target":"_blank"});
	//$("#backhome").submit();
	 //window.open("${sessionUser.oldurl}/newta/brokers/enrollment.asp?login=${sessionUser.login}&password=${sessionUser.encpassword}");
});

$("#menu_4").click(function() {
	window.location.href = "<%=request.getContextPath()%>/bk/bk_empPlan.do?tab_flag=tab_3&menu_id=menu_4";
});

<%--
$("#menu_4").click(function() {
	window.location.href = "${sessionUser.oldurl}/brokers/spd_input.asp";
});
--%>
</script>
</html>
