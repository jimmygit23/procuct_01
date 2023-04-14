<html>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="26" align="center" valign="middle" class="Tabmenu1"  
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'" width="180px;">
						<a id="tab_1" href="###" class="Tabmenu1">PROVIDER FUNCTIONS</a>
					</td>
					<td width="2">
						<img src="<%=request.getContextPath()%>/image/fgf_orange.gif"
							width="2" height="26">
					</td>
					<td height="26" align="center" valign="middle" class="Tabmenu1"  
						onMouseOver="this.className='Tabmenu0'"
						onMouseOut="this.className='Tabmenu1'">
					</td>
				</tr>
		</table>
		<input id="tab_flag" type="hidden" value="${tab_flag}" name="tab_flag" />
		<form id="backhome" action="" method="post">
			<input type="hidden" id="1" name="login" value="${sessionUser.login}">
			<input type="hidden" id="2" name="password" value="${sessionUser.password}">
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
    var ach = "si";
	window.location.href="<%=request.getContextPath()%>/provider/prov_provider.do?ach="+ach;
}); 
</script> 	
</html>
