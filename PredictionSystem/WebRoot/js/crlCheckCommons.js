/**
 * jack 
 * @param {Object} object
 */
        var haveError;
		var errorMsgColor ="color:red;font-size:12px";		//(样式)错误消息的颜色
		var firstMsgColor = "color: #888"; //(样式)初始的提示语的颜色   用于之后的判断,中间要加空格,全文小写
		
		function basicInit(object){//初始化基本方法
			var msgStyle =$(object).next().attr("style");
			if(msgStyle!=undefined){
			msgStyle = msgStyle.toLowerCase();
				var msgContent=$(object).next().html();
				if(msgStyle.indexOf(firstMsgColor)!=-1 && jQuery.trim(msgContent)!=''){//如果有默认提示语,则存储起来
					$(object).attr("firstMsg",msgContent);  //提示语内容
					$(object).attr("firstMsgColor",msgStyle);//保留提示语原先样式
				}
			}
			$(object).next().text('');//把验证对象后面的提示信息清空
		}
		
		//文本框验证初始化 
		function checkInit(object){
			basicInit(object);
			$(object).val(jQuery.trim($(object).val()));//去掉左右空格
		}
		
		//通过验证后,补写提示语
		function supplyMsg(object){
			if($(object).attr("firstMsg")!=undefined){
			$(object).next().html($(object).attr("firstMsg"));
			$(object).next().attr("style",$(object).attr("firstMsgColor"));
			}
		}
		
		//非空验证
		function required(object,msg){
			checkInit(object);
			if($(object).val().length==0){
				$(object).next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}
			supplyMsg(object);
			return true;
		}
		
	   function required2(object,msg,showspan){
			if($(object).val().length==0){
				$(showspan).text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}
			return true;
		}
		
		//最大长度验证(所要验证的对象,文本的长度,出错后的提示信息)
		function maxLength(object,textlength,msg){
			checkInit(object);
			var len=0;
			var reg =/^[\u4e00-\u9fa5]$/;
			for(var i=0;i<$(object).val().length;i++){
			//alert($(object).val().substring(i,i+1));
				//var intCode=$(object).val().charCodeAt(i);
				//if (intCode>=0&&intCode<=128){
				if(!reg.test($(object).val().substring(i,i+1))){
					len=len+1;
				}else{
					len=len+3;
				}
			}
			if(len >textlength)
			{
				$(object).next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}
			supplyMsg(object);
			return true;
		}
		
		//最小长度验证
		function minLength(object,textlength,msg){
			checkInit(object);
			var len=0;
			var reg =/^[\u4e00-\u9fa5]$/;
			for(var i=0;i<$(object).val().length;i++){
			//alert($(object).val().substring(i,i+1));
				//var intCode=$(object).val().charCodeAt(i);
				//if (intCode>=0&&intCode<=128){
				if(!reg.test($(object).val().substring(i,i+1))){
					len=len+1;
				}else{
					len=len+3;
				}
			}
			if(len <textlength)
			{
				$(object).next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}
			supplyMsg(object);
			return true;
		}
		
		//是否是图片
		function isImage(object,msg){
			checkInit(object);
			var imageType = $(object).val().substr($(object).val().lastIndexOf('.')+1);
			if(imageType!=""){
			imageType = imageType.toLowerCase();
			if(imageType!='jpg' && imageType!='jpeg' && imageType!='gif' && imageType!='bmp' && imageType!='png'){
	    		$(object).next().text(msg).attr("style",errorMsgColor);
	    		haveError = true;
	    		return false;
	    	}
	    	}
	    	supplyMsg(object);
	    	return true;
		}
		
		//上传图片是否重名
		function isRename(objects,msg){ //用于判断JQuery  input[file]对象数组
			var renameStr='';
			for(var i = 0;i<objects.length-1;i++){
				for(var j = i+1;j<objects.length;j++){
			var imageName1 = $(objects[i]).val().substr($(objects[i]).val().lastIndexOf('\\')+1,$(objects[i]).val().lastIndexOf('.'));
			var imageName2= $(objects[j]).val().substr($(objects[j]).val().lastIndexOf('\\')+1,$(objects[j]).val().lastIndexOf('.'));
			if(imageName1!='' && imageName1 == imageName2 ){ // 如果名称相同,则判断他们的图片格式是否相同
				var imageType1 = $(objects[i]).val().substr($(objects[i]).val().lastIndexOf('.')+1).toLowerCase();
				var imageType2 = $(objects[j]).val().substr($(objects[j]).val().lastIndexOf('.')+1).toLowerCase();
				if(imageType1 == imageType2){
					$(objects[i]).next().text(msg).attr('style',errorMsgColor);
					$(objects[j]).next().text(msg).attr('style',errorMsgColor);
					renameStr=renameStr+i+j;
					haveError = true;
				}
			}
			}
			}
			if(renameStr.length>0){
				for(var i = 0;i<objects.length;i++){
						if(renameStr.indexOf(i+'')==-1){
							supplyMsg($(objects[i]));
						}
				}
			}else{
				for(var i = 0;i<objects.length;i++){
						supplyMsg($(objects[i]));
				}
				return true;
			}
			return false;
		}
		
		function isRenameStr(str){// 获得一串字符串,存储一组名称,之间用','分隔  ,判断是否重名
			var names = new Array();
			names = str.split(',');
			for(var i =0;i<names.length;i++){
				for(var j = i+1;j<names.length;j++){
					var imageName1 = names[i].substr(names[i].lastIndexOf('/')+1,names[i].lastIndexOf('.'));
					var imageName2 = names[j].substr(names[j].lastIndexOf('/')+1,names[j].lastIndexOf('.'));
					if(imageName1!='' && imageName1 == imageName2 ){ // 如果名称相同,则判断他们的图片格式是否相同
						var imageType1 = names[i].substr(names[i].lastIndexOf('.')+1).toLowerCase();//取出格式,转换成小写
						var imageType2 = names[j].substr(names[j].lastIndexOf('.')+1).toLowerCase();//取出格式,转换成小写
						if(imageType1 == imageType2){
							return imageName1+'.'+imageType1;
						}
					}
				}
			}
			return false;
		}
		
		//下拉列表是否选择
		function selectType(object,msg){
			basicInit(object);
			if($(object).children().length == 0 || $(object).val()==''){
				$(object).next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}
			supplyMsg(object);
			return true;
		}

		//验证url
		function checkUrl(object,msg){
			var r =/^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\:+!]*([^<>])*$/; 
            if(!r.test($(object).val()))
            {
                $(object).next().text(msg).attr("style",errorMsgColor);
                haveError=true;
				return false;
            } 
			return true;
		}
		
		  //验证数字范围
		function checkNeedscore(object,star,end,msg){
			checkInit(object);
			if($(object).val()<star || $(object).val()>end){
				$(object).next().text(msg).attr('style',errorMsgColor);
				haveError=true;
				return false;
			}
			supplyMsg(object);
			return true;
		}
		
		//验证日期起始时间 不大于 日期结束时间
		function checkStartLessEndDate(startDateObj,endDateObj,msg){
			if($(startDateObj).val()!='' && $(endDateObj).val()!=''){
				if($(startDateObj).val()>$(endDateObj).val()){
					$(endDateObj).next().next().next().text(msg).attr('style',errorMsgColor);
					haveError=true;
					return false;
				}
			}
			return true;
		}
		//验证日期格式 mm/dd/yyyy  20120605 jack
		function checkdate(object,msg,msgObj){
			var r =/^(0?[1-9]|10|11|12)[\/|\-]([1-2]?[0-9]|0[1-9]|30|31)[\/|\-]([1-2]\d{3})$/ig; 
			var monthPerDays = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
			var objval = $(object).val();
           if(objval !=''){
        	   
					if(!r.test(objval))
		            {    
						if(msgObj == undefined){
		            	   $(object).next().next().text(msg).attr("style",errorMsgColor);
		                  }else{
		                	$(msgObj).text(msg).attr("style",errorMsgColor);
		                 }
		            	 
		               
		                haveError=true;
						return false;
		            } else{
		            	var  dateArr = objval.split("/");
		            	var   month  = dateArr[0];
						var    day = dateArr[1];
						var   year  = dateArr[2];
					    if(year%100 == 0){
					        if(year%400 == 0)
					            monthPerDays[1] = 29;
					    }else{
					        if(year%4 == 0)
					            monthPerDays[1] = 29;
					   		 }
					    if(monthPerDays[month-1] < day){
					    	   if(msgObj == undefined){
					    		   $(object).next().next().text('Date error').attr("style",errorMsgColor);
					    		   
					    	   }else{
					    		   $(msgObj).text('Date error').attr("style",errorMsgColor);
					    	   }
					           
		                     haveError=true;
					         return false;
					    }
		            }// 输入格式正确后，检验月份days.
					
			  }  // value 不为空时，再进行日期正确性判断
			return true;
			
		}
				//非空验证
		function dateRequired(object,msg){
			if($(object).val().length==0){
				$(object).next().next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}
			return true;
		}
		//****************************************************
		//*	提取正则表达式,所有正则表达式判断,js文件内部调用此方法    *
		//****************************************************	
		function regularExpression(object,msg,myReg)
		{
			checkInit(object);
			if(!myReg.test($(object).val())){
				$(object).next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}else{
				supplyMsg(object);
				return true;
			}
		}
		
		//必须是纯数字
		function isOnlyNumber(object,msg){
			var reg = /^[0-9]{0,}$/;
			return regularExpression(object,msg,reg);
		}
		
		//验证数字和英文
		function isNumOrEn(object,msg){
			var reg=/^[0-9A-Za-z]{0,}$/;
			return regularExpression(object,msg,reg);
		}
		
		//中间是否存在空格
		function nohaveSpace(object,msg,onlyName){//oblyName用于判断是否仅取出文件名称, 如果是判断一般字符串则,直接为false;
			var newstr;
			if(onlyName){ //是否只取出文件名,而忽略文件路径
				 newstr = $(object).val().substr($(object).val().lastIndexOf('\\')+1);
			}else{
				 newstr = $(object).val();
			}
			var myReg = /^\S{0,}$/;
			if(!myReg.test(newstr)){
				$(object).next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}else{
				supplyMsg(object);
				return true;
			}
		}
		
		//邮箱验证
		function isEmail(object,msg){
			var myReg =/^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$/;
			return regularExpression(object,msg,myReg);
		}
		
		//身份证验证
		function isIDCard(object,msg){
			checkInit(object);
		    var myReg =/^(\d{6})()?(\d{2})(\d{2})(\d{2})(\d{3})$/;
			if($(object).val().length==18){
				myReg =/^((11|12|13|14|15|21|22|23|31|32|33|34|35|36|37|41|42|43|44|45|46|50|51|52|53|54|61|62|63|64|65|71|81|82|91)\d{4})((((19|20)(([02468][048])|([13579][26]))0229))|((20[0-9][0-9])|(19[0-9][0-9]))((((0[1-9])|(1[0-2]))((0[1-9])|(1\d)|(2[0-8])))|((((0[1,3-9])|(1[0-2]))(29|30))|(((0[13578])|(1[02]))31))))((\d{3}(x|X))|(\d{4}))$/;
			}
			return regularExpression(object,msg,myReg);
		}
		
		//校验密码：只能输入6-20个字母、数字、下划线 
		function isPassword(object,msg){
			var myReg=/^(\w){6,20}$/;
			return regularExpression(object,msg,myReg);
		}
		//可以包含特殊字符密码,不可以包含单引号
	   function isPassword2(object,msg){
		   // var myReg = /^[\w~!@#$%^&*()_+{}:"<>?\-=[\];\',.\/]{6,20}$/;
		    var myReg = /^[\w~!@#$%^&*()_+{}:"<>?\-=[\];,.\/]{8,20}$/;
			return regularExpression(object,msg,myReg);
		}
		//校验普通电话、传真号码：可以“+”开头，除数字外，可含有“-” 
		function isTeleNum(object,msg){
			var myReg =/^((\(\d{3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}$/; 
			return regularExpression(object,msg,myReg);
		}
		//校验手机号码
		function isPhoneNum(object,msg){
			var myReg =/^(\d{2,3}-)?1[3|5|8]\d{9}?$/; 
			return regularExpression(object,msg,myReg);
		}
		
		
		//********************
		//多行文本框不删除左右空格, 但判断只有空格的情况
		//********************
		
		
		//多行文本框初始化方法
		function textareaInit(object){
			basicInit(object);
		}
		
		//多行文本框 非空
		function textareaRequired(object,msg){
			textareaInit(object);
			var colneObject = jQuery.trim($(object).val());
			if(colneObject.length==0){
				$(object).next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}
			supplyMsg(object);
			return true;
		}
		
		
		//多行文本框 最大长度
		function textareaMaxLength(object,textlength,msg){
			textareaInit(object);
			var ch=0;
			var str= $(object).val();
			var len = 0;
			for(var i=0;i<str.length;i++){
			  ch = str.charCodeAt(i);
			  if (!(ch >= 65 && ch <= 90)&&!(ch>=48 && ch<=57)&&!(ch>=97 && ch<=122)) {
			  len= len +3;
			  }else{
			  len = len +1;
			  }
			}
			if(len >textlength)
			{
				$(object).next().text(msg).attr("style",errorMsgColor);
				haveError = true;
				return false;
			}
			supplyMsg(object);
			return true;
		}
		
		
		//多行文本框最小长度
		function textareaMinLength(object,textlength,msg){
			var len=0;
			var reg =/^[\u4e00-\u9fa5]$/;
			for(var i=0;i<$(object).val().length;i++){
			//alert($(object).val().substring(i,i+1));
				//var intCode=$(object).val().charCodeAt(i);
				//if (intCode>=0&&intCode<=128){
				if(!reg.test($(object).val().substring(i,i+1))){
					len=len+1;
				}else{
					len=len+3;
				}
			}
				if(len <textlength)
				{
					$(object).next().text(msg).attr("style",errorMsgColor);
					haveError = true;
					return false;
				}
				supplyMsg(object);
			return true;
		}