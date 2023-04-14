<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<a id="tab_2" href="###" class="Tabmenu1">REPORTS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				 
				<td height="26" align="center" valign="middle" class="Tabmenu1" 
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_3" href="###" class="Tabmenu1">CUSTOMER SERVICE</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				
				<c:if test="${sessionUser.loginType eq 'A' or (sessionUser.msoid eq 0 and sessionUser.ssn > 1)}">
				  <c:if test="${sessionUser.login ne 'melanieball' and sessionUser.login ne 'mikewarren'}">
					<td height="26" align="center" valign="middle" class="Tabmenu1" 
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a id="tab_6" href="###" class="Tabmenu1">CLIENT SETUP</a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
				  </c:if>
				</c:if>
				
				<td height="26" align="center" valign="middle" class="Tabmenu1"
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					    <a id="tab_4" href="###" class="Tabmenu1">LOGINS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
			 <c:if test="${sessionUser.login ne 'melanieball' and sessionUser.login ne 'mikewarren'}">
				<td height="26" align="center" valign="middle" class="Tabmenu1"
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a  id="tab_5" href="###" class="Tabmenu1">EMPLOYEES</a>
				</td>
			
					  <td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
			</c:if>
				<c:if test="${sessionUser.loginType eq 'A' or (sessionUser.msoid eq 0 and sessionUser.ssn eq 3)}">
					
					<td height="26" align="center" valign="middle" class="Tabmenu1"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a id="tab_7" href="###" class="Tabmenu1">MANAGER FUNCTIONS</a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
				</c:if>	
				
				<c:if test="${sessionUser.loginType eq 'A'}">
					  
					<td height="26" align="center" valign="middle" class="Tabmenu1"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a id="tab_8" href="###" class="Tabmenu1">
							<font style="color:blue;font-size:16;font-weight:bold"><i>GOD</i></font>
						</a>
					</td>
					<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				</c:if>
				
				<c:if test="${sessionUser.login ne 'melanieball' and sessionUser.login ne 'mikewarren'}">
				
				<td height="26" align="center" valign="middle" class="Tabmenu1"
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_9" href="###" class="Tabmenu1">ACH REPORTS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				<td height="26" align="center" valign="middle" class="Tabmenu1"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a  id="tab_10" href="###" class="Tabmenu1">Connections</a>
					</td>
				</c:if>
			</tr>
		</table>
		<input id="tab_flag" type="hidden" value="${tab_flag}" name="tab_flag" />
		<form id="backhome" action="" method="post">
			<input type="hidden" id="1" name="login" value="${sessionUser.login}">
			<input type="hidden" id="2" name="password" value="${sessionUser.encpassword}">
		</form>
		
	</body>
	<script type="text/javascript">
$(document).ready(function(){
	var tab_flag = $("#tab_flag").val();
	var tab_id = '#'+tab_flag;
	$(tab_id).parent().attr("class","Tabmenu2");
	$(tab_id).parent().mouseout(function(){
  		$(tab_id).parent().attr("class","Tabmenu2");
	});
});

//home tab
$("#tab_1").click(function(){
	window.location.href="<%=request.getContextPath()%>/admin/adm_adminHome.do?tab_flag=tab_1";
}); 

//report tab
$("#tab_2").click(function(){
	window.location.href="<%=request.getContextPath()%>/admin/adm_adminReport.do?tab_flag=tab_2";

//	$("#backhome").attr({"action":"https://secure.achonline.com/admin/reports.asp","target":"_blank"});
//	$("#backhome").submit();
});

//customer service tab  
$("#tab_3").click(function(){
	window.location.href="<%=request.getContextPath()%>/admin/adm_adminCustomService.do?tab_flag=tab_3"; 
});
      
  //login         
$("#tab_4").click(function(){
	window.location.href="<%=request.getContextPath()%>/admin/adm_adminLogin.do?tab_flag=tab_4";
});	

// employee
$("#tab_5").click(function(){
	window.location.href="<%=request.getContextPath()%>/admin/adm_adminEmployee.do?tab_flag=tab_5";
});

// client setup
$("#tab_6").click(function(){
	window.location.href="<%=request.getContextPath()%>/admin/adm_clientSetup.do?tab_flag=tab_6&menu_id=menu_1";
	//window.open("https://secure.achonline.com/admin/mastergroups.asp?login=${sessionUser.login}&password=${sessionUser.password}");
   //$("#backhome").attr({"action":"https://secure.achonline.com/admin/mastergroups.asp","target":"_blank"});
  // $("#backhome").submit();
});

// manager functions
$("#tab_7").click(function(){
	//window.location.href="<%=request.getContextPath()%>/god/god_manager.do?tab_flag=tab_7";
	//window.open("https://secure.achonline.com/admin/managers.asp?login=${sessionUser.login}&password=${sessionUser.password}");
   /*  $("#backhome").attr({"action":"https://secure.achonline.com/admin/managers.asp","target":"_blank"});
    $("#backhome").submit(); */
    window.location.href="<%=request.getContextPath()%>/admin/adm_adminManagers.do?tab_flag=tab_7"
});

// god
$("#tab_8").click(function(){
	//window.location.href="<%=request.getContextPath()%>/god/god_god.do?tab_flag=tab_8";
	//window.open("https://secure.achonline.com/admin/god.asp?login=${sessionUser.login}&password=${sessionUser.password}");
    $("#backhome").attr({"action":"https://secure.achonline.com/admin/god.asp","target":"_blank"});
    $("#backhome").submit();
});

// ach reports
$("#tab_9").click(function(){
	//window.location.href="<%=request.getContextPath()%>/god/god_achReport.do?tab_flag=tab_9";
	//window.open("https://secure.achonline.com/admin/reportsupply.asp?login=${sessionUser.login}&password=${sessionUser.password}");
   window.location.href="<%=request.getContextPath()%>/admin/adm_adminReportSupply.do?tab_flag=tab_9";
   //$("#backhome").attr({"action":"https://secure.achonline.com/admin/reportsupply.asp","target":"_blank"});
   //$("#backhome").submit();
});

// asa
$("#tab_10").click(function(){
	//window.location.href="<%=request.getContextPath()%>/admin/adm_adminDep.do?tab_flag=tab_10&menu_id=menu_1";
	window.open("<%=request.getContextPath()%>/admin/adm_adminDep.do?tab_flag=tab_10&menu_id=menu_1");
});
</script> 	
</html>