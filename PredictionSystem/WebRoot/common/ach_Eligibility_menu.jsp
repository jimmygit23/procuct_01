<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<s:if test="new_employees!=null">
		<tr>
			<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_1"  class="menu_left"  claimNumber="NewEmployees.asp">New Employees</a>
					
				</td>
		</tr>
		</s:if>
	
		<tr>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_1"  class="menu_left"  claimNumber="review.asp"> 	
					Review Changes & Enrollments </a>
				</td>
		</tr>
		<s:if test='sessionUser.loginType!="C"'>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_2"  class="menu_left"  claimNumber="spd_input.asp"> 	
					Review Plan Booklets </a>
				</td>
		</tr>
		<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_3"  class="menu_left"  claimNumber="DocumentPostings.asp"> 	
					Custom Document Postings </a>
				</td>
		</tr>
		</s:if>
			<s:if test='sessionUser.loginType=="B" or sessionUser.loginType=="O"'>
			<tr>
				<td height="26px;" align="center" valign="middle" class="Tabmenu3"
					onmouseover="this.className='Tabmenu5'"
					onmouseout="this.className='Tabmenu3'">
					<a href="###" id="menu_4"  class="location" > 	
					Location Change Request</a>
				</td>
		</tr>
				</s:if>
		
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
	
  $(".menu_left").click(function(){
		var claimNumber = $(this).attr("claimNumber");
		if("review.asp"==claimNumber){
		//window.open("https://secure.achonline.com/brokers/review.asp");
		//window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_7&filename="+claimNumber;
		var type = '${sessionUser.loginType}';
		if (type=='B' || type=='O'){
		window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_7&filename="+claimNumber;
		}else{
		window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_3&filename="+claimNumber;
		}
	
		}else if("spd_input.asp"==claimNumber){
	
		window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_4&filename="+claimNumber;
		}else if("DocumentPostings.asp"==claimNumber){
		
		window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_5&filename="+claimNumber;
		}else if("CurrentEmployees.asp"==claimNumber){

		window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_3&menu_id=menu_1&filename="+claimNumber;
		}else{
		window.location.href = "<%=request.getContextPath()%>/bk/bk_review.do?tab_flag=tab_6&menu_id=menu_1&filename="+claimNumber;
		//window.open("<%=request.getContextPath()%>/bk/bk_review.do?filename="+claimNumber);
		//https://secure.achonline.com/brokers/review.asp}
		}
		});
	$(".location").click(function(){
		window.location.href = "<%=request.getContextPath()%>/bk/bk_brkotherChange.do?tab_flag=tab_3&menu_id=menu_6";  
		}); 

</script>
</html>
