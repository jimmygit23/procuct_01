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
					
					<td height="26" align="center" valign="middle" class="Tabmenu1"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						    <a id="tab_4" href="###" class="Tabmenu1">LOGINS</a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
					<td height="26" align="center" valign="middle" class="Tabmenu1"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a  id="tab_5" href="###" class="Tabmenu1">EMPLOYEES</a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
					<c:if test="${sessionUser.login eq 'melanieball' or sessionUser.login eq 'mikewarren' or sessionUser.login eq 'mdixon' or sessionUser.login eq 'shyatt'}">
				
				        <td height="26" align="center" valign="middle" class="Tabmenu1"
					        onMouseOver="this.className='Tabmenu0'"
					        onMouseOut="this.className='Tabmenu1'">
					        <a id="tab_9" href="###" class="Tabmenu1">ACH REPORTS</a>
				        </td>
                                        <td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
                   </c:if>
					<td height="26" align="center" valign="middle" class="Tabmenu1"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a  id="tab_6" href="###" class="Tabmenu1">Connections</a>
					</td>
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

       //   $("#backhome").attr({"action":"https://secure.achonline.com/newta/admin/reports.asp","target":"_blank"});
       //   $("#backhome").submit();

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

// asa
$("#tab_6").click(function(){
	//window.location.href="<%=request.getContextPath()%>/admin/adm_adminDep.do?tab_flag=tab_6&menu_id=menu_1";
	window.open("<%=request.getContextPath()%>/admin/adm_adminDep.do?tab_flag=tab_6&menu_id=menu_1");
});

// ach reports
$("#tab_9").click(function(){
     window.location.href="<%=request.getContextPath()%>/admin/adm_adminReportSupply.do?tab_flag=tab_9";
	//window.location.href="<%=request.getContextPath()%>/god/god_achReport.do?tab_flag=tab_9";
	//window.open("https://secure.achonline.com/admin/reportsupply.asp?login=${sessionUser.login}&password=${sessionUser.password}");
   //$("#backhome").attr({"action":"https://secure.achonline.com/admin/reportsupply.asp","target":"_blank"});
   //$("#backhome").submit();
});
</script> 	
</html>
