<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>

		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_1" class="Tabmenu3">Benefit Summary</a>
				</td>
			</tr>
			<%--<c:if test="${grpno != 30100 && grpno != 30101 && grpno != 30102 && grpno != 30103 && grpno != 30104}">--%>
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
					<a href="#" id="menu_3" class="Tabmenu3">Flex Account</a>
				</td>
			</tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_4" class="Tabmenu3">Additional Documents</a>
				</td>
			</tr>
			<tr>

			<c:if test="${grpno eq 2535 or grpno eq 2582 or grpno eq 2526 or grpno eq 2527 or grpno eq 2542 or grpno eq 2578 or grpno eq 2821 or grpno eq 2565 or grpno eq 2566 or grpno eq 2901 or
			  grpno eq 2902 or grpno eq 2903 or grpno eq 2904 or grpno eq 2905 or grpno eq 2906 or grpno eq 2907 or grpno eq 2920 or grpno eq 2921 or grpno eq 2922}">
			  <tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_6" class="Tabmenu3">ID Card Sample</a>
				</td>
			</tr>
			</c:if>
                       <c:if test="${grpno eq 2821 or grpno eq 2901 or grpno eq 2902 or grpno eq 2903 or grpno eq 2904 or grpno eq 2905 or grpno eq 2906 or grpno eq 2907}">
			  <tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="#" id="menu_7" class="Tabmenu3">ID Card Sample Dental Only</a>
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

 $("#menu_1").click(function(){
	//window.location.href="<%=request.getContextPath()%>/employee/emp_benefitSummary.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_2&menu_id=menu_1";
	window.location.href="<%=request.getContextPath()%>/employee/emp_displayBenefitSummary.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_2&menu_id=menu_1";
	//window.open("https://secure.achonline.com/customerservice/benefitsummary.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");		
 });

  $("#menu_2").click(function(){
	  	window.location.href="<%=request.getContextPath()%>/employee/emp_benefitAccumulator.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_2&menu_id=menu_2";
	});

$("#menu_3").click(function(){
      window.location.href="<%=request.getContextPath()%>/employee/emp_flexAccount.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_2&menu_id=menu_3";
	//window.open("https://secure.achonline.com/customerservice/FlexAccount.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
});

$("#menu_4").click(function(){
	//window.open("https://secure.achonline.com/customerservice/DocumentPostings.asp?sub_number33=${grpno}&emp_number33=${empno}&loginType=${sessionUser.loginType}");
window.location.href="<%=request.getContextPath()%>/employee/emp_DocumentPostings.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_2&menu_id=menu_4";

});
$("#menu_6").click(function(){
    if ('${grpno}' == 2535){
       window.location.href="<%=request.getContextPath()%>/idcard/2535_Blue_Beacon_PHCS_20150605.pdf";
    }else if ('${grpno}' == 2582){
       window.location.href="<%=request.getContextPath()%>/idcard/2582_Blue_Beacon_PHCS_20150605.pdf";
    }else if ('${grpno}' == 2526){
       window.location.href="<%=request.getContextPath()%>/idcard/Valley_Admin_2526.pdf";
    }else if ('${grpno}' == 2527){
       window.location.href="<%=request.getContextPath()%>/idcard/Valley_Bar_2527.pdf";
    }else if ('${grpno}' == 2542) {
       window.location.href="<%=request.getContextPath()%>/idcard/Double_E_2542.pdf";
    }else if ('${grpno}' == 2578){
       window.location.href="<%=request.getContextPath()%>/idcard/Labette_County_2578.pdf";
    }else if ('${grpno}' == 2821){
       window.location.href="<%=request.getContextPath()%>/idcard/HRMC_ID_Card_Med&Dent_2821.pdf";
    }else if ('${grpno}' == 2565){
       window.location.href="<%=request.getContextPath()%>/idcard/NEIWPCC_FH_2565.pdf"
    }else if ('${grpno}' == 2566){
      window.location.href="<%=request.getContextPath()%>/idcard/ID Card 2566 FHT.pdf"
    }else if ('${grpno}' == 2901 || '${grpno}' == 2902){
       window.location.href="<%=request.getContextPath()%>/idcard/ASE_PHCS-FDH2901_2902.pdf";
    }else if ('${grpno}' == 2903 || '${grpno}' == 2904 || '${grpno}' == 2905){
       window.location.href="<%=request.getContextPath()%>/idcard/ASE_PHCS-DHA2903_2904_2905.pdf";
    }else if ('${grpno}' == 2906){
       window.location.href="<%=request.getContextPath()%>/idcard/ASE_FH-DHA2906.pdf";
    }else if ('${grpno}' == 2907){
       window.location.href="<%=request.getContextPath()%>/idcard/ASE_FH-FDH2907.pdf";
    }else if ('${grpno}' == 2922){
       window.location.href="<%=request.getContextPath()%>/idcard/USI Card Sample DHA.pdf";
    }else if ('${grpno}' == 2921){
       window.location.href="<%=request.getContextPath()%>/idcard/USI FH FDH.pdf";
    }else if ('${grpno}' == 2920){
       window.location.href="<%=request.getContextPath()%>/idcard/USI PHCS FDH.pdf";
    }
	
});
$("#menu_7").click(function(){
    if ('${grpno}' == 2821){
    window.location.href="<%=request.getContextPath()%>/idcard/HRMC_ID Card_Dental_Only_2821.pdf";
   }else if ('${grpno}' == 2901 || '${grpno}' == 2902 || '${grpno}' == 2907){
       window.location.href="<%=request.getContextPath()%>/idcard/ASE_DentalOnly_FDH2901_2902_2907.pdf";
  }else if ('${grpno}' == 2903 || '${grpno}' == 2904 || '${grpno}' == 2905 || '${grpno}' == 2906){
       window.location.href="<%=request.getContextPath()%>/idcard/ASE_DentalOnly_DHA2903_2904_2905_2906.pdf";
  }
});
</script>
</html>
