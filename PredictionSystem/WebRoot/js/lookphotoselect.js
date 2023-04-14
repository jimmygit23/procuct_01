$(function(){
    //$("#lxfscroll").css("width","300px");
	//$("#lxfscroll").css("height","80px");
	var num=4;
	var i=0;
	var li = $(".lxfscroll li");
	var n=li.length-1;
	var speed = 300;
	
	
	var temp=$("#lxfscroll").css("height");
	var totalh=parseInt(temp.replace("px",""));
	 temp=$("#lxfscroll").css("width");
	var totalw=parseInt(temp.replace("px",""));
	var alone=totalw/num;
	 
	$("#lxfscroll ul li").css("width",alone+"px");
	$("#lxfscroll ul li").css("height",totalh+"px");
	$("#lxfscroll ul li").css("line-height",totalh+"px");
	$(".smallpic").css("width",alone+"px");
	$(".smallpic").css("height",totalh+"px");
	 
	$("#butleft").css("width","20px");
	$("#butright").css("width","20px");
	$("#butleft").css("height",totalh/2+"px");
	$("#butright").css("height",totalh/2+"px");
	$("#butleft").css("top",totalh/2+"px");
	$("#butright").css("top",totalh/2+"px");
	 
var tt1=$("#goodspicmian").css("top");
      var ll1=$("#goodspicmian").css("left");
      tt1=parseInt(tt1.replace("px",""))+520;
      ll1=parseInt(ll1.replace("px",""));
      
      $("#left1").css("top",tt1+"px");
      $("#right1").css("top",tt1+"px");
      $("#left1").css("left",ll1+"px");
      $("#right1").css("left",(ll1+780)+"px");
		 	    	  
						     $("#butleft").css("visibility","hidden");
							 $("#butright").css("visibility","hidden");
			    	  
			    	   if((n+1)<=num || n==-1){
					    	   	
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
	
	var temppicbegin=$("#smallpic1").attr("src");
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
						 
					};
					
			};
	};
	
	lxfLast=function (){
		if (!li.is(":animated")) {
			if (i<=0){
		 
			 	i=n;
				var ii=num;
				for(var j=(num-1);j>=0;j--){
							var lefrun=ii*alone;
							li.eq(j).animate({left:lefrun+"px"},speed);
							ii--;
						}
						
				li.eq(i).animate({left:"0px"},speed);
				li.eq(i-1).css({left:"-"+alone+"px"});
				
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
				var temppic=$("#smallpic"+i).attr("src");
				$("#bigpic").attr("src",temppic);
				
				 		
			}
			
	    };
	};
});

