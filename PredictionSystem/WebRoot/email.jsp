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
	</head>
<div id="advs" class="advs"  style="display:block;position:absolute; z-index:9999; background:white ;filter: alpha(opacity=70); opacity:0.7;border=0;width:100%;height:100%;bottom:0px;">	
			<img style="position:absolute; z-index:9999;width:32px;height:32px;top:50%;left:50%" src="<%=request.getContextPath()%>/images/wait.gif" alt="wait" >
</div>
	<body>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="136" align="left" valign="top"
					background="<%=request.getContextPath()%>/image/bj_blue.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="216" height="136"
								background="<%=request.getContextPath()%>/image/ach_logo.png"
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
					
					<table width="100%" border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td>
								<p class="font_black14_arial">
									
								</p>
								<div>
									<div style="float:left;width:500px;position:absolute;">
									  		Subiect：<textarea name="subject" cols="100" rows="2" align="center" id="subject" style="resize:none;"></textarea><br><br>
											Content：<textarea name="content" cols="100" rows="30" align="center" id="content" style="resize:none;"></textarea><br><br>
											<input type="button" id="send" value="Send Email" class="button_3">
									</div>
									
									
								</div>
							</td>
							<td>
																						<div id="emaillist" style="right:50px;float:left;width:500px;position:absolute;"> 
																							<select style="HEIGHT:   600px;   WIDTH: 200px" multiple>															
																						     <option ></option>
																							</select>
																						</div>
							</td>
						</tr>
					
					</table><br/><br/><br/><br/>
							
				</td>
			</tr>	
		</table>					
					
		<input type="hidden" name="emailslist" id="emailslist"  value="" >
									
	</body>
	<script type="text/javascript">
	  var temprowsno=20;
	  
	$("#send").click(function(){
		var subject = $('#subject').val();
		var content = $('#content').val();
		var addrto = $('#emailslist').val(); 
		$.ajax({
				type:"POST",
				url:"<%=request.getContextPath()%>/adeod/adeod_email.action?addrto="+addrto,
				data:{"subject":subject,
					  "content":content
				},
				cache:false,
				async:false,
				dataType:"json",

				success:function(data){
					alert("send email success");
			    }
			});
	});

  				function sendseccess(idstr){
  				
		        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
		        	   		  
    						$("#advs").css("display","none");
    						 document.documentElement.style.overflow = 'scroll';
		        } 
		        
		        
 			function showemaillist(){  
		         
		        	 XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showemaillist.action" ,"&rowsno="+temprowsno,"emaillist",sendseccess); 
		        	
		
				}
				
				showemaillist();
				
				
		function go_pageup(strno){
			var page=strno;
			if(strno<0){
				page=0;
			}
			 
		  	XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showemaillist.action" ,"&rowsno="+temprowsno+"&pageno="+page,"emaillist",sendseccess); 
		        	
		}
		
		function go_pagedown(strno,totalno){
			var page=strno;
			if(strno>totalno){
				page=totalno;
			}
			XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showemaillist.action" ,"&rowsno="+temprowsno+"&pageno="+page,"emaillist",sendseccess); 
		    
		}
		
		
		function go_pageto(strno){
			var page=strno;
			XMLAjax2("<%=path%>/claimfileimport/claimfileimport_showemaillist.action" ,"&rowsno="+temprowsno+"&pageno="+page,"emaillist",sendseccess); 
		    
		}
		
		
		var ischeckall="N";
		function checkall(){
			var boxes = document.getElementsByName("doemail");
			var emailstr="";
			if(ischeckall=="N"){
				ischeckall="Y";
					    for(i=0;i<boxes.length;i++){
					                boxes[i].checked = true; 
					                emailstr=emailstr+boxes[i].value+";";
					               //alert(emailstr);
					     }
   
			   document.getElementById('emailslist').value=emailstr;
			}else{
				ischeckall="N";
					    for(i=0;i<boxes.length;i++){
					                boxes[i].checked = false; 
					     }
			   document.getElementById('emailslist').value="";
			}

		}
		
		var ischeckall2="";
		function checkitem(){
			var boxes = document.getElementsByName("doemail");
			var emailstr="";
			ischeckall2="Y";
			 for(i=0;i<boxes.length;i++){
					               if(boxes[i].checked==true){
					                emailstr=emailstr+boxes[i].value+";";
					               }else{
									ischeckall2="N";
					               }
					                
					     }
		   
			   document.getElementById('emailslist').value=emailstr;
			   if(ischeckall2=="N"){
					ischeckall="N";
			   		var boxeall = document.getElementsByName("doemailAll");
			    	boxeall[0].checked = false;
			   }
		}
	</script>
</html>
