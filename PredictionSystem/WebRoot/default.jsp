<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>America's Choice Healthplans&reg;: National TPA</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="TPA, healthcare, health, insurance, self-funding, self, fund, funding, stop loss, HMO, PPO, POS, third party administrator, healthplans, national, underwriter, dental, rx, prescription, vision, flexible benefits, disability, network, provider, reinsurance">
	<meta http-equiv="description" content="America's Choice Healthplans&reg; - An E-commerce enabled TPA providing medical, dental, Rx, vision, life, flex, and disability solutions to multi-site, multi-state employers coast to coast with national provider networks.">
	 
	<%@ include file="general/internalipcheck.jsp"%>
	<%@ include file="general/down.jsp"%>
	<%@ include file="general/trackvisitor.jsp"%>
	
	
	<% 
	
		String[][] Awards = new String[3][4];
		
		//'0=gif'
		//'1=href'
		//'2=alt'
		
		Awards[0][0]="main-3B-InternetAchievement.gif";
		Awards[1][0]="";
		Awards[2][0]="Eastern Technology Technology Council Internet Achievement Award - Winner 2001";
		
		Awards[0][1]="main-3B-inc500.gif";
		Awards[1][1]=""+path+"/brochure/NEWS-Inc500.jsp";
		Awards[2][1]="Inc. Magazine - 402nd fastest growing company in the country.";
		
		Awards[0][2]="main-3B-entrepreneur.gif";
		Awards[1][2]="";
		Awards[2][2]="Ernst & Young - Entrepreneur of the Year Award - Nominee 2001.";
		
		Awards[0][3]="main-3B-philly100.gif";
		Awards[1][3]=""+path+"/brochure/NEWS-PBJ26.jsp";
		Awards[2][3]="Philadelphia Business Journal - 26th fastest growing company in Philadelphia area.";
		
		
		Random ra =new Random(); 
		int intLowerBound=0;
		int intUpperBound = Awards[2].length-1;
		int intRangeSize = intUpperBound - intLowerBound + 1;
		int sngRandomValue = ra.nextInt(intUpperBound)%intRangeSize + intLowerBound;
		int AwardNumber = sngRandomValue;
		
	%>

		
	
	<style type='text/css'>
		.privatelink {font-family:Arial,Helvetica;font-size:13px;color:000099;font-weight:bold;text-decoration:none;}
		.publiclink {font-family:Arial,Helvetica;font-size:15px;color:ffffff;font-weight:bold;text-decoration:none;}
		.publiclink:hover  {font-family:Arial,Helvetica;font-size:15px;color:ffcc00;font-weight:bold;text-decoration:none;}
		.fieldtitle {font-family:Arial,Helvetica;font-size:12px;color:000000;text-decoration:none;}
		.littlelink {font-family:Arial,Helvetica;font-size:11px;color:000099;text-decoration:none;}
		.littlelink:hover {font-family:Arial,Helvetica;font-size:11px;color:0000ff;text-decoration:none;}
	
	</style>
	
	<script language="JavaScript" src="scripts/navcond.js"></script>
	<script language="JavaScript">
		var PrivateNavBar = new NavBar(0);
		var dhtmlMenu;
		
		dhtmlMenu = new NavBarMenu(80, 120);
		dhtmlMenu.addItem(new NavBarMenuItem("Members", ""));
		dhtmlMenu.addItem(new NavBarMenuItem("View Claims", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=M&r=claims"));
		dhtmlMenu.addItem(new NavBarMenuItem("View Benefits", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=M&r=benefitsummary"));
		dhtmlMenu.addItem(new NavBarMenuItem("Find Doctor", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=M&r=providersearch"));
		dhtmlMenu.addItem(new NavBarMenuItem("Change Info", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=M&r=personal_info"));
		PrivateNavBar.addMenu(dhtmlMenu);
		
		dhtmlMenu = new NavBarMenu(90, 175);
		dhtmlMenu.addItem(new NavBarMenuItem("Employers", ""));
		dhtmlMenu.addItem(new NavBarMenuItem("Claim Reports", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=C&r=reports"));
		dhtmlMenu.addItem(new NavBarMenuItem("Forms/Supplies", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=C&r=supplies"));
		dhtmlMenu.addItem(new NavBarMenuItem("Employee Maintenance", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=C&r=eligibility"));
		PrivateNavBar.addMenu(dhtmlMenu);
		
		dhtmlMenu = new NavBarMenu(80, 120);
		dhtmlMenu.addItem(new NavBarMenuItem("Providers", ""));
		dhtmlMenu.addItem(new NavBarMenuItem("Patient Benefits", "<%=request.getContextPath()%>/providers/benefits.jsp"));
		dhtmlMenu.addItem(new NavBarMenuItem("Look Up Claims", "<%=request.getContextPath()%>/providers/lookupclaims.jsp"));
		PrivateNavBar.addMenu(dhtmlMenu);
		
		dhtmlMenu = new NavBarMenu(80, 120);
		dhtmlMenu.addItem(new NavBarMenuItem("Brokers", ""));
		dhtmlMenu.addItem(new NavBarMenuItem("Prospect Tools", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=B&r=prospect"));
		dhtmlMenu.addItem(new NavBarMenuItem("Claim Reports", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=B&r=reports"));
		dhtmlMenu.addItem(new NavBarMenuItem("Forms/Supplies", "<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=B&r=supplies"));
		PrivateNavBar.addMenu(dhtmlMenu);
		
		PrivateNavBar.setColors("#F2C100", "#000099", "#F2C100", "#FFFFFF", "#000099", "#000000", "#ffffff", "#FFFFFF", "#000099")
		PrivateNavBar.setSizes(1, "1px", 0)
		PrivateNavBar.moveTo(308, 7)
		PrivateNavBar.setFonts("Arial, Helvetica", "normal", "bold", "12px", "Arial, Helvetica", "normal", "normal", "13px")
		var fullWidth;
		
		function init() {
		
		  fullWidth = 279
		
		  PrivateNavBar.resize(fullWidth);
		  PrivateNavBar.create();
		  PrivateNavBar.setzIndex(2);
		}
	
	
	
	</script>
	
	<script language="JavaScript">
		
		if (document.images) {
			goOff = new Image(73,33);goOff.src = 'newimages/login-off.gif';
			goOn = new Image(73,33);goOn.src = 'newimages/login-on.gif';
		
			demoOff = new Image(166,33);demoOff.src = 'newimages/main-demolink.gif';
			demoOn = new Image(166,33);demoOn.src = 'newimages/main-demolink-over.gif';
		
			contactOff = new Image(153,33);contactOff.src = 'newimages/main-contactlink.gif';
			contactOn = new Image(153,33);contactOn.src = 'newimages/main-contactlink-over.gif';
		
		}
		
		function ro(id,name){
		   	if (document.images) {document.images[id].src=eval(name + '.src'); }
		}
		
		function findLinkByHref(href) {
		  for (var i=0; i<document.links.length; i++) {
		    if (document.links[i].href == href) return i;
		  }
		  return -1;
		}
		
		function changeLinkHref(id,newHref,oldHref) {
		  if (document.links.length > 0) {
		    if (document.getElementById) {
		      document.getElementById(id).href = newHref;
		    }
		    else if (document.all) {
		      document.all[id].href = newHref;
		    }
		    else {
		      var index = findLinkByHref(oldHref);
		      if (index > -1)
		        document.links[index].href = newHref;
		    }
		  }
		}
		
		AwardImages = new Array;
		
		<%
			int i;
			for(i=0;i<=Awards[2].length-1;i++){
				out.print("AwardImages[" + i + "] = new Array;<br>" );
				out.print("AwardImages[" + i + "][0] = '" + Awards[0][i] + "';<br>");
				out.print("AwardImages[" + i + "][1] = '" + Awards[1][i] + "';<br>");
				out.print("AwardImages[" + i + "][2] = '" + Awards[2][i] + "';<br>");	
			}
			
			out.print("AwardNumber = " + AwardNumber + ";<br>");
			out.print("NumOfAwards = " + Integer.toString(Awards[2].length-1) + ";<br>");
		%>
		
		//this eliminates JavaScript error messages
		onError=null
		
		var speed = 10;  // "var speed" is the refresh rate adjustment in seconds
		var y = 3;      // expected time to download the picture file. It  MUST be
		                 // set at a smaller number than the "speed" variable!
		
		var x = speed;   // current countdown
		var cachepic = new Image();
		
		function startClock() {
			      if (x != "00") {
			x = x - 1;
		         if (x == y) {
		          recache()
		        }
			if (x <= 0)
		        {
		          reload()
		        }
			timerID = setTimeout("startClock()", 1000);
		        }
		}
		
		function recache() {
		      var now = new Date();
		      var AwardImg = 'newimages/' + AwardImages[AwardNumber][0];
		      cachepic.src = AwardImg;
		      AwardHref =  AwardImages[AwardNumber][1];
		      AwardAlt =  AwardImages[AwardNumber][2];
		      LastAwardNumber = AwardNumber;
		      AwardNumber++;
		      if (AwardNumber>NumOfAwards) { AwardNumber = 0 }
		    }
		
		function reload() {
		    document.images.award.src = cachepic.src;
		    document.images.award.alt = AwardAlt;
		    changeLinkHref('awardLink',AwardHref,LastAwardNumber);
		    x = speed;
		              	  }
		
	
		</SCRIPT>								
	
  </head>
  
  <body link="ffffff" vlink="ffefcc" onLoad="init();startClock();" bgcolor="#0089C7" background="" leftmargin="0" rightmargin="0" marginwidth="0" topmargin="0" marginheight="0">
    <MAP Name="textmap">
    	<AREA Shape="rect" Coords="208,234,347,253" Href="<%=request.getContextPath()%>/user/login_marketing.do" Alt="Marketing Contacts">
		<AREA Shape="rect" Coords="167,263,268,278" Href="<%=request.getContextPath()%>/user/login_AboutACH.do" alt="Online Brochure">
	</MAP>
	
	<table border="0" width="1250" cellpadding="0" cellspacing="0" >
		<tr>
			<td bgcolor="#0089C7" background=""><img src="newimages/main-1A.gif"></td>
			<td bgcolor="#f3f3f3" background="newimages/main-1B-bg.gif"><img src="newimages/main-1B.gif"></td>
			<td bgcolor="#f3f3f3" background="newimages/main-1C-bg.gif" valign="top">
				<table  border="0" width="280" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="5"><img src="newimages/blank.gif" width="279" height="7"></td>
					</tr>
					<tr>
						<Td bgcolor="#F2C100" background="newimages/blank.gif"><img src="newimages/blank.gif" height="19" width="1"></td>
						<Td bgcolor="#F2C100" background="newimages/blank.gif"><a class="privatelink" href="<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=M">Members</td>
						<Td bgcolor="#F2C100" background="newimages/blank.gif"><a class="privatelink" href="<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=C">Employers</td>
						<Td bgcolor="#F2C100" background="newimages/blank.gif"><a class="privatelink" href="<%=request.getContextPath()%>/provider/prov_provider.do?ach=ye">Providers</td>
						<Td bgcolor="#F2C100" background="newimages/blank.gif"><a class="privatelink" href="<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp?lt=B">Brokers</td>
					</tr>
				</table>
			</td>
			<td bgcolor="#f3f3f3"><img src="newimages/main-1D-11.gif"></td>
		</tr>
		<tr>
			<td bgcolor="#0089C7" background="" valign="top"><img src="newimages/blank.gif" width="157" height="12"><font size="-3"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_AboutACH.do" class="publiclink"><font size="-2">About ACH</font></a><font size="-5"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_Website.do" class="publiclink"><font size="-2">The Website</font></a><font size="-5"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_WowService.do" class="publiclink"><font size="-2">WOW! Service</font></a><font size="-5"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_Partners.do" class="publiclink"><font size="-2">Partners</font></a><font size="-5"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_CostManagement.do" class="publiclink"><font size="-2">Cost Management</font></a><font size="-5"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_ClickStart.do" class="publiclink"><font size="-2">Switch to ACH</font></a><font size="-5"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_news.do" class="publiclink"><font size="-2">News & Press</font></a><font size="-5"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_ACHJobs1.do" class="publiclink"><font size="-2">Employment</font></a><font size="-5"><br></font>
				&nbsp;&nbsp;<a href="https://secure4.achonline.com/user/login_privacy.do" class="publiclink"><font size="-2">Privacy Statement</font></a>
				<!-- &nbsp;&nbsp;<a href="#" id="achsurprisebilling" class="publiclink"><font size="-2">No Surprises Act Member's <br>&nbsp;&nbsp;&nbsp;Rights</font></a><font size="-5"><br></font> -->
				&nbsp;&nbsp;<div id="achsurprisebilling"  class="publiclink">&nbsp;&nbsp;<span style="cursor:pointer"><font size="-2">No Surprises Act Member's <br>&nbsp;&nbsp;&nbsp;Rights</font></span></div>
				&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/MRF/MRFdownload.jsp" class="publiclink"><font size="-2">Machine Readable Files</font></a><font size="-5"><br><br></font>
				&nbsp;&nbsp;<div id="providerlogin"  class="publiclink">&nbsp;&nbsp;<span style="cursor:pointer"><font size="-2">Request for Predetermination</font></span></div>
				<form id="providerloginform" name="providerloginform" method="post" action="">
				<input type="hidden" id="login" name="login" value="PredictionSystem"/>
				<input type="hidden" id="password" name="password" value="PredictionSystem"/>
				</form>
			</td>
			<td bgcolor="#f3f3f3" background="newimages/main-2B-bg.gif" colspan="2" align="left">
			<img src="newimages/blank.gif" width="430" height="1"><br>
			<img src="newimages/main-2B-shapely.gif"  Usemap="#textmap" Ismap border="0" alt="Welcome to the America's Choice Healthplans web site, the only site that allows you to administer all of your health benefits online.  To learn more about how to get online and benefit with America's Choice, please contact one of our sales representatives or take a look at our online brochure."><br>
			<img src="newimages/blank.gif" width="1" height="10"><br>
			<img src="newimages/blank.gif" width="85" height="1">
			<a href="<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp" onMouseOver="ro('demo','demoOn')" onMouseOut="ro('demo','demoOff')">
			<img src="newimages/main-demolink.gif" border="0" name="demo">
			</a>
			<a href="<%=request.getContextPath()%>/user/login_feedback.do" onMouseOver="ro('contact','contactOn')" onMouseOut="ro('contact','contactOff')">
			<img src="newimages/main-contactlink.gif" border="0" name="contact">
			</a>
			</td>
			<td bgcolor="#f3f3f3" background="newimages/main-2D-bg-11.gif" valign="top"><img src="newimages/blank.gif" width="162" height="1"><br>
				<table  border="0" width="162" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
						<td class="privatelink">Login for Users:</td>
					</tr>
					<tr>
						<Td><img src="newimages/main-loginbox-ul.gif"></td>
						<Td bgcolor="FFF4A5" background="newimages/blank.gif" width="132" height="15"><img src="newimages/blank.gif"></td>
						<Td bgcolor="" background="newimages/blank.gif"><img src="newimages/main-loginbox-ur.gif"></td>
					</tr>
					<tr>
						<Td bgcolor="FFF4A5" rowspan="2" background="newimages/blank.gif"><img src="newimages/blank.gif"></td>
						<Td bgcolor="FFF4A5" background="newimages/blank.gif" align="center">
						<a href="<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp" onMouseOver="ro('go','goOn')" onMouseOut="ro('go','goOff')" alt="Log In"><img src="newimages/login-off.gif" name="go" border="0"></a><div class="fieldtitle">Click on the button above to <a href="<%=request.getContextPath()%>/portal/user/ach_quick_logon.jsp" class="littlelink">log in</a> for registered users of our online services.</div></td>
						<Td bgcolor="FFF4A5" rowspan="2" background="newimages/blank.gif"><img src="newimages/blank.gif"></td>
					</tr>
					<tr>
						<Td bgcolor="FFF4A5" background="newimages/blank.gif"><br><div class="littlelink"><!--<a href="<%=request.getContextPath()%>/newlog/newlog_findPwd.do" class="littlelink">-&nbsp;Lost&nbsp;Password?</a><br><a href="<%=request.getContextPath()%>/user/login_cookies.do" class="littlelink">-&nbsp;Browser&nbsp;Requirements</a>--><a>    </a>
						</div>
					</tr>
					<tr>
						<Td bgcolor="ffffff" background="newimages/blank.gif"><img src="newimages/main-loginbox-ll.gif"></td>
						<Td bgcolor="FFF4A5" background="newimages/blank.gif" width="132" height="15"><img src="newimages/blank.gif"></td>
						<Td bgcolor="" background="newimages/blank.gif"><img src="newimages/main-loginbox-lr.gif"></td>
					</tr>
				</table>
				<br>
				<img src="newimages/blank.gif" width="15" height="60" align="left">
				<a class="littlelink" href="<%=request.getContextPath()%>/provider/prov_provider.do?ach=ye">Healthcare<br>
				Providers<br>
				Click<Br>Here!</a>
			</td>
		</tr>
		<%

			Date d = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy");
			String now2 = df.format(d);

			%>
		
		<tr>
			<td bgcolor="#f3f3f3" background=""><img src="newimages/main-1C-bg1.gif"></td>
			<td bgcolor="#f3f3f3" background="newimages/main-3B-bg-1.gif" colspan="2"></td>
			<td bgcolor="#0089C7" valign="bottom" ><img src="newimages/main-4B1-11.gif">
			</td>
		</tr>
	</table>
<table width="1250" border="0" cellpadding="2" cellspacing="0">
	<tr>
		<td width="135" align="center" valign="bottom"><br>
			<img src="<%=request.getContextPath() %>/image/horz_master_100pixels.gif" alt="Instant SSL Certificate Secure Site" width="100" height="60" style="border: 0px;"><br> 
			<span style="font-weight:bold; font-size:8pt">Instant SSL Certificate Secured</span>
		</td>
		<td  width="600" bgcolor="#0089C7" valign="bottom" ><img src="newimages/blank.gif"></td>
		<td bgcolor="#0089C7" valign="bottom" >
		<img src="newimages/blank.gif"><font color="#f3f3f3" size="1" face="Arial, Helvetica">&copy;Copyright 1999- <%=now2%> America's Choice Healthplans LLC</font>
		</td>
	</tr>
</table>
	
	
  </body>
  
<script type="text/javascript">	

$("#achsurprisebilling").click(function(){
    var guidefilename = "ACH-surprise-billing-model-notice.docx";
    //var guidefilename = "ACH-surprise-billing-model-notice2.pdf";
    //var guidefilename = "ACH-surprise-billing-model-notice.doc";
    //var guidefilename = "test.txt";
    //var guidefilename = "testjason.jason";
    
    var filename ="MRF/"+guidefilename;
 
    window.location.href="<%=request.getContextPath()%>/sys/down_downloadFile.do?filename="+filename+"&downloadName="+guidefilename;
   // window.location.href="https://secure4.achonline.com/sys/down_downloadFile.do?filename="+filename+"&downloadName="+guidefilename;
});

$("#providerlogin").click(function(){
   //$("#providerloginform").attr("action","<%=request.getContextPath()%>/login/login_loginlink.action");
   //$("#providerloginform").submit();
   var loginval= document.getElementById('login').value;
  var pwdval= document.getElementById('password').value;
   $.ajax({
 		type:"POST",
 		url:"<%=request.getContextPath()%>/PredictionSystem/login/login_login.action",
 		data:{"login":loginval,"password":pwdval,"msoid":0},
 		cache:false,
 	    dataType:"html",
 		success:function(returndata){
				    if(returndata == '1'){
				       $("#providerloginform").attr("action","<%=request.getContextPath()%>/advancesearch.jsp");
	                   $("#providerloginform").submit();
				    }else if(returndata=='0'){
				      $('#msgID').html('The login or  password you entered is incorrect. <br/>Please try again (make sure your caps lock is off).').attr("style","color:red");
				    }else if (returndata=='2'){
	                   $("#providerloginform").submit();
				    }else{
				    	$('#msgID').html('The system is busy, please try again later.').attr("style","color:red");
				    }
			   
			 }
 	});
 	 
});


</script>
</html>
