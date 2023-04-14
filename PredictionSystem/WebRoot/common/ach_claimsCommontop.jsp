<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="26" align="center" valign="middle" class="Tabmenu1" width="100px"
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a id="tab_1" href="#" class="Tabmenu1">HOME</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
						width="2" height="26">
				</td>
			
				<td height="26" align="center" valign="middle" class="Tabmenu1" width="100px"
					onMouseOver="this.className='Tabmenu0'"
					onMouseOut="this.className='Tabmenu1'">
					<a href="#" id="tab_2" class="Tabmenu1">CLAIMS</a>
				</td>
				<td width="2">
					<img src="<%=request.getContextPath()%>/image/fgf_orange2.gif"
						width="2" height="26">
				</td>
				
				<td  height="26" bgcolor="#ff9900">&nbsp;</td>
			</tr>
		</table>
	<input id="tab_flag" type="hidden" value="${tab_flag}"  />	
	
    <form id="toOldHome" action=""  method="post">
	 <input type="hidden"  name="login" value="${sessionUser.login}">
	 <input type="hidden"  name="password" value="${sessionUser.password}">
	 <c:if test="${sessionUser.loginType eq 'M'}">
	   <input type="hidden"  name="checkgr_number" value="${sessionUser.grpno}">
	 </c:if>
	 
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
<%-- 
 $("#tab_1")
		.click(
				function() {
					window.location.href = "<%=request.getContextPath()%>/mem/mem_initHome.do?tab_flag=tab_1";
				});

--%>
// to old home
$("#tab_1").click(
   function (){
           $("#toOldHome").attr("action","${sessionUser.oldurl}/quick_logon.asp")
            // alert($("#toOldHome").attr("action"));
   		    $("#toOldHome").submit();
       }
);

 //claim tab 
 $("#tab_2").click(function(){
	   var loginType = '${sessionUser.loginType}';
	   if(loginType=='m' || loginType =='M' ){
		  window.location.href="<%=request.getContextPath()%>/mem/mem_initClaimPage.do?tab_flag=tab_4"; 
	   }else{
		   window.location.href="<%=request.getContextPath()%>/claim/claim_claimsearch.do?grpno=${grpno}&empno=${empno}&tab_flag=tab_2";  
	   }
 });
</script>

</html>
