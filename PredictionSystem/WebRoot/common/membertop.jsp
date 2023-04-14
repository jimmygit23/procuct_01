<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26" align="center" valign="middle" class="Tabmenu1" 
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_1" href="###" class="Tabmenu1">HOME</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				
				<td height="26" align="center" valign="middle" class="Tabmenu1" 
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_2" href="###" class="Tabmenu1">BENEFITS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				
				<td height="26" align="center" valign="middle" class="Tabmenu1" 
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_3" href="###" class="Tabmenu1">FIND PROVIDER</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				 
				<td height="26" align="center" valign="middle" class="Tabmenu1" 
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_4" href="#" class="Tabmenu1">CLAIMS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				
				<td height="26" align="center" valign="middle" class="Tabmenu1" 
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_5" href="###" class="Tabmenu1">MEMBER INFO</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				<td height="26" align="center" valign="middle" class="Tabmenu1" 
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_6" href="###" class="Tabmenu1">HELP</a>
				</td>
				 
				 
			</tr>
		</table>
		<input id="tab_flag" type="hidden" value="${tab_flag}" name="tab_flag" />
        <!--TO old  home  -->
		 <form id="backhome1" action="" method="post">
			<input type="hidden" id="1" name="login" value="${sessionUser.login}">
			<input type="hidden" id="2" name="password" value="${sessionUser.encpassword}">
			<input type="hidden" id="3" name="checkgr_number" value="${sessionUser.grpno}">
		 </form>
	</body>
	<script type="text/javascript">
$(document).ready(function() {
	var tab_flag = $("#tab_flag").val();
	var tab_id = '#' + tab_flag;
	$(tab_id).parent().attr("class", "Tabmenu2");
	$(tab_id).parent().mouseout(function() {
		$(tab_id).parent().attr("class", "Tabmenu2");
	});
});

//home tab

 $("#tab_1")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_initHome.do?tab_flag=tab_1";
				});

<%-- 
// to old home
$("#tab_1").click(
   function (){
           $("#backhome1").attr("action","${sessionUser.oldurl}/quick_logon.asp")
   		   $("#backhome1").submit();
       }
);
--%>
//benifits tab

$("#tab_2")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_benefitInit.do?tab_flag=tab_2";
				});

<%-- 
// old
$("#tab_2")
		.click(
				function() {
					window.location.href = "${sessionUser.oldurl}/members/benefitsummary.asp";
				});

--%>

//provider tab

$("#tab_3")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_initProvider.do?tab_flag=tab_3";
				});

<%-- 
//old
$("#tab_3")
		.click(
				function() {
					window.location.href = "${sessionUser.oldurl}/members/providersearch.asp";
				});

--%>
//claims tab  
$("#tab_4")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_initClaimPage.do?tab_flag=tab_4";
				});



//member info

$("#tab_5")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_initMemInfo.do?tab_flag=tab_5";
				});
<%--  
//old
$("#tab_5")
		.click(
				function() {
					window.location.href = "${sessionUser.oldurl}/members/personal_info.asp";
				});


--%>
//help

$("#tab_6")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_initHelp.do?tab_flag=tab_6&menu_id=menu_1";
				});

<%-- 
// old
$("#tab_6")
		.click(
				function() {
					window.location.href = "${sessionUser.oldurl}/members/feedback.asp";
				});


--%>
</script>

</html>
