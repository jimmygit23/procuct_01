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
	
	<style> 
	.demo{
        width:200px;
        height:100px;
        position:absolute;
        top: 70px;
        left:390px;
        border:2px solid #0089C7;
        background:#f3f9f1;
        border-radius:8px;
        box-shadow: 5px 5px 5px #057748;
        color:#0089C7;
    }
	.shixin{
        width:0;
        height:0;
        border:10px solid transparent;
        border-bottom-color:#0089C7;
        position: relative;
        top: -21%;
        left:15%;
    }
	.kongxin{
        width:0;
        height:0;
        border:10px solid transparent;
        border-bottom-color:#fff;
        position: relative;
        top: -39%;
        left:15%;
    }
	</style>
	</head>
	
	
		
    	
    	
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
					<input type="hidden" name="dotype2" id="dotype2" value="<%=(String) request.getAttribute("dotype") %>" />
										<form name="displayform" id="displayform" method="post" action="">
									        <!-- <input type="text" name="dotype" id="dotype" value="<%=(String) request.getAttribute("dotype") %>" /> -->
									        <input type="hidden" name="dob" id="dob" value="<%=(String) request.getAttribute("dob") %>" />
									        <input type="hidden" name="memberID" id="memberID" value="<%=(String) request.getAttribute("memberID") %>" />
									        <!-- <input type="text" name="ssn" id="ssn" value="<%=(String) request.getAttribute("hidden_ssn") %>" />-->
									        </form>
					
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
								<div>
									<div style="float:left;width:700px;position:absolute;">
									  <form id="formFile" method="post" action="<%=path%>/claimfileimport/claimfileimport_add.action" enctype="multipart/form-data">
										<input type="hidden" name="MAX_FILE_SIZE" value="419430400" /> 
									    	<input type="hidden" name="hidden_ssn" id="hidden_ssn" value="<%=(String) request.getAttribute("hidden_ssn") %>" />
									        <input type="hidden" name="hidden_altid" id="hidden_altid" value="<%=(String) request.getAttribute("hidden_altid") %>" />
									       <input type="hidden" name="hidden_memid" id="hidden_memid" value="<%=(String) request.getAttribute("memberID") %>" />
									       <input type="hidden" name="hidden_grpno" id="hidden_grpno" value="<%= request.getAttribute("grpno") %>" />
									        <input type="hidden" name="hidden_empno" id="hidden_empno" value="<%= request.getAttribute("empno") %>" />
									        <input type="hidden" name="hidden_depno" id="hidden_depno" value="<%= request.getAttribute("depno") %>" />
									        <input type="hidden" name="hidden_login" id="hidden_login" value="<%= request.getAttribute("hidden_login") %>" />
									        <input type="hidden" name="hidden_password" id="hidden_password" value="<%= request.getAttribute("hidden_password") %>" />
									         <input type="hidden" name="methodinfo" id="methodinfo" value="<%=(String) request.getAttribute("methodinfo") %>" />
									        <input type="hidden" name="emailaddressinfo" id="emailaddressinfo" value="<%=(String) request.getAttribute("emailaddressinfo") %>" />
									        <input type="hidden" name="faxnumberinfo" id="faxnumberinfo" value="<%=(String) request.getAttribute("faxnumberinfo") %>" />
									        <input type="hidden" name="usernumberinfo" id="usernumberinfo" value="<%=(String) request.getAttribute("usernumber") %>" />
									        <input type="hidden" name="dob" id="dob" value="<%=(String) request.getAttribute("dob") %>" />
									        <input type="hidden" name="taxnumber" id="taxnumber" value="<%=(String) request.getAttribute("taxnumber") %>" />
									         
									         
										<table cellspacing="1" cellpadding="3" width="650" border="0" bgcolor="#0089C7">
											<tr>
												<th colspan="2">
													<font class="font_white_bold16">Submit Claim Form</font>
												</th>
											</tr>
											<tr>
												<td class="tdclass6" width="30%"  style="text-align:right;">
													choose file: 
												</td>
												<td class="tdclass6">&nbsp;[1]&nbsp;&nbsp;
													<input type="file"  name="fileupload" id="fileupload0"class="input"  onchange="getFileSize(this.id);">
													<input type="button" name="addfilelines0" id="addfilelines0" value="+" class="addfilelines">
													<div  id="filelines0" name="filelines0" ></div>
													<!-- <div  id="message" name="message" style="left:450px;top:-25px;float:left;position:absolute;background:#f3f9f1;bgcolor:#0089C7; border: 1px solid #0089C7; color:#0089C7;box-shadow: 5px 5px 5px #057748;display:none;">
													<br>&nbsp;&nbsp;Click + to add a file &nbsp;&nbsp;<br>&nbsp;&nbsp;in the same request.&nbsp;&nbsp;<br><br>
													</div> -->
													
													<div id="message" name="message" class="demo" style="display:none;">
											        <div class="shixin"></div>
											        <div class="kongxin"></div>
											         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click + to add a file &nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;in the same request.&nbsp;&nbsp;<br><br><br>
											    	</div>
												</td>
											</tr>
											 
											<tr>
												<td class="tdclass6"  colspan="2">
													<div id="statusline" name="statusline"></div>
													<input type="hidden" name="fileSize"  id="fileSize" value="" >
													<input type="hidden" name="statusSize"  id="statusSize" value="0" >
													<input type="text" name="tempstatusSize"  id="tempstatusSize" value="">
													<div id="showstatus" name="showstatus" ></div>
												</td> 
											</tr>
											
										</table>
										
										<table width="650">
											<tr>
												<td align="right" style="padding-top:10px;">
													<input type="button" id="addfiles" value="Upload" class="button_3">
												</td>
											</tr>
										</table>
										</form>
									</div>
									 
									<div style="float:right;width:350px;">
										<font class="font_black14_arial">
											In order to submit <b>Advance claims files</b> sent to America's Choice Healthplans®. 
										</font>
									</div>
									
									<!--  -->
									<p id="pos1" class="font_black14_arial" style="position:absolute;top:600;">
										<!-- Show updated Advance EOB file. -->
									</p>
									<div>
										<div  id="pos2"  style="float:left;width:700px;position:absolute;top:650;">
										 <!--  <form name="form2" id="form2" method="post" action="">
											<table cellspacing="1" cellpadding="3" width="650" border="0" bgcolor="#0089C7">
												<tr>
													<th colspan="4">
														<font class="font_white_bold16">Search File List</font>
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
											</table>
											
											<table width="650">
												<tr>
													<td align="right" style="padding-top:10px;">
														<input type="button" id="searchFiles" value="Find" class="button_3">
													</td>
												</tr>
											</table>
											</form>
											 
											<input type="hidden" class="" name="" id="fromdate" value="">
												<input type="hidden" name="" class="" id="enddate" value="">
																
											<table cellspacing="1" cellpadding="3" width="650" border="0" bgcolor="#0089C7">
												<tr>
												<td class="tdclass6"  colspan="4">
												<div id="fileslist" name="fileslist" ></div>
												</td> 
												</tr>
											</table>
											<br><br><br>-->
										</div>
									 
									<div  id="pos3"  style="float:right;width:350px;position:absolute;top:650;left:1150;">
										<font class="font_black14_arial">
									<!-- 		Choose <b>Advance claims list</b>  to show the file detail. -->
										</font>
									</div>
										<!--  -->
									<div id="showpdfs" name="showpdfs"  style="background:#f3f9f1;border: 1px solid green;float:right;width:1000px;height:1000px;position:absolute;top:100;left:200;">
										<table cellspacing="0" cellpadding="0" width="100%" border="0" bgcolor="">
												<tr>
													<td class="tdclass6"   > 
														&nbsp;&nbsp;
													</td> 
													<td class="tdclass6"  colspan="2"> 
														<font class="font_black14_arial">
															 <b>Advance claims EOB detail</b>  
														</font>
													</td> 
													<td class="tdclass6"    width="30px"> 
														<input type="button" id="closepdf" value="close" class="button_3">
													</td> 
												</tr>
												<tr>
													<td class="tdclass6"  colspan="4">
													<div id="showpdfsdetail" name="showpdfsdetail" ></div>
													</td> 
												</tr>
											</table>
									</div>
									
								</div>
							</td>
						</tr>
					</table>			
				</td>
			</tr>	
		</table>					
	</body>
	<input type="hidden" name="dofileup"  id="dofileup" value="<%=(String) request.getAttribute("dofileup") %>">
	<input type="hidden" name="fileup" id="fileup"  value="${sessionUser.getFilenew()}" >
	<input type="hidden" name="fileupsizealow" id="fileupsizealow"  value="Y" >
		
 <script type="text/javascript"> 
 setTimeout(function() {  $("#message").css("display","block");  }, 1000);
 setTimeout(function() {  $("#message").css("display","none");  }, 8000);
 /*
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
	 */
</script>  
 <script type="text/javascript">
    var hssn=document.getElementById('hidden_ssn').value;
	var haltid=document.getElementById('hidden_altid').value;
	//alert(hssn+','+haltid);
 	//XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showFileslist.action" ,"&hidden_ssn="+hssn+"&hidden_altid="+haltid,"fileslist",sendseccessdefault);
 	
     var tempfileSize=0;
	  $("#addfiles").click(function(){
	 // var tempfileupsizealow=document.getElementById('fileupsizealow').value;
	 // if(tempfileupsizealow=='N'){
    //			alert("There are some files size exceed 2M!");
	 // }else{
	  	$("#message").css("display","none");
		  		$("#statusline").css({transition:'width 1s'});
		  		$("#statusline").css({width:'1px'});
		  		var tt="";
		 		 // tt=  document.getElementById('fileupload').value;
		 		 var input=document.getElementsByName("fileupload");
	       		 var filelen=input.length;
	       		 for(var i=0;i<filelen;i++){
	       		 		var f = input[i].files[0];
	       		 		if(f){
	       		 			//alert(i);
	       		 			tt=tt+f.name;
	       		 		}
	       		 }
			 		
			 		
		 		
		 		
		  		var r=confirm("Upload the file?")
		  		if (r==true){
				  	if(tt!=''){
		  				 $("#statusline").css({transition:'width 1s'});
				  		 $("#statusline").css({width:'1px'});
				  		 
				  		 //setInterval(function(){ getFileStat(); }, 1000);
				  		 setInterval(getFileStat, 1000);
				  		// $('#formFile').submit();
				  		setTimeout(function() {  $('#formFile').submit(); }, 6000)
				        
				  	}else{
				  		alert('Please choose file!');
		  				 $("#statusline").css({transition:'width 1s'});
				  		$("#statusline").css({width:'1px'});
				  	}
				}else{
		  			$("#statusline").css({transition:'width 1s'});
					$("#statusline").css({width:'1px'});	
				}  
		//}	 
        });
        
        $(function(){
          $('#statusline').bind('click',function(){
          	alert('status line');
          });
        });
        
        function dounbind(){
        	$('#statysline').unbind();
        }
        
        
        
          
        function sendseccess(idstr){
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
        } 
        function sendseccessdefault(idstr){
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
        	   		  var dofileup=document.getElementById('dofileup').value;
						 if(dofileup=='Y'){
						 	var upfiles=document.getElementById('fileup').value;
						 	//alert("You have successfully submitted the AdvanceEOB files:\n"+upfiles+"\n\n You can see them in the File List.");
						 	//alert("You have successfully submitted the AdvanceEOB files:\n"+upfiles+"\n\n You can see them in the File List.\n\n If you need to view the files, please click the 'show' button.\n\n If you need to modify the files, please click the 'delete'  button to delete the files and resubmit it.");
						 }
        } 
        
         
        function sendseccess1(idstr){
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
        
       
        
        function getFileSize(str){   
	    	//	document.getElementById('fileupsizealow').value='Y';
       // alert(str); 
        var filePath=document.getElementById(str).value;
        	var input=document.getElementById(str);
        	if (input.files) {
		        var f = input.files[0];
		        var reader = new FileReader(); 
		        // alert(f.size); 
		        //document.getElementById('tempstatusSize').value=f.size;
		        //document.getElementById('statusSize').value=f.size;
		       
			    document.getElementById('tempstatusSize').value='0S';
		      //  alert(parseInt(f.size/1024/60/2));
		     document.getElementById('fileSize').value=f.size;
        	 var inputsize=f.size/1024/1024;
        	 inputsize=inputsize.toFixed(2);
		    }
    		
    		if(inputsize>2){
    			//document.getElementById('fileupsizealow').value='N';
    			alert("The file size should not exceed 2M!");
    			document.getElementById(str).value="";
    			
    		}else{
	    	//	document.getElementById('fileupsizealow').value='Y';
	        	XMLAjax("<%=path%>/claimfileimport/claimfileimport_showstatu.action" ,"fileuploadpath="+filePath+"&fileuploadSize="+inputsize,"showstatus",sendseccess);
        	}
		}  
		
        function getFileStat(){ 
    		 var inputsize=0;
    		 var filePath="";
       		 var input=document.getElementsByName("fileupload");
       		 var filelen=input.length;
       		 for(var i=0;i<filelen;i++){
       		 		var f = input[i].files[0];
       		 		if(f){
	       		 		inputsize=inputsize+f.size;
	       		 		filePath=filePath+"[ "+(i+1)+" ] "+f.name+";   ";
	       		 		//alert(f.name);
       		 		}
       		 }
       		 
       		 document.getElementById('fileSize').value=inputsize;
       		//alert(input.length);
        
         
        	inputsize=inputsize/1024/1024;
        	inputsize=inputsize.toFixed(2);
        	//alert(filePath);
        	XMLAjax("<%=path%>/claimfileimport/claimfileimport_showstatu.action" ,"fileuploadpath="+filePath+"&dotype=add&fileuploadSize="+inputsize,"showstatus",sendseccess1);
        
		}    
		
		
		 $("#searchFiles").click(function(){
		 	var fromdt=document.getElementById('fromdate').value;
		 	var enddt=document.getElementById('enddate').value;
		 	var hssn=document.getElementById('hidden_ssn').value;
		 	var haltid=document.getElementById('hidden_altid').value;
		   
		  	XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showFileslist.action" ,"fromdate="+fromdt+"&enddate="+enddt+"&hidden_ssn="+hssn+"&hidden_altid="+haltid,"fileslist",sendseccess);
		  }); 
		  
		  
  		$("#addfilelines0").click(function(){
  		$("#message").css("display","none");
  			changepos(40);
  		   $("#addfilelines0").css("visibility","hidden"); 
		  	XMLAjax2("<%=path%>/claimfileimport/claimfileimport_addFilelines.action" ,"filelinenum=0","filelines0",sendseccess);
		  }); 
		  
		  
		   function addlines(str){ 
		   changepos(40);
  			$("#addfilelines"+str).css("visibility","hidden");
  			$("#delfilelines"+str).css("visibility","hidden");
  			XMLAjax2("<%=path%>/claimfileimport/claimfileimport_addFilelines.action" ,"filelinenum="+str,"filelines"+str,sendseccess);
		 
		  }
		  
		    function dellines(str){
		    changepos(-40);
		    var tt=parseInt(str);
		    tt--;
		    //alert(tt)
  			$("#addfilelines"+(tt)).css("visibility","visible");
  			if(tt>0){
  				$("#delfilelines"+(tt)).css("visibility","visible");
  			}
  			XMLAjax2("<%=path%>/claimfileimport/claimfileimport_delFilelines.action" ,"filelinenum="+tt,"filelines"+tt,sendseccess);
		    }
		    
		     function changepos(str){
			   var pos=document.getElementById("pos1").style.top;
			   pos=parseInt(pos)+parseInt(str);
			   var poss=document.getElementById("pos2").style.top;
			   poss=parseInt(poss)+parseInt(str);
	  			 $("#pos1").css("top",pos+"px");
	  			 $("#pos2").css("top",poss+"px");
	  			 $("#pos3").css("top",poss+"px");	
		     }
</script>  
<script type="text/javascript">

	var dotype_pass=document.getElementById('dotype2').value;
	if (dotype_pass=='commit'){
	 		$("#displayform").attr("action","<%=path%>/claimfileimport/claimfileimport_showlist1.action");
     		$("#displayform").submit();  
     }
     
	  $("#goback").click(function(){
	  var r=confirm("Go back to previous page?")
  		if (r==true){
	 		//window.history.back()  
	 		$("#displayform").attr("action","<%=path%>/claimfileimport/claimfileimport_showlist1.action");
     		$("#displayform").submit();  
	 	}
        });
	</script>  
	
<script type="text/javascript">
$("#showpdfs").css("display","none"); 

		$("#closepdf").click(function(){
			$("#showpdfs").css("display","none"); 
		}); 
			
	   function showpdf(str){   
			//$("#showpdfs").css("display","block"); 
			//XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showFiles.action" ,"","showpdfs",sendseccess);
			window.open('<%=path%>/claimfileimport/claimfileimport_showFiles.action?filename='+str,'_blank','width=1000,height=600,menubar=no,toolbar=no, status=no,scrollbars=yes')
			//window.open('<%=basePath%>fileadvenceEOB/'+str,'_blank','width=1000,height=600,menubar=no,toolbar=no, status=no,scrollbars=yes')
					
		}
		 
</script>  
<script type="text/javascript"> 
		
	   function delpdf(str){   
        	 
        	//alert(str);
        	  var r=confirm("Delete the file?")
		  		if (r==true){ 
					 	var fromdt=document.getElementById('fromdate').value;
					 	var enddt=document.getElementById('enddate').value;
					 	var hssn=document.getElementById('hidden_ssn').value;
					 	var haltid=document.getElementById('hidden_altid').value;
					   var filename=document.getElementById('hidden_filename'+str).value;  
					  	XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showFileslist.action" ,"dotype=del&fromdate="+fromdt+"&enddate="+enddt+"&hidden_ssn="+hssn+"&hidden_altid="+haltid+"&hidden_filename="+filename+"&hidden_fileId="+str,"fileslist",sendseccess);
					  
			        	 
			 	}
		}
	 

	</script> 
	
</html>
