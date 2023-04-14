	 function selectpagetest(page){	
	 var pagechoose=page.id;
	 
	alert(pagechoose);
	
	} 
	
	
	function selectpage(page,path){	
  
	 var pagechoose=page.id; 
	 var divs= new Array();
       for(var i=0;i<2;i++){
       	divs[i]=new Array();
       }
        if(document.getElementById('pagechoose')){
        document.getElementById('pagechoose').value=pagechoose.toString();
        }
       divs[0][0]="choosepage";
       divs[0][1]="pagechoose="+pagechoose.toString();
       divs[0][2]="goodsorder";
       divs[0][3]=path+"/goods/goods_lookphotopageline.do";  
        
    
       divs[1][0]="lookphotolist";  
       divs[1][1]="pagechoose="+pagechoose.toString();			
       divs[1][2]="goodslist";  
       divs[1][3]=path+"/goods/goods_lookphotolist.do";  
       
		   
		       for(var i=0;i<divs.length;i++){
		        	 		XMLAjax(divs[i][3] ,divs[i][1],divs[i][0],sendseccess);
		        	 }
		   	 
		$(".goodsorder div").css("background-color","#FCFCFC");
		$(".goodsorder div").css("border","1px solid #bebebe");
		$(".goodsorder div").css("font-size","14px");
		$(".goodsorder div").css("padding","3px");
	    
		$(".goodsorder div.nowpage").css("background-color","white");
		$(".goodsorder div.nowpage").css("border","1px solid #bebebe");
		$(".goodsorder div.nowpage").css("color","#FF4400");
		$(".goodsorder div.nowpage").css("font-color","#bebebe");
		$(".goodsorder div.nowpage").css("font","center");
		$(".goodsorder div.nowpage").css("text-align","center");
		
		 
		$(".goodsorder div.pagenumber").css("background-color","#FF4400");
		$(".goodsorder div.pagenumber").css("cursor","pointer");
		$(".goodsorder div.pagenumber").css("color","white");  	
		
		if(showtype=='A'){ 
     		$(".typedel").css("visibility","visible");
     		$(".typedel").css("border","1px solid #bebebe");
     	$(".typedel").css("cursor","pointer");
    	 }  
    	 
    	 
     } 
  
///////////////////////for jquery and not show itself page with ajax ///////////////////////
/*
function selectpage(page){	
alert("selectpage(page) is the overload function for url to choose page.");
} 
$(".pagenumber").click(function(){
var t=$(this).text();
selectpage(t);
});*/
////////////////////////////////////////////////////////////////////////////////////////////

	


	