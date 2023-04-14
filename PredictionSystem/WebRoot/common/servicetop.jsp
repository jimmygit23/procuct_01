<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_1" href="###" class="Tabmenu1">HOME</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				<td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_9" href="###" class="Tabmenu1">SEARCH PAGE</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				<td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_2" href="###" class="Tabmenu1">BENEFITS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>				
				
				<td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_3" href="###" class="Tabmenu1">ELIGIBILITY</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				
				<td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_4" href="###" class="Tabmenu1">CLAIMS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>				
				<td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_5" href="###" class="Tabmenu1">FIND PROVIDER</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>				
				
				<td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_6" href="###" class="Tabmenu1">CALLS&amp;MEMOS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>	 
				
			   <td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_7" href="###" class="Tabmenu1">SERVICES</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
				
				<td height="26" align="center" valign="middle" 
				     class="Tabmenu1" 
					 onMouseOver="this.className='Tabmenu0'"
					 onMouseOut="this.className='Tabmenu1'">
					<a id="tab_8" href="###" class="Tabmenu1">CONTACTS</a>
				</td>								
				
			</tr>
		</table>
		
		<input id="tab_flag" type="hidden" value="${tab_flag}" name="tab_flag" />
        <!--TO old  home  -->
		 <form id="backhome1" action="" method="post">
			<input type="hidden" id="1" name="login" value="${sessionUser.login}">
			<input type="hidden" id="2" name="password" value="${sessionUser.encpassword}">
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

// to old home
/*$("#tab_1").click(
   function (){
           $("#backhome1").attr("action","${sessionUser.oldurl}/quick_logon.asp")
   		   $("#backhome1").submit();
       }
);*/

$("#tab_1").click(function(){
	$("#backhome1").attr("action","<%=request.getContextPath()%>/admin/adm_adminHome.do")
	$("#backhome1").attr("target","_top");
	$("#backhome1").submit();
});

//BENEFITS
$("#tab_2").click(
   function (){
	    // var grpno = '${grpno}';
	   // var empno = '${empno}';
	    // &sub_number33=${grpno}&emp_number33=${empno}
        //window.open("${sessionUser.oldurl}/customerservice/cs_csrs.asp?place=benefitsummary.asp&gr_number22=${sessionUser.tempflag1}&ssn22=${sessionUser.tempflag2}&sub_number33=${grpno}&emp_number33=${empno}");   
      	window.location.href="<%=request.getContextPath()%>/employee/emp_customBenefit.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_2";      
       }
);
//eedpelig
$("#tab_3").click(
   function (){
         window.location.href="<%=request.getContextPath()%>/emplig/emplig_eligsearch.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_3";      
      // window.location.href="<%=request.getContextPath()%>/employee/emp_serviceSearchHome.do?tab_flag=tab_1";
   }
);
//claims
$("#tab_4").click(
   function (){
         window.location.href="<%=request.getContextPath()%>/claim/claim_claimsearch.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_4";  

       }
);
//FIND PROVIDER
$("#tab_5").click(
   function (){
           //window.open("${sessionUser.oldurl}/customerservice/cs_csrs.asp?place=providersearch.asp&gr_number22=${sessionUser.tempflag1}&ssn22=${sessionUser.tempflag2}&sub_number33=${grpno}&emp_number33=${empno}"); 
      	window.location.href="<%=request.getContextPath()%>/employee/emp_findProvider.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_5";
       }
);
//CALLS&MEMOS
$("#tab_6").click(
   function (){
           //window.open("${sessionUser.oldurl}/customerservice/cs_csrs.asp?place=calltracker.asp&gr_number22=${sessionUser.tempflag1}&ssn22=${sessionUser.tempflag2}&sub_number33=${grpno}&emp_number33=${empno}");
           //window.location.href="<%=request.getContextPath()%>/employee/emp_callsMemos.do?tab_flag=tab_6&grpno=${grpno}&empno=${empno}&menu_id=menu_1"; 
           window.location.href="<%=request.getContextPath()%>/employee/emp_callsMemos.do?tab_flag=tab_6&grpno=${grpno}&empno=${empno}&menu_id=menu_1";
       }
);
//SERVICES
$("#tab_7").click(
   function (){
          // window.open("${sessionUser.oldurl}/customerservice/cs_csrs.asp?place=services.asp&gr_number22=${sessionUser.tempflag1}&ssn22=${sessionUser.tempflag2}&sub_number33=${grpno}&emp_number33=${empno}");
          window.location.href="<%=request.getContextPath()%>/employee/emp_services.do?tab_flag=tab_7&grpno=${grpno}&empno=${empno}";
       }
);
//CONTACTS
$("#tab_8").click(
   function (){
          //window.open("${sessionUser.oldurl}/customerservice/cs_csrs.asp?place=contacts.asp&gr_number22=${sessionUser.tempflag1}&ssn22=${sessionUser.tempflag2}&sub_number33=${grpno}&emp_number33=${empno}");
          window.location.href="<%=request.getContextPath()%>/employee/emp_contacts.do?tab_flag=tab_8&grpno=${grpno}&empno=${empno}";
       }
);
//search page
$("#tab_9").click(
   function (){
        //top.location.href="<%=request.getContextPath()%>/employee/emp_serviceSearchHome.do?tab_flag=tab_9";
         window.open("<%=request.getContextPath()%>/employee/emp_serviceSearchHome.do?tab_flag=tab_9");
        
       
       }
);
</script>
</html>
