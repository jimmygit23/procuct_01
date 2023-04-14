function   getcss(divstr){
			     
			     	var CSSstr="";
			 		var str="";
					   
					     var namestr=["left",
					     				"top",
									     "width",
									     "height"];  
					     
					     
								     for(var ii=0;ii<namestr.length;ii++){
								            var temp=$("#"+divstr).css(namestr[ii]); 
								             
								     		if(temp!="undefined" && temp!=undefined   ){
									     		var temppx=temp;
									     		temppx=temppx.substr(temppx.length-2,2);
									     
									     		if(temppx=="px" && ($.trim(namestr[ii])=="width" || $.trim(namestr[ii])=="height")){
										     		
										     		temp=parseInt(temp.replace("px",""));
									     			}
									     		if(temppx=="px" && ($.trim(namestr[ii])=="left" || $.trim(namestr[ii])=="top")){
										     		
										     		temp=parseInt(temp.replace("px",""));
									     			}
									     
									     		
									     			if(namestr[ii]=="left") str=str+"&divl="+temp;
									     			if(namestr[ii]=="top") str=str+"&divt="+temp;
									     			if(namestr[ii]=="width") str=str+"&divw="+temp;
									     			if(namestr[ii]=="height") str=str+"&divh="+temp;
								     		}
									     	
								     	}
							     	
							     	CSSstr=str;
						     	
					     
					    
					 
			    		
			    		return CSSstr;
     }
     function   getcss_showgoods(divstr){
			     
			     	var CSSstr="";
			 		var str="";
					   
					     var namestr=["left",
					     				"top",
									     "width",
									     "height"];  
					     
					     
								     for(var ii=0;ii<namestr.length;ii++){
								            var temp=$("#"+divstr).css(namestr[ii]); 
								             
								     		if(temp!="undefined" && temp!=undefined   ){
									     		var temppx=temp;
									     		temppx=temppx.substr(temppx.length-2,2);
									     
									     		if(temppx=="px" && ($.trim(namestr[ii])=="width" || $.trim(namestr[ii])=="height")){
										     		
										     		temp=parseInt(temp.replace("px",""))-2;
									     			}else if(temppx!="px" && ($.trim(namestr[ii])=="width" || $.trim(namestr[ii])=="height")){
										     		
										     		temp=parseInt(temp.replace("px",""))-2;
									     			}
									     		if(temppx=="px" && ($.trim(namestr[ii])=="left" || $.trim(namestr[ii])=="top")){
										     		
										     		temp=parseInt(temp.replace("px",""));
									     			}
									     
									     		
									     			if(namestr[ii]=="left") str=str+"&divl="+temp;
									     			if(namestr[ii]=="top") str=str+"&divt="+temp;
									     			if(namestr[ii]=="width") str=str+"&divw="+temp;
									     			if(namestr[ii]=="height") str=str+"&divh="+temp;
								     		}
									     	
								     	}
							     	
							     	CSSstr=str;
						     	
					     
					    
					 
			    		
			    		return CSSstr;
     }