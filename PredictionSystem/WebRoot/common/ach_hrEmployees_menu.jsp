<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<a href="###" id="menu_2" class="Tabmenu3">New Employees</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_3" class="Tabmenu3">Review Changes &amp; Enrollments</a>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_4" class="Tabmenu3">Census Analysis</a>
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

$("#menu_1").click(function(){
	window.location.href="<%=request.getContextPath()%>/hr/hr_empSearchInit.do?tab_flag=tab_3&menu_id=menu_1"
});

$("#menu_2").click(function(){
	window.location.href="<%=request.getContextPath()%>/hr/hr_empNewEmp.do?tab_flag=tab_3&menu_id=menu_2"
	//window.open("https://secure.achonline.com/employers/NewEmployees.asp?login=${sessionUser.login}&password=${sessionUser.password}");
    //$("#backhome").attr({"action":"https://secure.achonline.com/employers/NewEmployees.asp","target":"_blank"});
	//$("#backhome").submit();
});

$("#menu_3").click(function(){

   //  $("#backhome").attr({"action":"https://secure.achonline.com/employers/review.asp","target":"_blank"});
	//$("#backhome").submit();
		window.location.href="<%=request.getContextPath()%>/hr/hr_hrReview_Changes_Enrollments.do?tab_flag=tab_3&menu_id=menu_3"
});

$("#menu_4").click(function(){
	window.location.href="<%=request.getContextPath()%>/hr/hr_hrEmpCensus.do?tab_flag=tab_3&menu_id=menu_4"
});
</script>
</html>
