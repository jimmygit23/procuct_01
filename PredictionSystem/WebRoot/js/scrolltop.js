// go back to top
var speed = 0;  // fast , slow

//弹性返回顶部js
function goTopCommImg(){
    var $backToTopTxt = "Top";
    
    // 加入图片返回样式   使用绝对路径
    var $img = $('<img class="png"  src="/topimg/jt.png">');
    var $backToTopEle = $('<div class="backToTopImg"></div>').append($img).appendTo($("body"))
    .attr("title", $backToTopTxt).click(function() {
            $("html, body").animate({ scrollTop: 0 }, speed);
    });
    
    var $backToTopFun = function() {
        var st = $(document).scrollTop();
        (st > 300)? $backToTopEle.show(): $backToTopEle.hide();
        var winh = $(window).height();
        //IE6 下的定位
        // if (!window.XMLHttpRequest) {
        	// alert('ie6');
        //    $backToTopEle.css("top", st + winh - 100);
        //}
    	    if (navigator.appName == 'Microsoft Internet Explorer'){
	           var ua = navigator.userAgent;
	           var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
	           if (re.exec(ua) != null)
	           var rv = parseFloat( RegExp.$1 );
	           if(rv==5||rv==6||rv==7||rv==8||rv==9){
	        	   $backToTopEle.css("top", st + winh - 100);
	           }
	            
	        }
       
    };
    
    $(window).bind("scroll", $backToTopFun);

}
//
function goTopCommTxt(){
    var $backToTopTxt = "Top";
    // 加入文字返回样式
     var $backToTopEle = $('<div class="backToTop"></div>').appendTo($("body"))
    .text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
            $("html, body").animate({ scrollTop: 0 }, speed);
    });
   
    var $backToTopFun = function() {
        var st = $(document).scrollTop();
        (st > 300)? $backToTopEle.show(): $backToTopEle.hide();
        //IE6 下的定位
        var winh = $(window).height();
        if (!window.XMLHttpRequest) {
        	 // alert('ie6');
            $backToTopEle.css("top", st + winh - 100);
        }else{
        	    // alert(navigator.appName);
        	    if (navigator.appName == 'Microsoft Internet Explorer')
		        {
		           var ua = navigator.userAgent;
		           var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
		           if (re.exec(ua) != null)
		           var rv = parseFloat( RegExp.$1 );
		           if(rv==5||rv==6||rv==7||rv==8||rv==9){
		        	   $backToTopEle.css("top", st + winh - 100);
		           }
		            
		       }
         }
    };
    
    $(window).bind("scroll", $backToTopFun);

}
//
function goTopComm(){
	
	// goTopCommTxt();
	goTopCommImg();
}


//talk log  submit
function showtalklog(){
	
    var $table =$('<form action="" name="callform" method="post" target="" id="calllogformID"><table cellpadding="0" cellspacing="1" height="90" width="100%" bgcolor="#ff9900"><tr class="tdclass2">' +
    '<td class="tdclass6" rowspan="2" width="15%">Category<br/><select id="mstcatlogID" name="mt" class="select001">' +
    '<option value="0">CHOOSE GENERAL</option>' +
    '<option value="1">	Claims	</option>' +
	'<option value="2">	Eligibility	</option>' +
	'<option value="3">	Benefits	</option>' +
	'<option value="4">	Document Requested	</option>' +
	'<option value="5">	Appeals	</option>' +
	'<option value="6">	Networks	</option>' +
	'<option value="7">	ID Card	</option>' +
	'<option value="8">	Utilization Management	</option>' +
	'<option value="9">	Claim Status	</option>' +
	'<option value="10">	Claim Review/Reprocess	</option>' +
	'<option value="11">	COBRA	</option>' +
	'<option value="12">	Check Status	</option>' +
	'<option value="13">	Fax	</option>' +
	'<option value="14">	Precertification / UM	</option>' +
	'<option value="15">	Rx	</option>' +
	'<option value="16">	Pre-Existing	</option>' +
	'<option value="17">	Pre-Determination	</option>' +
	'<option value="18">	Claim Pended	</option>' +
	'<option value="19">	Reprocessing Inquiry	</option>' +
	'<option value="20">	Terminated Account	</option>' +
	'<option value="21">	Analyst Action	</option>' +
	'<option value="22">	Flex	</option>' +
	'<option value="23">	Misdirected Call	</option>' +
	'<option value="24">	Request Mailing Address/ EDI Info	</option>' +
	'<option value="25">	Stop Payment / Refund / Voided Check	</option>' +
	'<option value="26">	WEB	</option>' +
	'<option value="27">	Supervisor Call Log	</option>' +
	'<option value="28">	ACS Inquiry	</option>' +
    '</select><br/><span id="msg"></span><br>' +
    '<select id="soncatlogID" name="cboCallType" class="select001"><option value="0">CHOOSE SPECIFIC</option></select></td><td class="tdclass2" rowspan="2"><textarea id="txtRemarkID" name="txtRemark" rows="4" cols="20"></textarea></td>' +
    '<td class="scrofont"><input name="chkSpanish" type="checkbox">Spanish</td><td class="scrofont"><input type="radio" name="cboCaller" value="1" checked="checked">' +
    'Member<input  type="radio" value="0" name="cboCaller">Provider<input type="radio" value="2" name="cboCaller">Client</td>' +
    '<td class="scrofont"><input type="checkbox" name="chkComplete" value=1 checked="checked"/>Complete?</td>' +
    '<td class="scrofont"><input name="chkPrint" type="checkbox" value=1/>Print call?</td>'+
	'<td align="center" class="font_blue14"><span id="showtimeID" style="font-size:12px;" type="text" size="5" name="displaytime">0:0</span></td></tr>' +
	'<tr><td colspan="4" class="tdclass2"><table width="100%" cellspacing="0" cellpadding="0"><tr><td align="center" valign="middle">Send to:' +
	'<select class="select001" name="positionID">' +
	'<option value="0">NO ONE</option>' +
	//'<option value="1">Webmaster</option>' +
	//'<option value="3">Client Billing Setup</option>' +
	'<option value="4">Claims Funding Coordinator</option>' +
	'<option value="6">Eligibility Coordinator</option>' +
	'<option value="7">COBRA Coordinator</option>' +
	'<option value="8">Network Coordinator</option>' +
	'<option value="9">Rx Vendor Coordinator</option>' +
	'<option value="10">Rx Pre-Authorization</option>' +
	'<option value="12">ID Cards</option>' +
	'<option value="13">Medical Analyst</option>' +
	'<option value="15">Client Relations Director</option>' +
	'<option value="16">Reinsurance Coordinator</option>' +
	'<option value="21">Refund Specialist</option>' +
	'<option value="22">Client Relations Coordinator</option>' +
	//'<option value="23">Provider Services Director</option>' +
	'<option value="24">Member Services Representative</option>' +
	'<option value="28">Provider Specialist</option>' +
	'<option value="29">Dental Analyst</option>' +
	'</select>' +
	'Priority<select class="select001" name="priority">' +
	'<option value="0">-</option>'+
	'<option value="1">Today</option>'+
	'<option value="2">Tmrow</option>'+
	'<option value="3">Week</option>'+
	'<option value="4">Month</option>' +
	'</select></td></tr></table></td>' +
	'<td class="tdclass2"><input type="button" id="endcallID" class="button_2" value="End Call"/></td></tr>'+
    '<input id="newloginID" type="hidden" name="newsitelogin" value=""><input id="newpwdID" type="hidden" name="newsitepassword" value=""></table><input type="hidden" name="chkLogMe" value=1>' +
    '</form>');
    var $talklogdiv = $('<div class="showtalk" style="width:910;margin-left:30px;" align="center"></div>').append($table).appendTo($("body"));
    $talklogdiv.show();
    var winh = $(window).height();
    var st = $(document).scrollTop();
        if (navigator.appName == 'Microsoft Internet Explorer'){
	           var ua = navigator.userAgent;
	           var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
	           if (re.exec(ua) != null)
	           var rv = parseFloat( RegExp.$1 );
	           if(rv==5||rv==6||rv==7||rv==8||rv==9){
	        	   $talklogdiv.css("top", st + winh - 90);
	           }
	            
	        }
     var $showtalk = function() {
            var st = $(document).scrollTop();
            $talklogdiv.show();
    	    if (navigator.appName == 'Microsoft Internet Explorer'){
	           var ua = navigator.userAgent;
	           var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
	           if (re.exec(ua) != null)
	           var rv = parseFloat( RegExp.$1 );
	           if(rv==5||rv==6||rv==7||rv==8||rv==9){
	        	   $talklogdiv.css("top", st + winh - 90);
	           }
	            
	        }
       
    };
    
    $(window).bind("scroll", $showtalk);

}

function adminshowtalklog(){
    var $table =$('<form action="" name="callform" method="post" target="" id="calllogformID"><table cellpadding="0" cellspacing="1" height="90" width="100%" bgcolor="#ff9900"><tr class="tdclass2">' +
   '<td class="tdclass6" rowspan="2" width="15%">Category<br/><select id="mstcatlogID" name="mt" class="select001">' +
    '<option value="0">CHOOSE GENERAL</option>' +
    '<option value="1">	Claims	</option>' +
	'<option value="2">	Eligibility	</option>' +
	'<option value="3">	Benefits	</option>' +
	'<option value="4">	Document Requested	</option>' +
	'<option value="5">	Appeals	</option>' +
	'<option value="6">	Networks	</option>' +
	'<option value="7">	ID Card	</option>' +
	'<option value="8">	Utilization Management	</option>' +
	'<option value="9">	Claim Status	</option>' +
	'<option value="10">	Claim Review/Reprocess	</option>' +
	'<option value="11">	COBRA	</option>' +
	'<option value="12">	Check Status	</option>' +
	'<option value="13">	Fax	</option>' +
	'<option value="14">	Precertification / UM	</option>' +
	'<option value="15">	Rx	</option>' +
	'<option value="16">	Pre-Existing	</option>' +
	'<option value="17">	Pre-Determination	</option>' +
	'<option value="18">	Claim Pended	</option>' +
	'<option value="19">	Reprocessing Inquiry	</option>' +
	'<option value="20">	Terminated Account	</option>' +
	'<option value="21">	Analyst Action	</option>' +
	'<option value="22">	Flex	</option>' +
	'<option value="23">	Misdirected Call	</option>' +
	'<option value="24">	Request Mailing Address/ EDI Info	</option>' +
	'<option value="25">	Stop Payment / Refund / Voided Check	</option>' +
	'<option value="26">	WEB	</option>' +
	'<option value="27">	Supervisor Call Log	</option>' +
	'<option value="28">	ACS Inquiry	</option>' +
    '</select><br/><span id="msg"></span><br>' +
   	'<select id="soncatlogID" name="cboCallType" class="select001"><option value="0">CHOOSE SPECIFIC</option></select></td><td class="tdclass2" rowspan="2">' +
   	'<textarea id="txtRemarkID" name="txtRemark" rows="4" cols="20"></textarea></td>' +
    '<td class="scrofont"><input name="chkSpanish" type="checkbox">Spanish</td>' +
    '<td class="scrofont"><input type="checkbox" name="chkLogMe" value=1 checked>Log call?</td>' +
    '<td class="scrofont"><input type="checkbox" name="chkComplete" value=1 checked="checked"/>Complete?</td>' +
    '<td class="scrofont"><input name="chkPrint" type="checkbox" value=1/>Print call?</td>'+
   	'<td align="center" class="font_blue14_size_bold"><span id="showtimeID" style="font-size:12px;" type="text" size="5" name="displaytime">0:0</span></td></tr>' +
	'<tr><td colspan="4" class="tdclass2"><table width="100%" cellspacing="0" cellpadding="0"><tr><td align="center" valign="middle">Send to:' +
	'<select class="select001" name="positionID">' +
	'<option value="0">NO ONE</option>' +
	//'<option value="1">Webmaster</option>' +
	//'<option value="3">Client Billing Setup</option>' +
	'<option value="4">Claims Funding Coordinator</option>' +
	'<option value="6">Eligibility Coordinator</option>' +
	'<option value="7">COBRA Coordinator</option>' +
	'<option value="8">Network Coordinator</option>' +
	'<option value="9">Rx Vendor Coordinator</option>' +
	'<option value="10">Rx Pre-Authorization</option>' +
	'<option value="12">ID Cards</option>' +
	'<option value="13">Medical Analyst</option>' +
	'<option value="15">Client Relations Director</option>' +
	'<option value="16">Reinsurance Coordinator</option>' +
	'<option value="21">Refund Specialist</option>' +
	'<option value="22">Client Relations Coordinator</option>' +
	//'<option value="23">Provider Services Director</option>' +
	'<option value="24">Member Services Representative</option>' +
	'<option value="28">Provider Specialist</option>' +
	'<option value="29">Dental Analyst</option>' +
	'</select>' +
	'Priority<select class="select001" name="priority">' +
	'<option value="0">-</option>'+
	'<option value="1">Today</option>'+
	'<option value="2">Tmrow</option>'+
	'<option value="3">Week</option>'+
	'<option value="4">Month</option>' +
	'</select></td></tr></table></td>' +
	'<td class="tdclass2"><input type="button" id="endcallID" class="button_2" value="End Call"/></td></tr>'+
    '</table><input type="hidden" name="cboCaller" value="2">' +
    '<input id="newloginID" type="hidden" name="newsitelogin" value=""><input id="newpwdID" type="hidden" name="newsitepassword" value=""></form>');
   var $talklogdiv = $('<div class="showtalk" style="width:910;margin-left:30px;" align="center"></div>').append($table).appendTo($("body"));
       $talklogdiv.show();
       //
     var winh = $(window).height();
     var st = $(document).scrollTop();
        if (navigator.appName == 'Microsoft Internet Explorer'){
	           var ua = navigator.userAgent;
	           var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
	           if (re.exec(ua) != null)
	           var rv = parseFloat( RegExp.$1 );
	           if(rv==5||rv==6||rv==7||rv==8||rv==9){
	        	   $talklogdiv.css("top", st + winh - 90);
	           }
	            
	        }
       //
     var $showtalk = function() {
        var st = $(document).scrollTop();
      //  (st > -1)? $talklogdiv.show(): $talklogdiv.hide();
        $talklogdiv.show();
        var winh = $(window).height();
    	    if (navigator.appName == 'Microsoft Internet Explorer'){
	           var ua = navigator.userAgent;
	           var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
	           if (re.exec(ua) != null)
	           var rv = parseFloat( RegExp.$1 );
	           if(rv==5||rv==6||rv==7||rv==8||rv==9){
	        	   $talklogdiv.css("top", st + winh - 90);
	           }
	        }
    };
    $(window).bind("scroll", $showtalk);
}
