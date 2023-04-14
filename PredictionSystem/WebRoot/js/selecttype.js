 function selecttype(str,path){
       
		        	 var divs= new Array();
				       for(var i=0;i<2;i++){
				       	divs[i]=new Array();
				       }
				     
			        	divs[0][0]="goodstypelist";  
				        divs[0][1]=str+"&goodsip=-1";			
				        divs[0][2]="goodstype";  
				        divs[0][3]=path+"goods/goods_goodstypelist.do";   
			       
			           divs[1][0]="goodslist";  
				       divs[1][1]=str+"&goodsip=-1";			
				       divs[1][2]="goodslist"; 
				       divs[1][3]=path+"goods/goods_goodslist.do";    
				         
		             for(var i=0;i<divs.length;i++){
		        	 		XMLAjax(divs[i][3] ,divs[i][1],divs[i][0],sendseccess);
		        	 		 
		        	 }
	 }
   function selecttype(str,path,strid){

		        	 var divs= new Array();
				       for(var i=0;i<3;i++){
				       	divs[i]=new Array();
				       }
			        	divs[0][0]="goodstypelist";  
				        divs[0][1]=str+"&goodsip=-1";			
				        divs[0][2]="goodstype";  
				        divs[0][3]=path+"goods/goods_goodstypelist.do";  
			       
			           divs[1][0]="goodslist";  
				       divs[1][1]=str+"&goodsip=-1&pagechoose=1";			
				       divs[1][2]="goodslist"; 
				       divs[1][3]=path+"goods/goods_goodslist.do";  
				       
				       divs[2][0]="choosepage";
				       divs[2][1]=str+"&goodsip=-1&pagechoose=1";
				       divs[2][2]="goodsorder";
				       divs[2][3]="<%=path%>/goods/goods_showpageline.do";  
		             for(var i=0;i<divs.length;i++){
		        	 		XMLAjax(divs[i][3] ,divs[i][1],divs[i][0],sendseccess);
		        	 }
		        	 
		        	 
		        	 var templines=$(".typeline");
			         var templineid="";
			         var templineW=0;
			         var templineT=10;
			         for(var i=0;i<templines.length;i++){
			            templineid=templines[i].id;
			            var ttt=$("#"+templineid).css("width");
			            templineW=parseInt($("#"+templineid).css("width").replace("px",""));
			            $("#"+templineid).css("left",templineT+"px");
			            templineT=templineT+templineW
			         }
			         if(showtype!='A'){ 
				      		$("#goodslist div").css("border","0px");
				     }
				     
				     for(var i=0;i<total;i++){
				     			$("#"+divstemp[i][0]).css("border","0px"); 
				     			$("#"+divstemp[i][0]+" div").css("border","0px"); 
				      }
		
		     	      
	 }     