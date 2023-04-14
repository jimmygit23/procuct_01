<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <body>
	  <table width="100%" border="0" height="48" cellspacing="0" cellpadding="0">
		<tr>
			<!--
			<td width="94%" align="right">
				<a href="#"><img
						src="<%=request.getContextPath()%>/image/@chatroom.gif"
						width="16" height="16" border="0"></a><span
					class="font_white14_bold"><a href="#" id="idHome">Home</a>
				</span>
			</td>
			 -->
			<td width="100%" align="right" valign="top" class="logoutclass" style="font-weight:bold;padding-right:5px;">
				<br/>
				
			<br/>
				
				
					<a href="#"><img class="idHome" src="<%=request.getContextPath()%>/image/@chatroom.gif" 
					width="16" height="16" border="0"></a><span class="font_white14_bold"><a href="#" style="margin-right:5px" 
					class="idHome">Home</a></span>
				
				
				<img style="margin-right:10px;height:14px;width:20px;" title="Print" id="idPrintGoble" src="<%=request.getContextPath()%>/image/print.gif">
				<a href="#" id="idLogoutGobles">Log out</a>
			</td>
		</tr>
	</table>
  </body>
  <script type="text/javascript">
$(".idHome").click(function(){
    var ach ="ye";
	window.location.href="<%=request.getContextPath()%>/provider/prov_provider.do?ach="+ach;
});  

$("#idLogoutGobles").click(function(){
   var ach ="ye";
   window.location.href="<%=request.getContextPath()%>/provider/prov_reback.do?ach="+ach;
});
</script>
</html>
