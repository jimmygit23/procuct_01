addOnloadEvent(function() {
 	//initRadioCheckbox();
 	//iconButton();
 	initInput();
 	initDatagrid();
 	//initForm();
 	//initPopUp();
 	initToggle();
 	//initTextarea();
})
//base jquery
//初始化控件radio,checkbox,select
function initRadioCheckbox(){
		var onStyle = "green"
		//radio选中变色
		$("input[@type=radio][@checked]").parent().toggleClass(onStyle);
	    $("input[@type=radio]").click(function(){$("input[@type=radio]").parent().removeClass(onStyle);$(this).parent().addClass(onStyle)})
		//checkbox选中变色
		$("input[@type=checkbox][@checked]").parent().toggleClass(onStyle);
		$("input[@type=checkbox]").click(function(){$(this).parent().toggleClass(onStyle)})
		//select选中变色
		$("select").find("option[@selected]").toggleClass(onStyle);
		$("select").change(function(){$(this).find("option").removeClass(onStyle);$(this).find("option[@selected]").addClass(onStyle);})
		$("select").find("option").each(function(i){$(this).attr("title",$(this).text())});
		}
//初始化图标按钮,主要用于图标操作按钮
function iconButton(){
		//$(":image").addClass("iconBtn")
		$(":image").focus(function(){$(this).get(0).blur()})
		.hover(function(){$(this).attr("class","iconBtnOver")},function(){$(this).attr("class","iconBtn")})
		.mousedown(function(){$(this).attr("class","iconBtnDown")})     
		.mouseout(function(){$(this).attr("class","iconBtn")});
		$(":image:disabled").addClass("iconBtnDisabled").attr("title","不可用");
		}
//初始化按钮
function initInput(){
$("input[@button],input[@submite],button").hover(function(){ $(this).attr("class","buttonOver")}, function(){$(this).attr("class","inputButton") });
}
//初始化数据表格
function initDatagrid(){
	var dataGrid = ".dataGrid";
	try{
		if($(dataGrid).find("thead>tr>th").eq(0).children().is(":checkbox"))
		{
		$(dataGrid).find("thead").find("th")[0].style.width = "20px" ;	
		}
	}catch(e)
	{
	}
	var editBlock =".editBlock";
	try{
    if(!$(editBlock).find("tbody >tr> th").attr("width"))
		{
		$(editBlock).find("tbody >tr> th").width("120px");
		}
	}catch(e)
	{
	}
	var tableHover = ".tableHover";
	$(tableHover).find("tr").hover(function(){ $(this).addClass("trHover")}, function(){$(this).removeClass("trHover") });
	$(":checkbox[@checkSelector]").click(function(){
		var p = $(this);
		$(":checkbox").filter(function(){return $(this).attr("checkNode") == p.attr("checkSelector") && $(this).attr("disabled") == null}).each(function(){$(this).get(0).checked = p.attr("checked")});
	})
	
	$(":checkbox[@checkNode]").click(function(){
		var p = $(this);
		x = $(":checkbox").filter(function(){return $(this).attr("checkNode") !=null && $(this).attr("disabled") == null});
		var k = 0;
		for(var i=0;i<x.length;i++) {if(x.get(i).checked == true) { k++ };}
		var t = $(":checkbox").filter(function(){return $(this).attr("checkSelector") == p.attr("checkNode")});
		if(k==x.length) { 
			t.each(function(){$(this).get(0).checked = true}) 
		} else {
			t.each(function(){$(this).get(0).checked = false}) 
		}
	})
	
}
//初始化表单	
function initForm(){
		try{
		$(":text,:password").focus(function(){ $(this).addClass("onFocus"); })
		.blur(function(){ $(this).removeClass("onFocus"); })
		.filter(function(){return $(this).attr("readonly") != undefined}).focus(function(){ $(this).removeClass("onFocus"); })
		
		$("textarea").focus(function(){ $(this).addClass("onFocus"); })
		.blur(function(){ $(this).removeClass("onFocus"); })
		$(".page select").removeClass("sele");
		$(":text").filter(function(){return $(this).attr("class") != "Wdate"}).get(0).focus();
	}
	catch(e){}
	}
////////////////////// initForm end ////////////////////////
	//以subtitle作为需要点击的class
 function initToggle()
 {
	$(".subtitle").click(function(){
		 var t = $(this).parent().parent().next("tbody");
		 t.toggle();
         if(t.get(0).style.display == "none")
		 {
			 $(this).get(0).className = "subtitleClose";
		 }else{
			 $(this).get(0).className = "subtitle";
		}
	})
	$(".subtitleClose").click(function(){
		 var t = $(this).parent().parent().next("tbody");
		t.toggle();	
		if(t.get(0).style.display == "none")
		{
			$(this).get(0).className = "subtitleClose";
		}else{
			$(this).get(0).className = "subtitle";
		}
	})
 }
////////////////////// initToggle end ////////////////////////	
function initPopUp()
{
	 if(window.innerHeight)
	 {
	  $(".popbody").height(window.innerHeight - 60 +"px");
	 }
	 if(document.body.offsetHeight)
	 {
	 $(".popbody").height((document.documentElement.offsetHeight ||document.body.offsetHeight) - 84 +"px");
	 }
}
//输入字数限制
function initTextarea()
{
	
	$("textarea[@maxchar]").after("<div class='remain'>&nbsp;&nbsp;您还可以输入<span></span>个字符&nbsp;&nbsp;</div>")
	
	$("textarea[@maxchar]").each(function(){
								var lens,remain,maxchar;
								maxchar=$(this).attr("maxchar")
								lens=$(this).val().replace(/[^\x00-\xff]/gi,'ch').length ;
								remain=parseInt(maxchar)-lens;  
								$(this).next("div[@class='remain']").children("span").text(remain);
								$(this).next("div[@class='remain']").width($(this).width())
								})
	$("textarea[@maxchar]").bind("keyup",charLeft);
	$("textarea[@maxchar]").bind("keydown",charLeft);
	$("textarea[@maxchar]").bind("change",charLeft);
	
	
	}
 function charLeft()
{ 
				  var lens,remain,maxchar;
				  maxchar=$(this).attr("maxchar")
				  lens=$(this).val().replace(/[^\x00-\xff]/gi,'ch').length ;
				  remain=parseInt(maxchar)-lens;  
				  $(this).next("div[@class='remain']").children("span").text(remain);
				  if(remain<0)
				  {
					 $(this).val($(this).val().substring(0,maxchar))
					 $(this).next("div[@class='remain']").children("span").text(0);
				  }
} 

// 计算对象的座标
Number.prototype.NaN0=function(){return isNaN(this)?0:this;}
function getPosition(e){
    var left = 0;
    var top  = 0;
    while (e.offsetParent){
        left += e.offsetLeft + (e.currentStyle?(parseInt(e.currentStyle.borderLeftWidth)).NaN0():0);
		top  += e.offsetTop  + (e.currentStyle?(parseInt(e.currentStyle.borderTopWidth)).NaN0():0);
		e     = e.offsetParent;
    }

    left += e.offsetLeft + (e.currentStyle?(parseInt(e.currentStyle.borderLeftWidth)).NaN0():0);
	top  += e.offsetTop  + (e.currentStyle?(parseInt(e.currentStyle.borderTopWidth)).NaN0():0);

    return {x:left, y:top};

}
//弹出窗口
function popUp(url,width,height,winname,left,top)
{
		var left = (left==''||left==null)?(screen.width - width)/2:left;
		var top = (top==''||top==null)?(screen.height - height)/2:top;
		var winnames = (winname=='')?'popUpWin':winname;
		window.open(url, winnames, 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+width+',height='+height+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}
//返回
function goback()
{
	history.back();
}
//最大值
function checkMaxInput(_this,maxleng,leftInforId) 
{ 
	var left=document.getElementById(leftInforId); 
	var len=_this.value.replace(/[^\x00-\xff]/gi,'ch').length; 
	var remainnum =parseInt(maxleng)-len; 
	left.value = remainnum; 
	if(remainnum < 0) 
	{ 
		if(_this.value.length!=len) 
		{ 
			if((len-_this.value.length)>(maxleng/2)) 
			{ 
			_this.value=_this.value.substring(0,maxleng/2); 
			} 
			else 
			{ 
			_this.value=_this.value.substring(0,maxleng-(len-_this.value.length)); 
			} 
		}else{ 
			_this.value=_this.value.substring(0,maxleng); 
		} 
			left.value=0; 
			return; 
	} 
}


function makeReadonly(){
	
	$(".editBlock").not(".todo").find(":text,select,textArea")
	.attr("readonly","readonly")
	.addClass("readonlyCtrl")
	.focus(function(){$(this).get(0).blur()});
	
		$(".editBlock").not(".todo").find("select,:radio,:checkbox,:button,:submit,.Wdate").attr("disabled","disabled")


}
		//过滤非法字符
		function contain(str,charset){ 
			var i; 
			for(i=0;i<charset.length;i++) 
			if(str.indexOf(charset.charAt(i))>=0) 
			return true; 
			return false; 
		} 

		function CheckForm(objVal){
			var bool = true;
			if (contain(objVal,"%()><`^#@*~")){
				bool = false;
			}else{
				bool = true;
			}
				return bool; 
		}
		function checkContract(objVal){
			var bool = true;
			var reg = /^[0-9a-zA-Z_-]$/;
			if(!objVal.match(reg)){
				bool = false;
			}else{
				bool = true;
			}
			return bool;
		}
		
		//身份证格式验证
		function checkCD(objVal){
			var bool = true;
			var reg = '';
			if(objVal.length == 15){
				reg =  /^(\d{6})()?(\d{2})(\d{2})(\d{2})(\d{3})$/;
				if(!objVal.match(reg)){
					bool = false;
				}
			}else if(objVal.length == 18){
				reg =  /^((11|12|13|14|15|21|22|23|31|32|33|34|35|36|37|41|42|43|44|45|46|50|51|52|53|54|61|62|63|64|65|71|81|82|91)\d{4})((((19|20)(([02468][048])|([13579][26]))0229))|((20[0-9][0-9])|(19[0-9][0-9]))((((0[1-9])|(1[0-2]))((0[1-9])|(1\d)|(2[0-8])))|((((0[1,3-9])|(1[0-2]))(29|30))|(((0[13578])|(1[02]))31))))((\d{3}(x|X))|(\d{4}))$/;
				if(!objVal.match(reg)){
					bool = false;
				}
			}else{
				bool = false;
			}
			return bool;
		}
		
	$(document).ready(function(){
	 $("tr").hover(
	  function(){
	   $(this).addClass("hover");
	  },function(){
	   $(this).removeClass("hover");
	  }
	 )
	});
