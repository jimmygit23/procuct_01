<html>
  <body>
		<input type="hidden" name="idotype" id="idotype"  value="${sessionUser.getDotype()}" >
		<input type="hidden" name="ilogin" id="ilogin"  value="${sessionUser.getLogin()}" >
    <table width="100%" border="0" cellpadding="0" cellspacing="0" >
		<tr>
			<td  id='csdiv3' align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'" style="background:#FFF4A5;">
				<a href="<%=request.getContextPath()%>/advancesearch.jsp" id="menu_1" class="Tabmenu3">Request Advance EOB</a>
			</td>
		</tr>
		<!-- <tr>
			<td align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'" style="background:#FFF4A5;">
				<a href="#" id="menu_2" class="Tabmenu3">PHCS</a>
			</td>
		</tr> -->
		<!-- <tr>
			<td  id='csdiv4' align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'" height="26" style="background:#FFF4A5;">
				<a href="<%=request.getContextPath()%>/providersearch/providersearch_showppolist.action" id="menu_4" class="Tabmenu3">Price Comparison</a>
			</td>
		</tr>
		<tr>
			<td align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'" height="26">
				<a href="#" id="menu_3" class="Tabmenu3"> </a>
			</td>
		</tr> -->
		<tr>
			<td  id='csdiv1' align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'" style="background:#FFF4A5;">
				<a href="<%=request.getContextPath()%>/claimfileimport/claimfileimport_advanceclaimsearch.action" id="menu_3" class="Tabmenu3">Browse Tool</a>
			</td>
		</tr>
		<tr> 
			<td id='csdiv2'  align="center" valign="middle" class="Tabmenu3"
				onmouseover="this.className='Tabmenu5'"
				onmouseout="this.className='Tabmenu3'" style="background:#FFF4A5;">
				<a href="<%=request.getContextPath()%>/email.jsp" id="menu_2" class="Tabmenu3">Send Email</a>
			</td> 
		</tr>
		<tr>
			<td>
				<img src="<%=request.getContextPath()%>/image/left_orange4.gif"
					width="170" height="33">
			</td>
		</tr>
	</table>
	<input id="menu_id" type="hidden" value="${menu_id}" name="menu_id" />
  </body>
  <script type="text/javascript">
  var tempdotype=document.getElementById('idotype').value;
  var tempilogin=document.getElementById('ilogin').value;
  if(tempdotype=='O'){
  	if(tempilogin=='hanxinajump'){
	  	$("#csdiv1").attr('style','display:none;');
	  	$("#csdiv2").attr('style','display:none;');
	  	$("#csdiv3").attr('style','display:block;');
	  	$("#csdiv4").attr('style','display:none;');
  	}else{
	  	$("#csdiv1").attr('style','display:block;');
	  	$("#csdiv2").attr('style','display:block;');
	  	$("#csdiv3").attr('style','display:block;');
	  	$("#csdiv4").attr('style','display:block;');
  	}
  }else if(tempdotype=='M'){
  	$("#csdiv1").attr('style','display:none;');
  	$("#csdiv2").attr('style','display:none;');
  	$("#csdiv3").attr('style','display:none;');
  	$("#csdiv4").attr('style','display:block;');
  }else{
  	$("#csdiv1").attr('style','display:none;');
  	$("#csdiv2").attr('style','display:none;');
  	$("#csdiv3").attr('style','display:block;');
  	$("#csdiv4").attr('style','display:none;');
  }
  
   
$(document).ready(function() {
	var menuIdvalue = $("#menu_id").val();
	var menu_id = '#' + menuIdvalue;
	$(menu_id).parent().attr("class", "Tabmenu4");
	$(menu_id).parent().mouseout(function() {
		$(menu_id).parent().attr("class", "Tabmenu4");
	});
});

//Patient
$("#menu_1").click(function() {
    var ach= "ye";
	//window.open("<%=request.getContextPath()%>/advancesearch.jsp");
});

$("#menu_2").click(function() {
	//window.location.href = "<%=request.getContextPath()%>/PHCS.jsp"
});


//Contact
$("#menu_3").click(function() {
   //var ach= "ye";
    //window.location.href = "<%=request.getContextPath()%>/claimfileimport/claimfileimport_advanceclaimsearch.action";
  //  window.open("<%=request.getContextPath()%>/claimfileimport/claimfileimport_advanceclaimsearch.action");
});

//advance provider search
$("#menu_4").click(function() {
  //window.location.href = "<%=request.getContextPath()%>/advanceprovidersearch.jsp";
    //window.location.href = "<%=request.getContextPath()%>/providersearch/providersearch_showppolist.action";
  //  window.open("<%=request.getContextPath()%>/providersearch/providersearch_showppolist.action");
});
</script>
</html>
