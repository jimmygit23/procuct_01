<%@ page language="java" pageEncoding="utf-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ include file="/common/commons.jsp"%>
<HTML>
	<HEAD>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.2.6.min.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/simplifi.css">
		<TITLE>ACHonline</TITLE>
</HEAD>
<BODY link="000099" vlink="666699" alink="ffcc99" bgcolor="#0089C7" background="<%=request.getContextPath()%>/newimages/main-A-bg2.gif" leftmargin="0" rightmargin="0" marginwidth="0" topmargin="0" marginheight="0">
  <table border="0" width="750" cellpadding="0" cellspacing="0">
	<tr>
		<td bgcolor="#f3f3f3" background="<%=request.getContextPath() %>/newimages/main-1A-bg.gif" align="right" valign="top"><img src="<%=request.getContextPath()%>/newimages/main-1A.gif"></td>
		<td bgcolor="#f3f3f3" background="<%=request.getContextPath()%>/newimages/main-1B-bg.gif"><img src="<%=request.getContextPath()%>/newimages/main-1B.gif"></td>
		<td bgcolor="#f3f3f3" background="<%=request.getContextPath()%>/newimages/main-1C-bg.gif" valign="top">
			<table border="0" width="280" cellpadding="0" cellspacing="0">
				<tr>
					<td colspan="5"><img src="<%=request.getContextPath() %>/image/blank.gif" width="279" height="7"></td>
				</tr>
				<tr>
					<td bgcolor="f2c100" background="<%=request.getContextPath()%>/image/blank.gif"><img src="<%=request.getContextPath() %>/image/blank.gif" height="19" width="1"></td>
					<td bgcolor="f2c100" background="<%=request.getContextPath()%>/image/blank.gif"><a class="privatelink">Members</a></td>
					<td bgcolor="f2c100" background="<%=request.getContextPath()%>/image/blank.gif"><a class="privatelink">Employers</a></td>
					<td bgcolor="f2c100" background="<%=request.getContextPath()%>/image/blank.gif"><a class="privatelink prov">Providers</a></td>
					<td bgcolor="f2c100" background="<%=request.getContextPath()%>/image/blank.gif"><a class="privatelink">Brokers</a></td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
				  <td>
				    <div id="Layer2" style="position:absolute; width:358px; height:101px; z-index:2; left: 400px; top: 47px;">
					  <p class="style1"><font color="#FF0000" size="4"><a href="##" id="memberguide">View/Download Member User Guide</a></font></p>
					</div>
				    
				  </td>
			    </tr>
			</table>
		</td>
		<td bgcolor="#f3f3f3"><img src="<%=request.getContextPath() %>/newimages/main-1D-11.gif"></td>
	</tr>
	<tr>
		<td bgcolor="#f3f3f3" background="<%=request.getContextPath() %>/newimages/main-2A-bg.gif" align="right" valign="top"  >
			 <br>
			<!-- 
			&nbsp;&nbsp;&nbsp;<a href="#" class="publiclink">About ACH</a><br><br>
			&nbsp;&nbsp;&nbsp;<a href="#" class="publiclink">The Website</a><br><br>
			&nbsp;&nbsp;&nbsp;<a href="#" class="publiclink">WOW! Service</a><br><br>
			&nbsp;&nbsp;&nbsp;<a href="#" class="publiclink">Partners</a><br><br>
			&nbsp;&nbsp;&nbsp;<a href="#" class="publiclink">Cost Management</a><br><br>
			&nbsp;&nbsp;&nbsp;<a href="#" class="publiclink">Switch to ACH</a><br><br>
			&nbsp;&nbsp;&nbsp;<a href="#" class="publiclink">News & Press</a><br><br>
			 -->
		</td>
		<td bgcolor="#f3f3f3" background="<%=request.getContextPath() %>/newimages/main-2B-bg.gif" colspan="2" align="left" valign="top">
			<img src="<%=request.getContextPath() %>/image/blank.gif" colspan="2" align="left" valign="top"><img src="<%=request.getContextPath() %>/image/blank.gif" width="423" height="1"><img src="<%=request.getContextPath() %>/image/blank.gif" height="322" width="10" align="left"><br>
			<font face="Arial" color="000099"><b id="msgID">Please enter your login and password.</b></font>
			<table cellpadding="6">
				<tr>
					<td bgcolor="0089C7" background="<%=request.getContextPath() %>/image/blank.gif">
						<table border="0" width="162" cellpadding="0" cellspacing="0">
							<tr>
								<td><img src="<%=request.getContextPath() %>/newimages/main-loginbox-ul.gif"/></td>
								<td colspan="3" bgcolor="FFF4A5" background="<%=request.getContextPath() %>/image/blank.gif" width="132" height="15"><img src="<%=request.getContextPath() %>/image/blank.gif"></td>
								<td bgcolor="0089C7" background="<%=request.getContextPath() %>/image/blank.gif"><img src="<%=request.getContextPath() %>/newimages/main-loginbox-ur.gif"></td>
							</tr>
							<form id="form" action="" method="post" name="form" enctype="multipart/form-data" >
							<tr>
								<td bgcolor="FFF4A5" rowspan="1" background="<%=request.getContextPath() %>/image/blank.gif"><img src="<%=request.getContextPath() %>/image/blank.gif"></td>
								<td bgcolor="FFF4A5" background="<%=request.getContextPath() %>/image/blank.gif"><div class="fieldtitle">login</div>
									<input class="input001" style="FONT-FAMILY: monospace" maxLength=30 id="loginId"
											size=12 name=login >
								</td>
								<td bgcolor="FFF4A5" background="<%=request.getContextPath() %>/image/blank.gif">
									<div class="fieldtitle">password</div>
									<input class="input001" style="FONT-FAMILY: monospace" type=password id="pwdId"
											maxLength=20 size=12 name=password >
								</td>
								<td bgcolor="FFF4A5" background="<%=request.getContextPath() %>/image/blank.gif">
									<img id="goid" src="<%=request.getContextPath()%>/image/go.gif" border=0 name=go>
								</td>
								<td bgcolor="FFF4A5" rowspan="1" background="<%=request.getContextPath() %>/image/blank.gif">
									<img src="<%=request.getContextPath() %>/image/blank.gif">
								</td>
							</tr>
							</form>	
							<tr>
								<td bgcolor="0089C7" background="<%=request.getContextPath() %>/image/blank.gif"><img src="<%=request.getContextPath() %>/newimages/main-loginbox-ll.gif"></td>
								<td colspan="3" bgcolor="FFF4A5" background="<%=request.getContextPath() %>/image/blank.gif" width="132" height="15"><img src="<%=request.getContextPath() %>/image/blank.gif"></td>
								<td bgcolor="0089C7" background="<%=request.getContextPath() %>/image/blank.gif"><img src="<%=request.getContextPath() %>/newimages/main-loginbox-lr.gif"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<!-- 
			<font face="Arial, Helvetica" color="0089C7"><b>Don't Have a Password?</b></font>
			 <b><a href="#">Lost Password</a>:</b> If you already have an account but have forgotten or lost your information, please use our <a href="#">Lost Password Request</a> utility.
			  -->
		  <div class="fieldtitle">
				<p><b><a href="#" class="prov">Healthcare Providers</a>:</b> If you are a provider, you do not need a password. You can proceed directly to the <a href="#" class="prov">Provider Web Site</a> where you will be prompted for your Tax ID number and other information.
				<p><b><a href="#">Demonstration</a>:</b> If you would like a password to the demonstration site, you may <a href="#">request a demo site password</a>.
		        <p>
		        <font class="font_blue14_arial"><a href="###" id="checkuser"><font  size="3">Forgot your username?</font></a></font>
		        </p>
				<p>
				<font class="font_blue14_arial"><a href="###" id="checkpwd"><font  size="3">Forgot your password?</font></a></font>
				</p>
				<font class="font_black14_arial">if you are a new user, click </font>
                <font class="font_blue14_size_bold_underline"><a href="###" id="agreement"><font  size="3">Sign-Up</font></a></font>
				<font class="font_black14_arial">
				 to create your account. Otherwise type your username and
				 password and click the "<b>Go</b>" button.
				 </font>
		  </div>
		</td>
		<td bgcolor="#f3f3f3" background="<%=request.getContextPath() %>/newimages/main-2D-bg-11.gif" valign="top"><img src="<%=request.getContextPath() %>/image/blank.gif" width="162" height="1">
		</td>
	</tr>
	<tr><%

			Date d = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy");
			String now2 = df.format(d);

			%>
		<td bgcolor="#f3f3f3" background=""><img src="<%=request.getContextPath() %>/newimages/main-3A1.gif"></td>
		<td bgcolor="#f3f3f3" background="<%=request.getContextPath() %>/newimages/main-3B-bg.gif" colspan="2"><img src="<%=request.getContextPath() %>/newimages/main-3B-11.gif"></td>
		<td bgcolor="#f3f3f3" valign="bottom"><img src="<%=request.getContextPath() %>/newimages/main-3B-12.gif"></td>
	</tr>
	<tr>
		<td bgcolor="#f3f3f3" background=""><img src="<%=request.getContextPath() %>/newimages/main-4B-bg1.gif"></td>
		<td bgcolor="#f3f3f3" background="<%=request.getContextPath() %>/newimages/main-4B-bg.gif" colspan="2"><img src="<%=request.getContextPath() %>/newimages/main-4B-11.gif"></td>
		<td bgcolor="#f3f3f3" valign="bottom"><img src="<%=request.getContextPath() %>/newimages/main-4B-12.gif"></td>
	</tr>
</table>
<table width="1250" border="0" cellpadding="2" cellspacing="0">
	<tr>
		<td width="135" align="center" valign="bottom"><br>
			<img src="<%=request.getContextPath() %>/image/horz_master_100pixels.gif" alt="Instant SSL Certificate Secure Site" width="100" height="60" style="border: 0px;"><br> 
			<span style="font-weight:bold; font-size:7pt">Instant SSL Certificate Secured</span>
		</td>
		<td  width="600" bgcolor="#0089C7" valign="bottom" ><img src="<%=request.getContextPath() %>/image/blank.gif"></td>
		<td bgcolor="#0089C7" valign="bottom"><img src="<%=request.getContextPath() %>/image/blank.gif" width="162" height="1"><br>
		<font color="#f3f3f3" size="1" face="Arial, Helvetica">&copy;Copyright 2003-<%=now2%> America's Choice Healthplans LLC</td>
	</tr>
</table>
<!--
<table width="100%" bgcolor="#0089C7" height="100%" border="0">
	<tr>
		<td vAlign="top">
				<form id="form" action="" method="post" name="form" enctype="multipart/form-data" >
						<TABLE bgcolor="#ffffff" height="549px" width="739px" align="center" border="0" style="margin-top:0px;">
								<TBODY>
									<TR>
										<TD height=100></TD>
									</TR>
									<TR>
										<TD bgColor=#0089C7 height=24></TD>
									</TR>
									<TR>
										<TD>
											<TABLE width=733 align=left border=0 style="margin-top:1px;">
												<TBODY>
													<TR>
														<TD vAlign="top" width="268" bgColor="#f2f2f2" height="510">
															<p>
																<FONT face="Verdana, Arial, Helvetica, sans-serif" size=2 >
																   <STRONG>Members,Employers,Providers,Brokers</STRONG>
																</FONT>
															</p>
															<p style="height:65px;">
																<FONT size="2" face=Arial color=#f26600>
																   <B id="msgID"  >
																     Please enter your login and password.
																   </B>
															     </FONT>
															</p>
															<TABLE cellPadding=6 >
																<TBODY>
																	<TR>
																		<TD>
																			<DIV class="font_black12_bold">
																				login
																			</DIV>
																			<INPUT class="input001" style="FONT-FAMILY: monospace" maxLength=30 id="loginId"
																				size=12 name=login >
																		</TD>
																	</TR>
																	<TR>
																		<TD>
																			<DIV class="font_black12_bold">
																				password
																			</DIV>
																			<INPUT class="input001" style="FONT-FAMILY: monospace" type=password id="pwdId"
																				maxLength=20 size=12 name=password >
																		</TD>
																		<TD >
																			<IMG id="goid" src="<%=request.getContextPath()%>/image/go.gif" border=0 name=go>
																		</TD>
																	</TR>
																	<TR>
																		<TD width=189 colSpan=2>
																			<NOSCRIPT>
																				<FONT color=#990000></FONT>
																			</NOSCRIPT>
																			<P></P>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
															
															<TABLE cellSpacing=0 cellPadding=0>
																<TBODY>
																	<TR>
																		<TD align="center"></TD>
																	</TR>
																</TBODY>
															</TABLE>
														</TD>
														<TD width=539 bgcolor="#ffffff">
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
						</TABLE>
						<input type="hidden" name="msoid" value="0">
						</form>	
				</td>
		 </tr>
  </table>-->
</BODY>
<script type="text/javascript">	

$(".prov").click(function(){
  var ach = "ye";
  window.location.href="<%=request.getContextPath()%>/provider/prov_provider.do?ach="+ach;

});

 $("#goid").hover(function(){
   $(this).attr("src","<%=request.getContextPath()%>/image/go-over.gif");
  //  alert($(this).attr("src"));
 },function(){
  $(this).attr("src","<%=request.getContextPath()%>/image/go.gif");
 });
 
 $("#goid").css("cursor","pointer").click(function(){
   //ie 中 使用 $.trim(str); 形式
   var loginval =  $.trim($("#loginId").val());
    $("#loginId").val(loginval);
   if(loginval==''){
    $('#msgID').html('Please enter your login.').attr("style","color:");
    return false;
   }
   var pwdval = $.trim($("#pwdId").val());
      $("#pwdId").val(pwdval);
    if(pwdval==''){
      $('#msgID').html('Please enter your password.').attr("style","color:");
      return false;
    }
    
    // $('#msgID').html('login...');
    $('#msgID').html('<img align="middle" src="<%=request.getContextPath()%>/image/loading2.gif"></img>');
    $.ajax({
 		type:"POST",
 		url:"<%=request.getContextPath()%>/login_checkLogin.action",
 		data:{"login":loginval,"password":pwdval,"msoid":0},
 		cache:false,
 	    dataType:"html",
 		success:function(returndata){
				    if(returndata == '1'){
				       $("form").attr("action","<%=request.getContextPath()%>/login_login.do");
	                   $("form").submit();
				    }else if(returndata=='0'){
				      $('#msgID').html('The login or  password you entered is incorrect. <br/>Please try again (make sure your caps lock is off).').attr("style","color:red");
				    }else{
				    	$('#msgID').html('The system is busy, please try again later.').attr("style","color:red");
				    }
			   
			 }
 	});
    
 });
 
<%-- 
 $(document).ready(function(){
    goTopCommImg();
 
 });
 --%>
 //
     // enter search
  $(document).keydown(function(e){
   if(e.keyCode==13){ 
     var act = document.activeElement.id;
     switch(act)
     {
     case 'loginId':  $("#goid").click();  break;
     case  'pwdId':  $("#goid").click();  break;
      //  default :  $("#id_query").click(); break;
     }
  }        
});

$("#checkuser").click(function(){
	window.location.href="<%=request.getContextPath()%>/newlog/newlog_findUsername.do";
}); 

$("#checkpwd").click(function(){
	window.location.href="<%=request.getContextPath()%>/newlog/newlog_findPwd.do";
});

$("#agreement").click(function(){
	window.location.href="<%=request.getContextPath()%>/newlog/newlog_agree.do";
});

$("#memberguide").click(function(){
    var guidefilename = "Member_Guide_ACH_Website.pdf";
    var filename ="memberguide/"+guidefilename;

    window.location.href="<%=request.getContextPath()%>/sys/down_downloadFile.do?filename="+filename+"&downloadName="+guidefilename;
});
</script>
</HTML>
