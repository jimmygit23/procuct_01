<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Find Claims</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3"><font size="2px;">Precertification</font></a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_3" class="Tabmenu3">Repricing Request</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_4" class="Tabmenu3">Claim Form</a>
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
	window.location.href="<%=request.getContextPath()%>/claim/claim_claimsearch.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_4&menu_id=menu_1";		
});

$("#menu_2").click(function(){
  	//window.location.href="<%=request.getContextPath()%>/employee/emp_benefitAccumulator.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_2&menu_id=menu_2";
  //	window.open("https://secure.achonline.com/customerservice/Precertification.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
window.location.href="<%=request.getContextPath()%>/emplig/emplig_Precertification.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_4&menu_id=menu_2";
});

$("#menu_3").click(function(){
	window.location.href = "<%=request.getContextPath()%>/mem/mem_RepricingRequest.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_4&menu_id=menu_3";
//	window.open("https://secure.achonline.com/customerservice/RepricingRequest.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
});

//Claim Form
$("#menu_4").click(function(){
//    $("#backhome1").attr({"action":"https://secure.achonline.com/members/claimform.asp","target":"_blank"});
//	$("#backhome1").submit();
	//window.open("https://secure.achonline.com/members/claimform.asp?login=${sessionUser.login}&password=${sessionUser.password}");
		window.location.href = "<%=request.getContextPath()%>/mem/mem_cliamform.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_4&menu_id=menu_4&type=1";
	
});
</script>
</html>
