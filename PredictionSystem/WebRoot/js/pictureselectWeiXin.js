$(function(){
    //$("#lxfscroll").css("width","300px");
	//$("#lxfscroll").css("height","80px");
	var num=3;
	var i=0;
	var li = $(".lxfscroll li");
	var n=li.length-1;
	var speed = 300;
	
	
	var temp=$("#lxfscroll").css("height");
	var totalh=parseInt(temp.replace("px",""));
	 temp=$("#lxfscroll").css("width");
	var totalw=parseInt(temp.replace("px",""));
	var alone=totalw/num;
	 
	//$("#bigpic").css("width",(totalw+150)+"px");
	//$("#bigpic").css("height",(totalw-100)+"px");
	$("#lxfscroll ul li").css("width",alone+"px");
	$("#lxfscroll ul li").css("height",totalh+"px");
	$("#lxfscroll ul li").css("line-height",totalh+"px");
	$(".smallpic").css("width",alone+"px");
	$(".smallpic").css("height",totalh+"px");
	 
	$("#butleft").css("width",alone/2+"px");
	$("#butright").css("width",alone/2+"px");
	$("#butleft").css("height",totalh+"px");
	$("#butright").css("height",totalh+"px");
	$("#butleft").css("top",totalh+"px");
	$("#butright").css("top",totalh+"px");
	 
 var tt1=$("#goodspic").css("top");
      var ll1=$("#goodspic").css("left");
      tt1=parseInt(tt1.replace("px",""))+315;
      ll1=parseInt(ll1.replace("px",""));
      
      $("#left1").css("top",tt1+"px");
      $("#right1").css("top",tt1+"px");
      $("#left1").css("left",ll1+"px");
      $("#right1").css("left",(ll1+totalw+60)+"px");
		 	    	  
						     //$("#butleft").css("display","none");
							// $("#butright").css("display","none");
			    	   if(n<=num || n==-1){
					    	   	
					    	   	
						    // $("#left1").css("display","none");
							// $("#right1").css("display","none");
			    	   }

	 
	 
	 
	li.not(":first").css({left:totalw+"px"});
	li.eq(n).css({left:"-"+totalw+"px"});
	var tt=n;
	if(n>num)tt=num;
	 for(var j=0;j<tt;j++){
							var lefrun=j*alone;
							li.eq(j).css({left:lefrun+"px"});
						}
	
	var temppicbegin=$("#smallpic0").attr("src");
	$("#bigpic").attr("src",temppicbegin);
	
	
	lxfNext=function (){
			if (!li.is(":animated")) {
					if (i>=n){
						
						i=0;
						li.eq(num).css({left:totalw+"px"});
						li.eq(n).animate({left:"-"+alone+"px"},speed);
						li.eq(i).animate({left:"0px"},speed);
						 
						for(var j=i+1;j<num;j++){
							var lefrun=j*alone;
							li.eq(j).animate({left:lefrun+"px"},speed);
						}
						
						var temppic="";
						temppic=$("#smallpic"+i).attr("src");
						$("#bigpic").attr("src",temppic);
						
					 
					}else{
						i++;
						
						
						if(i+num>n){
							var j=i+num;
								if(j>n)j=j-n-1;
								li.eq(j).css({left:totalw+"px"});
						}else{
							var j=i+num
							li.eq(j).css({left:totalw+"px"});
						}
						
						li.eq(i-1).animate({left:"-"+alone+"px"},speed);
						li.eq(i).animate({left:"0px"},speed);
						var ii=1;
						for(var j=i+1;j<i+num;j++){
							var lefrun=ii*alone;
							var jj=j;
							if(i+num>n+1){
								if(jj>n)jj=j-n-1;
							}
							li.eq(jj).animate({left:lefrun+"px"},speed);
							ii++;
						}
						var temppic=$("#smallpic"+i).attr("src");
				        $("#bigpic").attr("src",temppic);
						 
					}
					
							changimgsize();
					
			}
	}
	
	lxfLast=function (){
		if (!li.is(":animated")) {
			if (i<=0){
				//i--; 
			 	i=n;
				var ii=num;
				for(var j=(num-1);j>=0;j--){
							var lefrun=ii*alone;
							li.eq(j).animate({left:lefrun+"px"},speed);
							ii--;
						}
						
				li.eq(i).animate({left:"0px"},speed);
				li.eq(i-1).css({left:"-"+alone+"px"});
				//for(var j=n;j>(n+i+1);j--){
				//			var lefrun=ii*alone;
				//			li.eq(j).animate({left:lefrun+"px"},speed);
				//			ii--;
				//		}
			
				//for(var j=i+num;j<=(n+i+1);j++){
				//		li.eq(j).css({left:"-"+totalw+"px"});
				//}
				
				
				//if(i+num==0)i=n-num+1;
				
				var temppic=$("#smallpic"+(n+i+1)).attr("src");
				$("#bigpic").attr("src",temppic);
		 
			}else{
				i--; 
			 			if(i==0){
							li.eq(n).css({left:"-"+alone+"px"});
						}else{
							li.eq(i-1).css({left:"-"+alone+"px"});
						}
						
				
				var ii=num;
				for(var j=(i+num);j>i;j--){
							var lefrun=ii*alone;
							var jj=j;
							if(i+num>=n+1){
								if(jj>n)jj=j-n-1;
							}
							li.eq(jj).animate({left:lefrun+"px"},speed);
							ii--;
						}
				li.eq(i).animate({left:"0px"},speed);
				//for(var j=0;j<i;j++){
				//		li.eq(j).css({left:"-"+totalw+"px"});
				//}
				//for(var j=i+num;j<=n;j++){
				//		li.eq(j).css({left:"-"+totalw+"px"});
				//}
				var temppic=$("#smallpic"+i).attr("src");
				$("#bigpic").attr("src",temppic);
				
				 		
			}
			
							changimgsize();
			//$("i").text(i+1);
	    }
	}
});