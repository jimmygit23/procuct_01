<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<c:choose>
		<%-- <c:when test="${sessionUser.msoid eq '6'}">  --%>
		   <c:when test="${'0' eq '6'}">
		      <tr>
					<td height="26" align="center" valign="middle" class="Tabmenu1"  width="100px"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a id="tab_1" href="###" class="Tabmenu1">HOME</a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
					<td height="26" align="center" valign="middle" class="Tabmenu1"  width="100px"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a id="tab_3" href="###" class="Tabmenu1">EMPLOYEES</a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
					<td height="26" align="center" valign="middle" class="Tabmenu1" width="100px"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a  id="tab_5" href="###" class="Tabmenu1">HELP</a>
					</td>
					<td width="2">
					  <img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
									width="2" height="26">
					</td>
					<td bgColor="#ff9900" >
					   &nbsp;
					</td>
				</tr>
		   </c:when>
		   <c:otherwise>
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
						<a id="tab_3" href="###" class="Tabmenu1">EMPLOYEES</a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
					<c:if test="${sessionUser.login ne 'dhristova.hr' && sessionUser.login ne 'ltibbetts.hr' && sessionUser.login ne 'fgallippi' && sessionUser.login ne 'trattan.hr' && sessionUser.login ne 'mfrye.hr' && sessionUser.login ne 'lgager.hr' && sessionUser.login ne 'dlewis.hr' && sessionUser.login ne 'imckinley.hr' && sessionUser.login ne 'debanks.br' }">
						<td height="26" align="center" valign="middle" class="Tabmenu1"
							onMouseOver="this.className='Tabmenu0'"
							onMouseOut="this.className='Tabmenu1'">
							    <a id="tab_4" href="###" class="Tabmenu1">PROVIDER SEARCH</a>
						</td>
						<td width="2">
							<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
								width="2" height="26">
						</td>
					</c:if>
					<td height="26" align="center" valign="middle" class="Tabmenu1"
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
						<a  id="tab_5" href="###" class="Tabmenu1">HELP</a>
					</td>
				</tr>
		  </c:otherwise>
		</c:choose>	
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
	   window.location.href="<%=request.getContextPath()%>/bk/bk_initHome.do?tab_flag=tab_1";
   });
   <%-- 
   // old home
   $("#tab_1").click(
     function (){
       $("#backhome").attr("action","${sessionUser.oldurl}/quick_logon.asp")
   	   $("#backhome").submit();
    });
   --%>
   
   //Report tab
   
   $("#tab_2").click(function(){
      //	window.open("https://secure.achonline.com/newta/brokers/reports.asp?login=${sessionUser.login}&password=${sessionUser.encpassword}");
	  window.location.href="<%=request.getContextPath()%>/report/rep_initReport.do?tab_flag=tab_2";
   });
  
   // old
<%--
   $("#tab_2").click(function(){
	   window.open("${sessionUser.oldurl}/brokers/reports.asp?login=${sessionUser.login}&password=${sessionUser.password}");
   });
   --%>
   
   <%--
   //EMPLOYEES tab
    $("#tab_3").click(function(){
	   window.location.href="<%=request.getContextPath()%>/bk/bk_initEmployee.do?tab_flag=tab_3"; 
   });
   --%>
   
    $("#tab_3").click(function(){
	   window.location.href="<%=request.getContextPath()%>/bk/bk_bkinit.do?tab_flag=tab_3&menu_id=menu_1"; 
   });
            
   //PROVIDER SEARCH tab     
  
   $("#tab_4").click(function(){
    	window.location.href="<%=request.getContextPath()%>/bk/bk_initProvider.do?tab_flag=tab_4";
    });	
   <%-- 
   //old
    $("#tab_4").click(function(){
    	window.location.href="${sessionUser.oldurl}/brokers/prospect.asp";
    });	
    --%>
   
   
   //HELP
 
   $("#tab_5").click(function(){
	   window.location.href="<%=request.getContextPath()%>/bk/bk_initHelp.do?tab_flag=tab_5";
   });
     <%-- 
  //old
   $("#tab_5").click(function(){
	   window.location.href="${sessionUser.oldurl}/brokers/feedback.asp";
   });
    --%> 
 </script> 	
</html>
