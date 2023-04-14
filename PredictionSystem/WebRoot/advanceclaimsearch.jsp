<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ include file="/common/commons.jsp"%>
<html>
	<head>
		<title>ACHonline: Provider Home (Providers Site)</title>
		<link type="text/css"
			href="<%=request.getContextPath()%>/jqueryui/css/ui-lightness/jquery-ui-1.8.18.custom.css"
			rel="stylesheet" />
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/jqueryui/js/jquery-ui-1.8.18.custom.min.js">
		</script>
		<script type="text/javascript" src="<%=path%>/js/xmlajax.js"></script> 
		<style> 
	#statusline{
	  width: 1px;
	  height: 30px;
	  background: green;
	  transition-timing-function: linear;
	  transition-property: width;
	  transition-duration: 1s;
	} 
	
	#showstatus{
	  width: 650px;
	  height: 200px;
	  background: #f3f9f1;
	  text-align: left;
	  border: 1px solid green;
	}
	
	#tempstatusSize{
	  width: 650px;
	  height: 20px;
	  background: #f3f9f1;
	  text-align: right;
	  font-family: Arial, Helvetica, sans-serif;
	}
	
	.path{
	  text-align: left;
	  font-family: Arial, Helvetica, sans-serif;
	  text-shadow: 1px 1px 5px red;
	  font-size: 18px;
	}
	.status{
	  text-align: left;
	  font-family: Arial, Helvetica, sans-serif;
	  font-size: 12px;
	}
	
	font{
	  text-align: left;
	  font-family: Arial, Helvetica, sans-serif;
	  text-shadow: 1px 1px 1px #057748;
	  font-size: 16px;
	} 
	
	
	#Filetype{
	  width: 280px;
	  height: 20px;
	}
	</style>
	</head>
		<div id="advs" class="advs"  style="display:none;position:absolute; z-index:9999; background:white ;filter: alpha(opacity=70); opacity:0.7;border=0;width:100%;height:100%;bottom:0px;">	
			<img style="position:absolute; z-index:9999;width:32px;height:32px;top:50%;left:50%" src="<%=request.getContextPath()%>/images/wait.gif" alt="wait" >
		</div>
	<body>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" >
			<tr>
				<td height="136" align="left" valign="top"
					background="<%=request.getContextPath()%>/image/bj_blue_<%= Tcolor01 %>.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" >
						<tr>
							<td width="216" height="136"
								background="<%=request.getContextPath()%>/image/ach_logo_<%= Tcolor01 %>.png"
								class="logoTD">
								<img
									src="<%=request.getContextPath()%>/logoimg/ach.gif"
									width="189" height="70" class="logo">
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="48" align="right" valign="bottom">
											<jsp:include page="/ach_logout.jsp"/>
										</td>
									</tr>
									<tr>
										<td height="70" valign="top">
										<!--导航条  -->
											<!--<jsp:include page="/common/ach_providertop.jsp"></jsp:include>-->
										<!--end 导航  -->
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<table id="initPrintArea" width="100%" border="0" cellpadding="10" cellspacing="0">
			<tr>
				<td width="97" valign="top">
					<!-- menu -->
					  <jsp:include page="/common/ach_advance_menu.jsp"></jsp:include>  
				</td>
				<td valign="top" width="100%" style="padding-left:20px;padding-right:30px;">
					<input type="button" value="Go Back" id="goback" >
					<input type="hidden" name="tempstatus"  id="tempstatus"   value="" />
					
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
								<div>
									
									 
									
									
									<!--  -->
									<p id="pos1" class="font_black14_arial" style="float:left;width:700px;position:absolute;">
										Show Advance EOB. 
									</p>
									<div>
										<div  id="pos2"  style="float:left;width:700px;position:absolute;top:230;">
										  <form name="form2" id="form2" method="post" action="">
											<table cellspacing="1" cellpadding="3" width="650" border="0" bgcolor="#0089C7">
												<tr>
													<th colspan="4">
														<font class="font_white_bold16">Search Advance EOB List</font>
													</th>
												</tr>
												<tr>
													<td class="tdclass6" width="15%" style="text-align:center;">
														Date of Start
													</td>
													<td class="tdclass6">
														<input type="text" class="input001" name="sdate" id="fromdate" value="<%=(String) request.getAttribute("fromdate") %>">
														<span style="color: #888" id="dobSpan1">mm/dd/yyyy</span>
													</td> 
													<td class="tdclass6" width="15%" style="text-align:center;">
														Date of End
													</td>
													<td class="tdclass6">
														<input type="text" name="edate" class="input001" id="enddate" value="<%=(String) request.getAttribute("enddate") %>">
														<span style="color: #888" id="dobSpan2">mm/dd/yyyy</span>
													</td>
												</tr>
												<tr>
													<td class="tdclass6"  style="text-align:center;">
														Status
													</td>
													<td class="tdclass6" colspan="3" style="text-align:left;">
														 <select name="searchstatus"  id="searchstatus">
														 <option value="0,1,2,3,4,5" selected>All</option>
														 <option value="0" >New</option>
														 <option value="1,2,3,4,5" >Done</option>
														 </select>
													</td>
												</tr>
												<tr>
													<td class="tdclass6"  style="text-align:center;">
														SSN
													</td>
													<td class="tdclass6" colspan="3" style="text-align:left;">
														<input type="text" name="ssn" class="input001" id="ssn" value="">
													</td>
												</tr>
												<tr>
													<td class="tdclass6"  style="text-align:center;">
														Member ID
													</td>
													<td class="tdclass6" colspan="3" style="text-align:left;">
														<input type="text" name="altid" class="input001" id="altid" value="">
													</td>
												</tr>
												<tr>
													<td class="tdclass6"  style="text-align:center;">
														Form/File
													</td>
													<td class="tdclass6" colspan="3" style="text-align:left;">
														 <select name="Form_File"  id="Form_File">
														 <option value="0" selected>AdvanceEOB Form</option>
														 <option value="1" >PDF File</option>
														 </select>
													</td>
												</tr>
											</table>
											
											<table width="650">
												<tr>
													<td align="right" style="padding-top:10px;">
														<input type="button" id="searchClaims" value="Find" class="button_3">
													</td>
												</tr>
											</table>
											</form>
											
											
											<table cellspacing="1" cellpadding="3" width="650" border="0" bgcolor="#0089C7">
												<tr>
												<td class="tdclass6"  colspan="4">
												<div id="fileslist" name="fileslist" ></div>
												</td> 
												</tr>
											</table>
											<br><br><br>
											<table cellspacing="1" cellpadding="3" width="650" border="0" bgcolor="#0089C7">
												<tr>
												<td class="tdclass6"  colspan="4">
												<div id="filespdflist" name="filespdflist" ></div>
												</td> 
												</tr>
											</table>
											<br><br><br>
										</div>
									 
									
									
								</div>
							</td>
						</tr>
					</table>			
				</td>
			</tr>	
		</table>					
	</body>
	
		
 <script type="text/javascript"> 
 
$( "#fromdate" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});
	 
$( "#enddate" ).datepicker({
    numberOfMonths: 1,
	showOn: "both",
	showButtonPanel: true,
	buttonImage: "<%=request.getContextPath()%>/image/calendar.gif",
	buttonImageOnly: true
});
	 
</script>  
 <script type="text/javascript">
    //var hssn=document.getElementById('hidden_ssn').value;
	//var haltid=document.getElementById('hidden_altid').value;
	//alert(hssn+','+haltid);
	document.getElementById('tempstatus').value='0,1,2';
     var tempfileSize=0;
	  var temprowsno=20;
 		//XMLAjax2("<%=path%>/adeod/adeod_showClaimlist.action" ,"&searchstatus=0,1,2&rowsno="+temprowsno+"&hidden_ssn="+111+"&hidden_altid="+111,"fileslist",sendseccess);
 		//XMLAjax2("<%=path%>/adeod/adeod_showpdflist.action" ,"&searchstatus=0,1,2&rowsno="+temprowsno+"&hidden_ssn="+111+"&hidden_altid="+111,"filespdflist",sendseccess);
        
        $(function(){
          $('#statusline').bind('click',function(){
          	alert('status line');
          });
          
          var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		   var page=1;
		   	var temp=document.getElementById('tempstatus').value;
		   	$("#advs").css("display","block");
    	$("#advs").css("width","100%");
    	$("#advs").css("height","100%");
		var tttt=getScrollTop();
    	$("#advs").css("top",tttt +"px");
    	window.scrollTo(0, 0);
    	 document.documentElement.style.overflow = 'hidden';
		  XMLAjax2("<%=path%>/adeod/adeod_showClaimlist.action" ,"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt+"&pageno="+page,"fileslist",sendseccess2);
		  	 
		  	 
		 	 //setInterval(getFileStat, 1000);
			// setTimeout(function() {  
			// XMLAjax2("<%=path%>/adeod/adeod_showpdflist.action" ,"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt+"&pageno="+page,"filespdflist",sendseccess2);
			// }, 2000);
		  	
          
        });

        
        
          
        function sendseccess(idstr){
       $("#advs").css("display","none");
    					document.documentElement.style.overflow = 'scroll';
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
        	   		  
        } 
        function sendseccess2(idstr){
       // alert(idstr);
       $("#advs").css("display","none");
    				document.documentElement.style.overflow = 'scroll';
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
        			
					      			
        } 
        function sendseccess1(idstr){
        $("#advs").css("display","none");
    	document.documentElement.style.overflow = 'scroll';
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
			  		  if(tempfileSize==0 || tempfileSize==''){
			  		  	 tempfileSize=document.getElementById('fileSize').value;
						 document.getElementById('statusSize').value=parseInt(tempfileSize/1024/60/10)+5;
						 $("#statusline").css({transition:'width '+(parseInt(tempfileSize/1024/60/10)+5)+'s'});
			  		 	 $("#statusline").css({width:'100%'});
			  		  }else{
			  		  	var temptime=document.getElementById('statusSize').value;
			  		  	temptime=temptime-1;
			  		  	document.getElementById('statusSize').value=temptime;
			  		  	document.getElementById('tempstatusSize').value=temptime+'S';
			  		  	
			  		  	
			  		  	
			  		  }
        } 		
		
		function go_pageup(strno){
			var page=strno;
			if(strno<0){
				page=0;
			}
			var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		   	var temp=document.getElementById('tempstatus').value;
		   
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value;
		  	XMLAjax2("<%=path%>/adeod/adeod_showClaimlist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt+"&pageno="+page,"fileslist",sendseccess);
		  
		}
		
		function go_pagedown(strno,totalno){
			var page=strno;
			if(strno>totalno){
				page=totalno;
			}
			var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		   	var temp=document.getElementById('tempstatus').value;
		   
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value;
		  	XMLAjax2("<%=path%>/adeod/adeod_showClaimlist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt+"&pageno="+page,"fileslist",sendseccess);
		  
		}
		
		
		function go_pageto(strno){
			var page=strno;
			var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		   	var temp=document.getElementById('tempstatus').value; 
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value;
		  	XMLAjax2("<%=path%>/adeod/adeod_showClaimlist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt+"&pageno="+page,"fileslist",sendseccess);
		  
		}
		
		
		function go_pagepdfup(strno){
			var page=strno;
			if(strno<0){
				page=0;
			}
			var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		   	var temp=document.getElementById('tempstatus').value;
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value;
		   
		  	XMLAjax2("<%=path%>/adeod/adeod_showpdflist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt+"&pageno="+page,"filespdflist",sendseccess);
		  
		}
		
		function go_pagepdfdown(strno,totalno){
			var page=strno;
			if(strno>totalno){
				page=totalno;
			}
			var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		   	var temp=document.getElementById('tempstatus').value;
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value;
		   
		  	XMLAjax2("<%=path%>/adeod/adeod_showpdflist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt+"&pageno="+page,"filespdflist",sendseccess);
		  
		}
		
		
		function go_pagepdfto(strno){
			var page=strno;
			var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		   	var temp=document.getElementById('tempstatus').value;
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value; 
		  	XMLAjax2("<%=path%>/adeod/adeod_showpdflist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt+"&pageno="+page,"filespdflist",sendseccess);
		  
		}
		
		
		
		 $("#searchClaims").click(function(){
		 	var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		 	
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value;
		 	
		 	var temp=document.getElementById('searchstatus').value;
		 	document.getElementById('tempstatus').value=temp;
		   	$("#advs").css("display","block");
	    	$("#advs").css("width","100%");
	    	$("#advs").css("height","100%");
			var tttt=getScrollTop();
	    	$("#advs").css("top",tttt +"px");
	    	
	    	var Actiontype=document.getElementById('Form_File').value;
	    	
	    	if(Actiontype==0){
	    		$("#fileslist").css("display","block");
	    		$("#filespdflist").css("display","none");
	    	//window.scrollTo(0, 0);
	    	/// document.documentElement.style.overflow = 'hidden';
			  	XMLAjax2("<%=path%>/adeod/adeod_showClaimlist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt,"fileslist",sendseccess2);
			}else{	 
	    		$("#fileslist").css("display","none");
	    		$("#filespdflist").css("display","block");
			  //	setTimeout(function() {  
				 XMLAjax2("<%=path%>/adeod/adeod_showpdflist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt,"filespdflist",sendseccess2);
			  //	}, 5000);
			 } 	
		  }); 
		  
		 
			
			$(".showeob").live("click",function(){
				$(".detaillines").css("display","none");
				$(".detaillinestitle").css("display","none");
				var tempclm=this.id;
				showeobs(tempclm); 
				document.getElementById("detaillines"+tempclm).style.display="block";
				document.getElementById("detaillinestitle"+tempclm).style.display="block";
			});
			
			$(".showpdfeob").live("click",function(){
				$(".detaillinespdf").css("display","none");
				$(".detaillinespdftitle").css("display","none");
				var tempclm=this.id;
				var filename=document.getElementById("pdffilename"+tempclm).value;
				 
				//document.getElementById("detaillinespdf"+tempclm).style.display="block";
				document.getElementById("detaillinespdftitle"+tempclm).style.display="block";
				showeobspdf(filename,tempclm); 
			});
			
			$(".hiddeneob").live("click",function(){ 
				var tempclm=this.id;
				document.getElementById("detaillines"+tempclm).style.display="none";
				document.getElementById("detaillinestitle"+tempclm).style.display="none";
			});
			
			$(".hiddenpdfeob").live("click",function(){ 
				var tempclm=this.id;
				//document.getElementById("detaillinespdf"+tempclm).style.display="none";
				document.getElementById("detaillinespdftitle"+tempclm).style.display="none";
			});
			
        function sendseccess(idstr){
   	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
        } 
			
			function showeobs(str){
				XMLAjax2("<%=path%>/adeod/adeod_showeobdetail.action" ,"tempCLMNUM="+str,"detaillines"+str,sendseccess); 
			}
	
			function showeobspdf(str,str2){
				//XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showFiles.action" ,"filename="+str,"detaillinespdf"+str2,sendseccess); 
				window.open('<%=path%>/claimfileimport/claimfileimport_showFiles.action?filename='+str,'_blank','width=1000,height=600,menubar=no,toolbar=no, status=no,scrollbars=yes');
			}
</script>  
<script type="text/javascript"> 
        function checkactioneob(str){
   	   		var tempclm=str.id;
   	   		var tempIndex=str.selectedIndex;
   	   		var tempclm1=str.options[tempIndex].value;
   	   		var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		 	var temp=document.getElementById('searchstatus').value;
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value;
   	   		//alert(tempclm1);
		 	XMLAjax2("<%=path%>/adeod/adeod_showClaimlist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&status_str="+tempclm1+"&actiontempclm="+tempclm+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt,"fileslist",sendseccess);
		 	  alert("Have changed.");
        } 
        
        
        function checkactionpdf(str){
   	   		var tempclm=str.id;
   	   		var tempIndex=str.selectedIndex;
   	   		var tempclm1=str.options[tempIndex].value;
   	   		var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		 	var temp=document.getElementById('searchstatus').value;
		 	var tempssn=document.getElementById('ssn').value;
		 	var tempaltid=document.getElementById('altid').value;
   	   		//alert(tempclm1);
		 	XMLAjax2("<%=path%>/adeod/adeod_showpdflist.action" ,"&hidden_ssn="+tempssn+"&hidden_altid="+tempaltid+"&status_str="+tempclm1+"&actiontempclm="+tempclm+"&searchstatus="+temp+"&rowsno="+temprowsno+"&fromdate="+fromdt+"&enddate="+enddt,"filespdflist",sendseccess);
		  alert("Have changed.");
        } 
        
	  $("#goback").click(function(){
	  var r=confirm("Go back to previous page?")
  		if (r==true){
	 		window.history.back()    
	 	}
        });
        
function getScrollTop(){
	var scrollTop=0;
	if(document.documentElement&&document.documentElement.scrollTop){
		scrollTop=document.documentElement.scrollTop;
	}else if(document.body){
		scrollTop=document.body.scrollTop;
	}
	return scrollTop;
}
	</script>  

	
 

	
</html>
