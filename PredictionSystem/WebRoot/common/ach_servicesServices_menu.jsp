<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Card<br/>Request</a>
				</td>
			</tr>
			<c:if test="${sessionUser.loginType eq 'O' or sessionUser.ssn >  1}">
				<tr>
					<td height="26px;" align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="#" id="menu_6" class="Tabmenu3">Claim Investigation Letters</a>
					</td>
				</tr>
			</c:if>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_2" class="Tabmenu3">Lost Password</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_4" class="Tabmenu3">Rates &amp; Payments</a>
				</td>
			</tr>
			<c:if test="${sessionUser.loginType eq 'O' or sessionUser.ssn >  1 or sessionUser.login eq 'joycemartini' }">
				<tr>
					<td height="26px;" align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="#" id="menu_3" class="Tabmenu3">Cobra letters</a>
					</td>
				</tr>
			</c:if>	
			<!--begin jim add cobra letter new  -->
			<c:if test="${(sessionUser.loginType eq 'O' or sessionUser.ssn >  1) and sessionUser.usernumber==646020421 }">
				<tr>
					<td height="26px;" align="center" valign="middle" class="Tabmenu3"
						onmouseover="this.className='Tabmenu5'"
						onmouseout="this.className='Tabmenu3'">
						<a href="#" id="menu_3_new" class="Tabmenu3">Cobra letters new</a>
					</td>
				</tr>
			</c:if>	
			<!--end   jim add cobra letter new  -->
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_5" class="Tabmenu3">Request HIPAA Certificate</a>
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
	 window.location.href="<%=request.getContextPath()%>/employee/emp_customCardRequest.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_1";		
});

$("#menu_2").click(function(){
	  //window.location.href="<%=request.getContextPath()%>/employee/emp_customLostPassword.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_2"
	//window.open("https://secure.achonline.com/customerservice/lost_pw.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
	window.location.href="<%=request.getContextPath()%>/employee/emp_customLostPassword.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_2";
});

$("#menu_3").click(function(){
        if ('${sessionUser.usernumber}'== 646020421){
	  window.open("https://secure.achonline.com/customerservice/Cobra_letters.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
        }else{
	  //window.location.href="<%=request.getContextPath()%>/employee/emp_cobra_letters.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_2";
         window.open("<%=request.getContextPath()%>/employee/emp_cobra_letters.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_2");
	}
});
// begin jim add function
$("#menu_3_new").click(function(){
	// jim add method
      window.location.href="<%=request.getContextPath()%>/employee/emp_cobra_letters.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_2";
	  //window.open("https://secure.achonline.com/customerservice/Cobra_letters.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
});
// end jim add function
$("#menu_4").click(function(){
	//window.open("https://secure.achonline.com/customerservice/RatesAndPayments.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
	window.location.href="<%=request.getContextPath()%>/employee/emp_rates_payments.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_4";

});

$("#menu_5").click(function(){
    //window.open("https://secure.achonline.com/customerservice/Certificate.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
    window.location.href="<%=request.getContextPath()%>/employee/emp_customRequestCertificate.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_5";
});

$("#menu_6").click(function(){
	window.location.href="<%=request.getContextPath()%>/employee/emp_Claim_Investigation_Letters_step1_start.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_7&menu_id=menu_6";
//	window.open("https://secure.achonline.com/customerservice/newclminvletter.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
});
</script>
</html>
