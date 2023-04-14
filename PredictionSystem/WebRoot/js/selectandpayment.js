
function selectTotal(str){
		   var name=str;
		   var o=document.getElementsByName(name);
		    var tmun=parseInt(0);
         	var tmony=parseFloat(0);
		    var theavy=parseFloat(0.0);
		   var strmun="";
		   var strmoney="";
		   var strtmoney="";
		   var strtdocips="";
		   
		  for(var i=0;i<o.length;i++){
			   	if(o[i].checked==true){
			   		var tt=o[i].value;
			      	var tn=document.getElementById("txtMount"+tt).value;
        			var tm=document.getElementById("hiddenmoney"+tt).value;
        			var docip=document.getElementById("docip"+tt).value;
        			var th=document.getElementById("txtheavy"+tt).value;
        			
        			tmun=tmun+parseInt(tn);
        			tmony=tmony+parseInt(tn)*parseFloat(tm);
        			strmun=strmun+","+tn;
        			strmoney=strmoney+","+tm;
        			strtmoney=strtmoney+","+parseInt(tn)*parseFloat(tm);
        			strtdocips=strtdocips+","+docip;
        			theavy=theavy+parseInt(tn)*parseFloat(th);
			    }
		   }
		   
         document.getElementById("totalmount").value=tmun;
         document.getElementById("totalmoney").value=tmony;
         document.getElementById("colnum").value=strmun.replace(",","");
         document.getElementById("colm").value=strmoney.replace(",","");
         document.getElementById("coltm").value=strtmoney.replace(",","");
         document.getElementById("coldocips").value=strtdocips.replace(",","");
         document.getElementById("weight").value=theavy;
   
      express_submit();
  }
  
  
   function selectAll3(strAll){
	   var Allval=strAll.checked;
	   var Allval1=strAll.disabled;
	   var name=strAll.name;
	   var id=strAll.id;
	   var o=document.getElementsByName(name.replace("All",""));
	   var o1=document.getElementsByName(name);
	  var o2=$('#'+id).attr('class');
 	var iii=0;
 	   
		   for(var i=0;i<o.length;i=i+1){
		    var ox=o[i].id;
		 	var ox_=$('#'+ox).attr('class');
		    	if( o[i].disabled==false && o2.indexOf(ox_)>-1){
				   	if(Allval==true){
				       o[i].checked=true;
				       iii++;
				    }else{
				    	o[i].checked=false;
				    }
				 }
		   }
	 	 if(Allval==true)alert("you choose "+iii+" items!");
		 if(Allval==true && Allval1==false){
			for(var i=0;i<o1.length;i=i+1){
			    var ox1=o1[i].id;
			    if( ox1!=id){
					       o1[i].disabled=true;
					    //   eval('document.getElementById("payment'+ox1.replace("colnameAll","")+'").disabled=true;')
				}else{
					       o1[i].disabled=false;
					    //   eval('document.getElementById("payment'+ox1.replace("colnameAll","")+'").disabled=false;')
			 
				} 
		   }
		  }
	   
		  if(Allval!=true && Allval1==false){
				for(var i=0;i<o1.length;i=i+1){
					       o1[i].disabled=false;
		   		}
		  }
	  
    }
     
    function selectAll(strAll){

	   var Allval=strAll.checked;
	   var name=strAll.name;
	   var o=document.getElementsByName(name.replace("All",""));
	   var o1=document.getElementsByName(name);
	 	var total=0;
	   for(var i=0;i<o.length;i++){
	    if( o[i].disabled==false){
			   	if(Allval==true){
			       o[i].checked=true;
			       total++;
			    }else{
			    	o[i].checked=false;
			    }
			 }
	   }
	 selectTotal=total;
		 var obj=document.getElementById('allchoose');
		 if(obj){
		 	document.getElementById('allchoose').value="("+total+")";
					 	if(total>0){
						 //$("#payment").css("disabled","false");
	        	   			$("#payment").attr("src",path+"/backpicimg/anjian-5.png");
						}else{ 
						// $("#payment").css("disabled","true");
	        	   			$("#payment").attr("src",path+"/backpicimg/anjian-6.png");
						}
		 }
		 
		  var obj=document.getElementById('payment1');
		 if(obj){
		 		if(total>0){
	        	   			$("#payment1").attr("src",path+"/backpicimg/anjian-3.png");
						}else{ 
	        	   			$("#payment1").attr("src",path+"/backpicimg/anjian-4.png");
						}
		 }
		 var obj=document.getElementById('payment2');
		 if(obj){
		 		if(total>0){
	        	   			$("#payment2").attr("src",path+"/backpicimg/anjian-1.png");
						}else{ 
	        	   			$("#payment2").attr("src","");
						}
		 }

     }
     function selectAll2(strAll){

	   var Allval=strAll.checked;
	   var name=strAll.name;
	   var o=document.getElementsByName(name.replace("All",""));
	   var o1=document.getElementsByName(name);
	 
	   for(var i=0;i<o.length;i++){
	   	if(Allval==true){
	       o[i].checked=true;
	    }else{
	    	o[i].checked=false;
	    }
	   }
	   selectTotal('colname');

     }
	var selectTotal=0;
	function selectThis(selectid){

			var Allval=false;
			var Thisval=false;
			Thisval=selectid.checked;
			 var o=document.getElementsByName("colnameAll");
			Allval=o[0].checked;
			if(Allval==true && Thisval==false){
				o[0].checked=false;
				 
							
			}
			if(Thisval==false){
				selectTotal--;		
			}else{
				selectTotal++;
			}
				 
			 var obj=document.getElementById("payment1");
			if(obj){
					 		if(selectTotal>0){
				        	   			$("#payment1").attr("src",path+"/backpicimg/anjian-3.png");
							}else{ 
				        	   			$("#payment1").attr("src",path+"/backpicimg/anjian-4.png");
							}
					 }
			 var obj=document.getElementById('payment2');
			 if(obj){
					 		if(selectTotal>0){
				        	   			$("#payment2").attr("src",path+"/backpicimg/anjian-1.png");
							}else{ 
				        	   			$("#payment2").attr("src","");
							}
			 }
			
			if(Thisval==true ){
				var obj=document.getElementById('allchoose'); 
				 if(obj){
					var objval=parseInt(obj.value.replace("(","").replace(")",""));
				 	document.getElementById('allchoose').value="("+(objval+1)+")";
				 	if(objval>=0){
					 //$("#payment").css("disabled","false");
        	   			$("#payment").attr("src",path+"/backpicimg/anjian-5.png");
					}else{ 
					 //$("#payment").css("disabled","true");
        	   			$("#payment").attr("src",path+"/backpicimg/anjian-6.png");
					}
				 }
		 	}else{
		 		var obj=document.getElementById('allchoose');
				 if(obj){
					var objval=parseInt(obj.value.replace("(","").replace(")",""));
				 	document.getElementById('allchoose').value="("+(objval-1)+")";
				 	if(objval>1){
					 $("#payment").css("disabled","false");
					}else{ 
					 $("#payment").css("disabled","true");
					}
				 }
		 	}

     }
     function selectThis2(selectid){
			var Allval=false;
			var Thisval=false;
			Thisval=selectid.checked;
			 var o=document.getElementsByName("colnameAll");
			Allval=o[0].checked;
			if(Allval==true && Thisval==false){
				o[0].checked=false;
				
			}
			
			var tt=selectid.id;
			var tt1=$("#"+tt).attr("class");
			var obj = document.getElementById("destination"); 
					for(var i=0;i<obj.length;i++){
						var value = obj.options[i].value; 	
						if(value==tt1){
							obj.selectedIndex=i;
							document.getElementsByName("colnameAll");
							
							break;
						}
					}
			
			selectTotal('colname');
			
			
			var tempid=$("#"+tt).val();
			var tempval=$("#readdress"+tempid).val();
			$("#showreaddress").val(tempval); 
     }
          function selectThis3(selectid){
			var Allval=false;
			var Thisval=false;
			Thisval=selectid.checked;
			 var o=document.getElementsByName("colnameAll");
			Allval=o[0].checked;
			if(Allval==true && Thisval==false){
				o[0].checked=false;
				
			}
			
			var tt=selectid.id;
			var tt1=$("#"+tt).attr("class");
			var obj = document.getElementById("destination"); 
					for(var i=0;i<obj.length;i++){
						var value = obj.options[i].value; 	
						if(value==tt1){
							obj.selectedIndex=i;
							document.getElementsByName("colnameAll");
							
							break;
						}
					}
			
			selectTotal('colname');
			
			
			//var tempid=$("#"+tt).val();
			//var tempval=$("#readdress"+tempid).val();
			//$("#showreaddress").val(tempval); 
     }
     function DefautAddreSelect(selectid){
			var tt="";
			var obj1 = document.getElementsByName(selectid); 
			for(var i=0;i<obj1.length;i++){
					Allval=obj1[i].checked;
					if(Allval==true){
						 tt=obj1[i].id;
					}
			}
		//	alert(tt);

			var tt1=$("#"+tt).attr("class");
			var obj = document.getElementById("destination"); 
					for(var i=0;i<obj.length;i++){
						var value = obj.options[i].value; 	
						if(value==tt1){
							obj.selectedIndex=i;
							break;
						}
					}
			 

     }
     
     function dopayment(strAll,pathstr,dotype){
      
      if(dotype=='F'){
      
      }
      
	   var Allval=false;
	   var temp="0";
	   //var temp1=0;
	   var tempstar="";
      if(dotype=='F'){
      	tempstar="&tab_flag4="+setstars_num;
      }
	   if(isNaN(strAll)){
			   var o=document.getElementsByName(strAll);
			   for(var i=0;i<o.length;i++){
			   		Allval=o[i].checked;
				   	if(Allval==true){
				   		
				   		//temp1=changeMD(o[i].value);
				   		//temp+=","+temp1;
				   		var temp1=o[i].value;
						var temp2=temp1.toString(); 
				        temp+=","+temp2;
				    }
			   } 
			 
	   }else{

		    temp="0,"+strAll;
	   }
	 	  
  
 		 var obj=document.getElementById('allchoose'); 
		if(obj){
					var objval=parseInt(obj.value.replace("(","").replace(")",""));
				 	if(objval>0 || dotype=="F" || dotype=="D"){
				 	
						window.location.href=pathstr+"?tab_flag="+temp+"&tab_flag3="+dotype+tempstar;
	 	 			}
	 	 }else{
	 	 	if(selectTotal>0 || dotype=="F" || dotype=="D" || dotype=="A" || dotype=="C" || dotype=="E"){ 
 
			window.location.href=pathstr+"?tab_flag="+temp+"&tab_flag3="+dotype+tempstar;
			}
	 	 }
     }
    
    function dopayment2(strAll,pathstr,dotype){
    var taddress=document.getElementById("showreaddress").value;
   
    if(taddress!=""){
	   selectTotal('colname');
	   var Allval=false;
	   var o=document.getElementsByName(strAll);
	   var temp="0";
	    var temp1=0;
	   var temp_2="0";
	   var temp_21="0";
	   for(var i=0;i<o.length;i++){
	   		Allval=o[i].checked;
		    var ox=o[i].id;
		 	var ox_=$('#'+ox).attr('class');
		   	if(Allval==true){
		   		
		   		//temp1=changeMD(o[i].value);
		   		//temp+=","+temp1;
		   		var temp1=o[i].value;
				var temp2=temp1.toString(); 
		        temp+=","+temp2;
		         
		        temp_2+=","+ox_;
		    }
	   }
	    
	   var o1=document.getElementById("colnum").value;
	   var o2=document.getElementById("colm").value;
	   var o3=document.getElementById("coltm").value;
	   var o4=document.getElementById("totalmount").value;
	   var o5=document.getElementById("totalmoney").value;
	   var o6=document.getElementById("coldocips").value;
	   
	   
	   var o7=document.getElementById("weight").value;
	   var obj = document.getElementById("companys"); 
		var index = obj.selectedIndex; 
		var text = obj.options[index].text; 
	   var o8=text;
	   var o9=document.getElementById("price1").value;
	   
	   
	   var addr=document.getElementsByName("seladdress");
	     var intHot='';
			  for(var i=0;i<addr.length;i++)
			  {
			     if(addr[i].checked)
			            intHot = addr[i].value;
			  }
			  
		  	if(parseInt(intHot)>0){
		  		 $("#addrewaring").css("display","none");
			   window.location.href=pathstr+"?tab_flag0="+temp_2+"&tab_flag="+temp+"&tab_flag3="+dotype+"&tab_flag4="+o1+"&tab_flag5="+o2+"&tab_flag6="+o3+"&tab_flag7="+o4+"&tab_flag8="+o5+"&tab_flag10="+o6+"&tab_flag9="+intHot+"&tab_flag11="+o7+"&tab_flag12="+o8+"&tab_flag13="+o9;
			 }else{
			 	  $("#addrewaring").css("display","block");
			 	    movediv();
			 }
		}else{
			
			$("#addrewaring").css("display","block");
		}
     } 
	function changeMD(instr){
		var temp=instr;
		temp=(temp+1)*3;
		var temp1=temp.toString();
		if(temp1.substring(0,1)=='1')temp1='A'+temp1.substring(1,temp1.length);
		if(temp1.substring(0,1)=='2')temp1='C'+temp1.substring(1,temp1.length);
		if(temp1.substring(0,1)=='3')temp1='Z'+temp1.substring(1,temp1.length);
		if(temp1.substring(0,1)=='4')temp1='L'+temp1.substring(1,temp1.length);
		if(temp1.substring(0,1)=='5')temp1='!'+temp1.substring(1,temp1.length);
		if(temp1.substring(0,1)=='6')temp1='~'+temp1.substring(1,temp1.length);
		if(temp1.substring(0,1)=='7')temp1='B'+temp1.substring(1,temp1.length);
		if(temp1.substring(0,1)=='8')temp1='K'+temp1.substring(1,temp1.length);
		if(temp1.substring(0,1)=='9')temp1='?'+temp1.substring(1,temp1.length);
		return temp1;
     }
     
     function selectThiscen(selectid){
	
			var Allval=false;
			var Thisval=false;
			Thisval=selectid.checked;
			 var o=document.getElementsByName("colnameAll");
			 
	   for(var i=0;i<o.length;i++){
			Allval=o[i].checked;
			if(Allval==true && Thisval==false){
				o[i].checked=false;
				 
							
			}
		}
			if(Thisval==false){
				selectTotal--;		
			}else{
				selectTotal++;
			}
				 
			
			 

     }
function dopaymentcen(strAll,pathstr,dotype){
      
      if(dotype=='F'){
      
      }
      
	   var Allval=false;
	   var temp="0";
	   //var temp1=0;
	   var tempstar="";
      if(dotype=='F'){
      	tempstar="&tab_flag4="+setstars_num;
      }
	   if(isNaN(strAll)){
			   var o=document.getElementsByName(strAll);
			   for(var i=0;i<o.length;i++){
			   		Allval=o[i].checked;
				   	if(Allval==true){
				   		
				   		//temp1=changeMD(o[i].value);
				   		//temp+=","+temp1;
				   		var temp1=o[i].value;
						var temp2=temp1.toString(); 
				        temp+=","+temp2;
				    }
			   } 
			 
	   }else{

		    temp="0,"+strAll;
	   }
	 	  //alert(pathstr+"?tab_flag="+temp+"&tab_flag3="+dotype+tempstar);
  		window.location.href=pathstr+"?tab_flag="+temp+"&tab_flag3="+dotype+tempstar;
     }
     
 function selectAllcen(strAll){
	   var Allval=strAll.checked;
	   var Allval1=strAll.disabled;
	   var name=strAll.name;
	   var id=strAll.id;
	   var o=document.getElementsByName(name.replace("All",""));
	   var o1=document.getElementsByName(name);
	  var o2=$('#'+id).attr('class');
 	var iii=0;
 	   
		   for(var i=0;i<o.length;i=i+1){
		    var ox=o[i].id;
		 	var ox_=$('#'+ox).attr('class');
		   var tempdone=eval('document.getElementById("hidden'+ox.replace("colname","")+'").value;')
		 
		    	if( o[i].disabled==false && o2.indexOf(ox_)>-1){
				   	if(Allval==true && tempdone!="T"){
				       o[i].checked=true;
				       iii++;
				    }else{
				    	o[i].checked=false;
				    }
				 }
		   }
	 	 if(Allval==true)alert("you choose "+iii+" items!");
		 if(Allval==true && Allval1==false){
			for(var i=0;i<o1.length;i=i+1){
			    var ox1=o1[i].id;
			    if( ox1!=id){
					       o1[i].disabled=true;
					       eval('document.getElementById("payment'+ox1.replace("colnameAll","")+'").disabled=true;')
				}else{
					       o1[i].disabled=false;
					       eval('document.getElementById("payment'+ox1.replace("colnameAll","")+'").disabled=false;')
			 
				} 
		   }
		  }
	   
		  if(Allval!=true && Allval1==false){
				for(var i=0;i<o1.length;i=i+1){
					       o1[i].disabled=false;
		   		}
		  }
	  
    }
     