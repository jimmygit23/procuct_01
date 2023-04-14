	 function selectpagetest(page){	
	 var pagechoose=page.id;
	 
	alert(pagechoose);
	
	} 
	
	
	function selectpage(page,path,pageforstr,linetype){	
	//pageforstr='membercenter';
 
	 var pagechoose=page.id; 
	 	var searchstr="";
	 var divs= new Array();
       for(var i=0;i<2;i++){
       	divs[i]=new Array();
       }
        
       if(document.getElementById('searchid')){
        searchstr=document.getElementById('searchid').value;
        }
       divs[0][0]="choosepage";
       divs[0][1]="searchid="+searchstr+"&pagefor="+pageforstr+"&pagechoose="+pagechoose.toString();
       divs[0][2]="goodsorder";
       divs[0][3]=path+"/member/member_showpageline.do?linetype="+linetype;  
      
      
       if(pageforstr=='membercenter'){
	       divs[1][0]="goodsorderlist";  
	       divs[1][1]="searchid="+searchstr+"&pagefor="+pageforstr+"&pagechoose="+pagechoose.toString();			
	       divs[1][2]="goodsorderlist";  
	       divs[1][3]=path+"/member/member_admingoodsorderlist.do";  
       }else{
	       divs[1][0]="goodsbuycartlist";  
	       divs[1][1]="searchid="+searchstr+"&pagechoose="+pagechoose.toString();			
	       divs[1][2]="goodsorderlist";  
	       divs[1][3]=path+"/member/member_goodscartlist.do";  
          
      }
		   
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
	//pageforstr='membercenter';
 	$("#showwait").css("display","block");
        setTimeout(function(){
				$("#showwait").css("display","none");
        picunload();
        $(document).scrollTop(0);
	 	var searchstr="";
	 var pagechoose=1; 
       if(document.getElementById('searchid')){
        searchstr=document.getElementById('searchid').value;
        }
	 var divs= new Array();
       for(var i=0;i<2;i++){
       	divs[i]=new Array();
       }
        
       divs[0][0]="choosepage";
       divs[0][1]="searchid="+searchstr+"&pagefor="+pageforstr+"&pagechoose="+pagechoose.toString();
       divs[0][2]="goodsorder";
       divs[0][3]=path+"/member/member_showpageline.do?linetype="+linetype;  
        
 
      
       if(pageforstr=='membercenter'){
	       divs[1][0]="goodsorderlist";  
	       divs[1][1]="searchid="+searchstr+"&pagefor="+pageforstr+"&pagechoose="+pagechoose.toString();			
	       divs[1][2]="goodsorderlist";  
	       divs[1][3]=path+"/member/member_admingoodsorderlist.do";  
       }else{
	       divs[1][0]="goodsbuycartlist";  
	       divs[1][1]="searchid="+searchstr+"&pagechoose="+pagechoose.toString();			
	       divs[1][2]="goodsorderlist";  
	       divs[1][3]=path+"/member/member_goodscartlist.do";  
          
      }
		   
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

	


	