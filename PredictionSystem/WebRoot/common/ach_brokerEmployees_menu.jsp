<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
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
					<a href="###" id="menu_8" class="Tabmenu3">New Employees</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_2" class="Tabmenu3">Census Analysis</a>
				</td>
			</tr>
		<!--  <c:if test="${sessionUser.loginType eq 'O' or sessionUser.loginType eq 'S'}">
				<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="###" id="menu_7" class="Tabmenu3">Review Changes &amp; Enrollments</a>
					</td>
				</tr>
			</c:if>-->	
			<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="###" id="menu_7" class="Tabmenu3">Review Changes &amp; Enrollments</a>
					</td>
				</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_4" class="Tabmenu3">Review Plan Documents</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_5" class="Tabmenu3">Custom Document Postings</a>
				</td>
			</tr>
			<c:if test="${sessionUser.login ne 'Allanm' and sessionUser.login ne 'hcs1'}">
				<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="###" id="menu_6" class="Tabmenu3">Location Change Request</a>
					</td>
				</tr>
			</c:if>
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
$("#menu_1")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/bk/bk_bkinit.do?tab_flag=tab_3&menu_id=menu_1";
				});

//census Analysis
$("#menu_2").click(function() {
	window.location.href = "<%=request.getContextPath()%>/bk/bk_brkEmpCensus.do?tab_flag=tab_3&menu_id=menu_2";
});

<%--
$("#menu_3").click(function() {
	window.location.href = "<%=request.getContextPath()%>/bk/bk_newEmployee.do?tab_flag=tab_3&menu_id=menu_3";
});
--%>

$("#menu_4").click(function() {
	//window.location.href = "<%=request.getContextPath()%>/bk/bk_empPlan.do?tab_flag=tab_3&menu_id=menu_4";
	//window.open("https://secure.achonline.com/brokers/spd_input.asp?login=${sessionUser.login}&password=${sessionUser.password}&adminTab=${sessionUser.adminTab}");
    //$("#backhome").attr({"action":"https://secure.achonline.com/brokers/spd_input.asp","target":"_blank"});
	//$("#backhome").submit();
	window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_4&filename=spd_input.asp";
});

<%--
$("#menu_4").click(function() {
	window.location.href = "${sessionUser.oldurl}/brokers/spd_input.asp";
});
--%>

$("#menu_5").click(function() {
window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_5&filename=DocumentPostings.asp";
	//window.open("https://secure.achonline.com/brokers/DocumentPostings.asp?login=${sessionUser.login}&password=${sessionUser.password}&adminTab=${sessionUser.adminTab}");
    //$("#backhome").attr({"action":"https://secure.achonline.com/brokers/DocumentPostings.asp","target":"_blank"});
	//$("#backhome").submit();
});

$("#menu_6").click(function() {
	//window.open("https://secure.achonline.com/brokers/eligibility_LocationRequest.asp?login=${sessionUser.login}&password=${sessionUser.password}&adminTab=${sessionUser.adminTab}");
    //$("#backhome").attr({"action":"https://secure.achonline.com/brokers/eligibility_LocationRequest.asp","target":"_blank"});
	//$("#backhome").submit();
	window.location.href="<%=request.getContextPath()%>/bk/bk_brkotherChange.do?tab_flag=tab_3&menu_id=menu_6"
});

$("#menu_7").click(function() {
	//window.open("https://secure.achonline.com/brokers/review.asp?login=${sessionUser.login}&password=${sessionUser.password}&adminTab=${sessionUser.adminTab}");
   // $("#backhome").attr({"action":"https://secure.achonline.com/brokers/review.asp","target":"_blank"});
	//$("#backhome").submit();
	//	window.location.href="<%=request.getContextPath()%>/admin/adm_adminEmployeeChange.do?tab_flag=tab_5&menu_id=menu_1";
window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_7&filename=review.asp";
});
$("#menu_8").click(function(){
	//window.open("https://secure.achonline.com/brokers/NewEmployees.asp?login=${sessionUser.login}&password=${sessionUser.password}");
    //$("#backhome").attr({"action":"https://secure.achonline.com/brokers/NewEmployees.asp","target":"_blank"});
	//$("#backhome").submit();
	window.location.href="<%=request.getContextPath()%>/hr/hr_empNewEmp.do?tab_flag=tab_3&menu_id=menu_8"
});
</script>
</html>
