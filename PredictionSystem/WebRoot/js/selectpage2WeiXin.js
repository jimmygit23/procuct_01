	 function selectpagetest(page){	
	 var pagechoose=page.id;
	 
	alert(pagechoose);
	
	} 
	
	function selectpage(page,path,pageforstr,linetype){	
 alert("aa");
  		var str="";
  		var strtypelevel="";
  		var searchstr="";
	 	var brandstr="";
	 var pagechoose=page.id; 
	 var divs= new Array();
       for(var i=0;i<2;i++){
       	divs[i]=new Array();
       }
       if(document.getElementById('searchid')){
        searchstr=document.getElementById('searchid').value;
        }
        if(document.getElementById('pagechoose')){
        document.getElementById('pagechoose').value=pagechoose.toString();
        }
        if(document.getElementById('typestr1')){
         str=document.getElementById('typestr1').value;
        }
        if(document.getElementById('typelevel')){
         strtypelevel=document.getElementById('typelevel').value;
        }
        if(document.getElementById('brandstr')){
         brandstr=document.getElementById('brandstr').value;
        }
        if("null"==brandstr)brandstr="";
        
       divs[0][0]="choosepage";
       divs[0][1]="brandstr="+brandstr+"&searchid="+searchstr+"&goodslevel="+strtypelevel+"&str="+str+"&pagefor="+pageforstr+"&pagechoose="+pagechoose.toString();
       divs[0][2]="goodsorder";
       divs[0][3]=path+"/goods/goods_showpagelineWeiXin.do";  
        
    
       divs[1][0]="goodslist";  
       divs[1][1]="brandstr="+brandstr+"&searchid="+searchstr+"&goodslevel="+strtypelevel+"&str="+str+"&pagechoose="+pagechoose.toString();			
       divs[1][2]="goodslist";  
       divs[1][3]=path+"/goods/goods_goodslistWeiXin.do";  
          
      
		   
		       for(var i=0;i<divs.length;i++){
		             		var obj=document.getElementById('searchtypestr');
		             			if(obj){
		             				searchtypestr=document.getElementById('searchtypestr').value;
		      				 		 divs[i][1]= divs[i][1]+"&searchtypestr="+searchtypestr;
		             			}
		        	 		XMLAjax(divs[i][3] ,divs[i][1],divs[i][0],sendseccess);
		        	 }
		   	 
		  	 
     } 
  
  
  
  
   
     function selectpageBySearch(path,pageforstr,linetype){	

  		var str="";
  		var strtypelevel="";
	 	var pagechoose=1;
	 	var searchstr="";
	 $("#showwait").css("display","block");
     	
        setTimeout(function(){
				$("#showwait").css("display","none");
        picunload();
        $(document).scrollTop(0);	 
	 var divs= new Array();
       for(var i=0;i<2;i++){
       	divs[i]=new Array();
       }
       
       if(document.getElementById('searchid')){
        searchstr=document.getElementById('searchid').value;
        }
        if(document.getElementById('pagechoose')){
        document.getElementById('pagechoose').value=pagechoose.toString();
        }
        if(document.getElementById('typestr1')){
         str=document.getElementById('typestr1').value;
        }
        if(document.getElementById('typelevel')){
         strtypelevel=document.getElementById('typelevel').value;
        }
       divs[0][0]="choosepage";
       divs[0][1]="searchid="+searchstr+"&goodslevel="+strtypelevel+"&str="+str+"&pagefor="+pageforstr+"&pagechoose="+pagechoose.toString();
       divs[0][2]="goodsorder";
       divs[0][3]=path+"/goods/goods_showpagelineWeiXin.do";  
        
    
       divs[1][0]="goodslist";  
       divs[1][1]="searchid="+searchstr+"&goodslevel="+strtypelevel+"&str="+str+"&pagechoose="+pagechoose.toString();			
       divs[1][2]="goodslist";  
       divs[1][3]=path+"/goods/goods_goodslistWeiXin.do";  
       
		   
		       for(var i=0;i<divs.length;i++){
		             		var obj=document.getElementById('searchtypestr');
		             			if(obj){
		             				searchtypestr=document.getElementById('searchtypestr').value;
		      				 		 divs[i][1]= divs[i][1]+"&searchtypestr="+searchtypestr;
		             			}
		        	 		XMLAjax(divs[i][3] ,divs[i][1],divs[i][0],sendseccess);
		        	 }
		   	 
		  		 
		},500);
 
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

	


	