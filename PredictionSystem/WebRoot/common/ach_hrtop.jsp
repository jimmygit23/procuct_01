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
					<a id="tab_6" href="###" class="Tabmenu1">FORMS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				<%--<c:if test="${sessionUser.msoid != 6}">--%>
				<c:if test="${sessionUser.ssn > 2 }">
					<td height="26" align="center" valign="middle" class="Tabmenu1"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a id="tab_2" href="#" class="Tabmenu1"> REPORTS </a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
				</c:if>
				<%--</c:if>--%>
				<td height="26" align="center" valign="middle" class="Tabmenu1" 
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_3" href="###" class="Tabmenu1">EMPLOYEES</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				
				<td height="26" align="center" valign="middle" class="Tabmenu1"
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_4" href="###" class="Tabmenu1">OTHER SERVICES</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				<td height="26" align="center" valign="middle" rowspan="2"
					class="Tabmenu1" onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_5" href="###" class="Tabmenu1">HELP</a>
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
	   window.location.href="<%=request.getContextPath()%>/hr/hr_initHome.do?tab_flag=tab_1";
   });
   
    <%--
   //old home
   $("#tab_1").click(
	function (){
	   $("#backhome").attr("action","${sessionUser.oldurl}/quick_logon.asp")
	   $("#backhome").submit();
	});
   --%>
   
   //Report tab
  
   $("#tab_2").click(function(){
	  window.location.href="<%=request.getContextPath()%>/hr/hr_initReport.do?tab_flag=tab_2";
	  //window.open("https://secure.achonline.com/employers/reports.asp?login=${sessionUser.login}&password=${sessionUser.password}");
      //$("#backhome").attr({"action":"https://secure.achonline.com/employers/reports.asp","target":"_blank"});
	 // $("#backhome").submit();
   });
  <%-- 
	   //old
	   $("#tab_2").click(function(){
		 window.open("${sessionUser.oldurl}/employers/reports.asp?login=${sessionUser.login}&password=${sessionUser.password}");
	   });
	--%>
    <%-- 
   //EMPLOYEES tab
    $("#tab_3").click(function(){
	  window.location.href="<%=request.getContextPath()%>/hr/hr_initEmployee.do?tab_flag=tab_3"; 
   });
   --%> 
   
   //EMPLOYEES tab
    $("#tab_3").click(function(){
	  window.location.href="<%=request.getContextPath()%>/hr/hr_empSearchInit.do?tab_flag=tab_3&menu_id=menu_1"; 
   });
   
   //OTHER SERVICES tab    
   
   $("#tab_4").click(function(){
    	window.location.href="<%=request.getContextPath()%>/hr/hr_initOthers.do?tab_flag=tab_4";
    });	
  <%--
   //old 
   $("#tab_4").click(function(){
    	window.location.href="${sessionUser.oldurl}/employers/other.asp";
    });	
    --%>
   
   
   //HELP
 
   $("#tab_5").click(function(){
	   window.location.href="<%=request.getContextPath()%>/hr/hr_initHelp.do?tab_flag=tab_5";
   });
  <%-- 
 // old
    $("#tab_5").click(function(){
	   window.location.href="${sessionUser.oldurl}/employers/feedback.asp";
   });

--%>
  $("#tab_6").click(function(){
	//    $("#backhome").attr({"action":"https://secure.achonline.com/employers/supplies.asp","target":"_blank"});
	//    $("#backhome").submit();
		//window.open("https://secure.achonline.com/employers/supplies.asp?login=${sessionUser.login}&password=${sessionUser.password}");
        window.location.href="<%=request.getContextPath()%>/bk/bk_bkformtab.do?tab_flag=tab_6";
   
   });
 </script>   
</html>
