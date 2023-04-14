window.onresize = function(){
          setdivpostion();
}

function  setdivpostion(){
			     var tt= $("div");  
			     var id="";
			     var doleft=0;
			     var tempclass="";
					     for(var i=0;i<tt.length;i++){
					      id=tt[i].id;
					      tempclass=tt[i].className;
						     if(tempclass=="plan"){
						         i=tt.length;
						     }
					     }
				
				var tempw=$("#"+id).css("width");
				var templ=$("#"+id).css("left");
			    //var fullwidth=document.body.clientWidth;
			    var fullwidth=window.screen.width;
				var tempw1=parseInt(tempw.replace("px",""));
				var templ1=parseInt(templ.replace("px",""));
		        var fullwidth1=parseInt(String(fullwidth).replace("px",""));
		        var temppare=parseInt((fullwidth1-tempw1)/2)-templ1;
		        	 for(var i=0;i<tt.length;i++){
					      id=tt[i].id; 
					      tempclass=tt[i].className;       
					      if(tempclass=='showdivitems' || tempclass=='plan' || tempclass=='pic'  
					      	|| tempclass=='price' || tempclass=='description' || tempclass=='goodstype'|| tempclass=='goodsorder'|| tempclass=='goods'
					      	|| tempclass=='timeline' || tempclass=='goodsorder' || tempclass=='goodsorderlist'
					      	 || tempclass=='goodsadress'  || tempclass=='GBbutton' || tempclass=='table'
					      	 || tempclass=='searchtxt' || tempclass=='buttons'
					      	 
					      	){
							      var templ_1=$("#"+id).css("left");
							      var templ_11=parseInt(String(templ_1).replace("px",""));
							      		if(templ_11=='auto'){
							      			doleft=0;
							      		}else{
							      			doleft=templ_11;
							      		}
						      
								      if(!isNaN(doleft)){
								     // alert(id+","+(temppare+doleft));
								       	$("#"+id).css("left",(temppare+doleft)+"px");
								       }
						       		doleft=0;
					     		}	
					     		
					     	tempclass=tt[i].className;
					     	 var logintypeforposin= document.getElementById('logintype').value;
					     	
						    // if(tempclass=="plan" && logintypeforposin !="A"  ){
						     if(tempclass=="plan" && logintypeforposin !="A"  ){
						         $("#"+id).css("width",fullwidth);
						         $(".toplans").css("width",fullwidth);
						         $("#"+id).css("left","0px");
						     }
			    				
			    				
					     }
		return 	temppare;					
     }
     
     
     
     
    