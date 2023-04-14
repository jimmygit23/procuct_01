<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onMouseOver="this.className='Tabmenu5'"
					onMouseOut="this.className='Tabmenu3'">
					<a
						href="#" id="menu_1"
						class="Tabmenu3">Provider Search</A>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onMouseOver="this.className='Tabmenu5'"
					onMouseOut="this.className='Tabmenu3'">
					<a
						href="#" id="menu_2"
						class="Tabmenu4">Review Plan Documents</A>
				</td>
			</tr>
			<c:if test="${sessionUser.ssn eq 4}">
				<tr>
					<td align="center" valign="middle" class="Tabmenu3"
						onMouseOver="this.className='Tabmenu5'"
						onMouseOut="this.className='Tabmenu3'">
						<a
							href="#" id="menu_3"
							class="Tabmenu4">Employer &nbsp;Web&nbsp; Maintenance</A>
					</td>
				</tr>
			</c:if>	
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onMouseOver="this.className='Tabmenu5'"
					onMouseOut="this.className='Tabmenu3'">
					<a
						href="#" id="menu_4"
						class="Tabmenu4">Custom Documents</A>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onMouseOver="this.className='Tabmenu5'"
					onMouseOut="this.className='Tabmenu3'">
					<a
						href="#" id="menu_5"
						class="Tabmenu4">Certificate of Creditable Coverage Request</A>
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="Tabmenu3"
					onMouseOver="this.className='Tabmenu5'"
					onMouseOut="this.className='Tabmenu3'">
					<a
						href="#" id="menu_6"
						class="Tabmenu4">Location Change Request</A>
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
	window.location.href="<%=request.getContextPath()%>/hr/hr_otherSearch.do?tab_flag=tab_4&menu_id=menu_1"
	//window.location.href = "<%=request.getContextPath()%>/mem/mem_findProvider.do?tab_flag=tab_4&menu_id=menu_1";
	//window.open("https://secure.achonline.com/employers/providersearch.asp?login=${sessionUser.login}&password=${sessionUser.password}");
    //$("#backhome").attr({"action":"https://secure.achonline.com/employers/providersearch.asp","target":"_blank"});
	//$("#backhome").submit();
});	

$("#menu_2").click(function(){
	//window.location.href="<%=request.getContextPath()%>/hr/hr_otherPlan.do?tab_flag=tab_4&menu_id=menu_2"
	//window.open("https://secure.achonline.com/employers/spd_input.asp?login=${sessionUser.login}&password=${sessionUser.password}");
  //  $("#backhome").attr({"action":"https://secure.achonline.com/employers/spd_input.asp","target":"_blank"});
//	$("#backhome").submit();
 window.location.href="<%=request.getContextPath()%>/hr/hr_review_plan_documents.do?tab_flag=tab_4&menu_id=menu_2"
});

$("#menu_3").click(function(){
	window.location.href="<%=request.getContextPath()%>/hr/hr_otherMain.do?tab_flag=tab_4&menu_id=menu_3"
});

$("#menu_4").click(function(){
 //   $("#backhome").attr({"action":"https://secure.achonline.com/employers/DocumentPostings.asp","target":"_blank"});
//	$("#backhome").submit();
	window.location.href="<%=request.getContextPath()%>/hr/hr_ach_hr_customDocuments.do?grpno=${sessionUser.grpno}&tab_flag=tab_4&menu_id=menu_4";
	//window.location.href="<%=request.getContextPath()%>/hr/hr_otherCustom.do?tab_flag=tab_4&menu_id=menu_4"
});

$("#menu_5").click(function(){
	window.location.href="<%=request.getContextPath()%>/hr/hr_otherCert.do?tab_flag=tab_4&menu_id=menu_5"
});

$("#menu_6").click(function(){
	window.location.href="<%=request.getContextPath()%>/hr/hr_otherChange.do?tab_flag=tab_4&menu_id=menu_6"
});
</script>
</html>
