	 function selectpagetest(page){	
	 var pagechoose=page.id;
	 
	alert(pagechoose);
	
	} 
	
	
	function selectpage(page,path,pageforstr){	
	//pageforstr='membercenter';
 
	 var pagechoose=page.id; 
	 var divs= new Array();
       for(var i=0;i<2;i++){
       	divs[i]=new Array();
       }
        
       divs[0][0]="choosepage";
       divs[0][1]="pagefor="+pageforstr+"&pagechoose="+pagechoose.toString();
       divs[0][2]="goodsorder";
       divs[0][3]=path+"/member/member_showpagelineWeiXin.do";  
        
      
       if(pageforstr=='membercenter'){
	       divs[1][0]="goodsorderlist";  
	       divs[1][1]="pagefor="+pageforstr+"&pagechoose="+pagechoose.toString();			
	       divs[1][2]="goodsorderlist";  
	       divs[1][3]=path+"/member/member_membergoodsorderlistWeiXin.do";  
       }else{
	       divs[1][0]="goodsbuycartlist";  
	       divs[1][1]="pagechoose="+pagechoose.toString();			
	       divs[1][2]="goodsorderlist";  
	       divs[1][3]=path+"/member/member_goodscartlistWeiXin.do";  
          
      }
		   
		       for(var i=0;i<divs.length;i++){
		        	 		XMLAjax(divs[i][3] ,divs[i][1],divs[i][0],sendseccess);
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

	


	