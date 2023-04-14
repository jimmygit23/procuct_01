//<div id="divmian" style="border-top-style:solid;border-top-width:thin; border-top-color:#C4F0FF;border-bottom-style:solid;border-bottom-width:thin; border-bottom-color:#C4F0FF;">
//<div id="datetext" style="z-index:0;"> </div> 
//<div id="dateline" style="z-index:0;"> </div> 
//</div>
 var divmain=document.getElementById('divmian');
    divmain.style.background="#EAF9FF"; 
    divmain.style.position="absolute";    
    divmain.style.width="100%"; 
    divmain.style.height="120px"; 
  var divmain=document.getElementById('dateline');
  	divmain.style.left="100px";
  	divmain.style.top="60px";
  	divmain.style.position="absolute";
  	
  var divmain=document.getElementById('datetext');
  	divmain.style.left="100px";
  	divmain.style.top="10px";
  	divmain.style.position="absolute";
 
 /////////font/////////////////
  var yyfnt="<font size=1 color='blue' face=\'Arial, sans-serif\'>";
  var yyfnt2="<font size=-2 color='B7BDBD' face=\'Arial, sans-serif\'>";
  var yyfnt3="<font size=2 color='red' face=\'Arial, sans-serif\'>";
  var yyfnt4="<font size=1 color='666666' face=\'Arial, sans-serif\'>";
  /////////font/////////////////
 var mousePosX=0;
 var amout_days=0;
 var showF=0;
 var showL=0;
 tempd=new Date(); 
 var tempd2=new Date(); 
 tempd2.setFullYear(tempd.getFullYear()-1);
 tempd.setDate(tempd.getDate()+10);
 var divv=document.getElementById('dateline');
 var divleft=Number(divv.offsetLeft);
 var divtop=Number(divv.offsetTop);
  
  var strline="<table cellspacing='0'  border='0' cellpadding='0' > ";
  strline+="<tr>";
  strline+="<td>"+yyfnt4+"&#36215;&#27490;&#26085;&#26399;:</font><input type='text' size=8 id='startdate' name='startdate' style='border:1px #C4F0FF solid;background:#ffffff;font-size:18px;color:black;'>-";
  strline+="<input type='text' size=8 id='enddate' name='enddate' style='border:1px #C4F0FF solid;background:#ffffff;font-size:18px;color:black;'></td>";
  strline+="<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>";
  strline+="<td id='td1'>&nbsp;&nbsp;<a style='cursor:pointer;' style='font-size:12px;color:666666;' onMouseOver='changedate(1);' onMouseOut='changedate(-1);'>&#20170;&#22825;</a>&nbsp;&nbsp;</td>";
  strline+="<td id='td2'>&nbsp;&nbsp;<a style='cursor:pointer;' style='font-size:12px;color:666666;' onMouseOver='changedate(2);' onMouseOut='changedate(-2);'>&#26368;&#36817;&#19977;&#20010;&#26376;</a>&nbsp;&nbsp;</td>";
  strline+="<td id='td3'>&nbsp;&nbsp;<a style='cursor:pointer;' style='font-size:12px;color:666666;' onMouseOver='changedate(3);' onMouseOut='changedate(-3);'>1&#24180;</a>&nbsp;&nbsp;</td>";
  strline+="<td id='td4'>&nbsp;&nbsp;<a style='cursor:pointer;' style='font-size:12px;color:666666;' onMouseOver='changedate(4);' onMouseOut='changedate(-4);'>1&#24180;&#21069;>></a>&nbsp;&nbsp;</td>";
  strline+="<tr></table>";
  var yyDivnote= document.getElementById("datetext");		
  yyDivnote.innerHTML=strline;
  
  
  var strline="<table cellspacing='0'  border='0' cellpadding='0' > ";
  strline+="<tr>";
  var i=0;
	  while(tempd>=tempd2){ 
	  	   var temp_year=tempd2.getFullYear();
			var temp_month=tempd2.getMonth();
			var temp_day=tempd2.getDate();
			if(temp_month==0 && temp_day==1){
				strline+="<td><a style='cursor:pointer;' onMouseOver='filldate("+temp_year+","+(temp_month+1)+","+temp_day+","+i+",0);'  onClick='filldate("+temp_year+","+(temp_month+1)+","+temp_day+","+i+",1);showgoodselect();'><img border=0 src='<%=request.getContextPath()%>/img/lineyear.gif'  ondrag='return false' alt='"+temp_year+"-"+(temp_month+1)+"-"+temp_day+"'></a>";
				strline+="<div id='"+i+"' style='left:"+ (i*2-5) +";z-index:999;top:"+(30)+";font-size:10px;position: absolute;visibility:visible;'>"+yyfnt2+ (temp_month+1)+" </font></div>";
				strline+="<div id='"+i+"' style='left:"+ (i*2-5) +";z-index:999;top:"+(-20)+";font-size:10px;position: absolute;visibility:visible;'>"+yyfnt2+ temp_year+" </font></div>";
			}else if(temp_month!=0 && temp_day==1){
				strline+="<td><a style='cursor:pointer;' onMouseOver='filldate("+temp_year+","+(temp_month+1)+","+temp_day+","+i+",0);' onClick='filldate("+temp_year+","+(temp_month+1)+","+temp_day+","+i+",1);showgoodselect();'><img border=0 src='<%=request.getContextPath()%>/img/linemonth.gif'   ondrag='return false' alt='"+temp_year+"-"+(temp_month+1)+"-"+temp_day+"'></a>";
				strline+="<div id='"+i+"' style='left:"+ (i*2-5) +";z-index:999;top:"+(30)+";font-size:10px;position: absolute;visibility:visible;'>"+yyfnt2+ (temp_month+1)+" </font></div>";
			}else{
				strline+="<td><a style='cursor:pointer;' onMouseOver='filldate("+temp_year+","+(temp_month+1)+","+temp_day+","+i+",0);' onClick='filldate("+temp_year+","+(temp_month+1)+","+temp_day+","+i+",1);showgoodselect();'><img border=0 src='<%=request.getContextPath()%>/img/linef.gif'   ondrag='return false' alt='"+temp_year+"-"+(temp_month+1)+"-"+temp_day+"'></a>";
			}
			
			strline+="<div id='selimg"+i+"' style='left:"+ (i*2-5) +";z-index:998;top:"+(0)+";font-size:10px;position: absolute;visibility:hidden;'>";
			strline+="<a style='cursor:pointer;' onMouseOver='filldate("+temp_year+","+(temp_month+1)+","+temp_day+","+i+",0);' onClick='filldate("+temp_year+","+(temp_month+1)+","+temp_day+","+i+",1);showgoodselect();'>";
			strline+="<img border=0 src='<%=request.getContextPath()%>/img/lineback.gif'   ondrag='return false' alt='"+temp_year+"-"+(temp_month+1)+"-"+temp_day+"'>";
			strline+="</a>";
			strline+="</div>";
						
		   strline+="</td>";
		tempd2.setDate(tempd2.getDate()+1);
		i++;
	  };
	 amout_days=i;
  strline+="</tr>";
  strline+="</table><br>";
  strline+="<div id='linef' style='left:"+(i-40)*2+";z-index:998;top:-10;font-size:10px;position: absolute;visibility:visible;'>";
  strline+="<input type='text' size=1 id='lineff' name='lineff' style='border:1px #00CCFF solid;background:#ACF4FE;font-size:10px;color:#ffffff;'><br>";
  strline+="<a style='cursor:pointer;' onClick='showgoodselect();' onMouseMove='mousemove(1);'  onMouseDown='checkmove(1);' onMouseUp='checkmove(0);' onMouseOut='checkmove(0);'><img border=0 src='<%=request.getContextPath()%>/img/selectF.gif'  ondrag='return false'></a>";
  strline+="</div>";
  
  strline+="<div id='linel' style='left:"+(i-10)*2+";z-index:9999;top:-10;font-size:10px;position: absolute;visibility:visible;'>";
  strline+="<input type='text' size=1 id='linell' name='linell' style='border:1px #00CCFF solid;background:#ACF4FE;font-size:10px;color:#ffffff;'><br>";
  strline+="<a style='cursor:pointer;' onClick='showgoodselect();'  onMouseMove='mousemove(2);' onMouseDown='checkmove(1);' onMouseUp='checkmove(0);' onMouseOut='checkmove(0);'><img border=0 src='<%=request.getContextPath()%>/img/selectL.gif' ondrag='return false'></a>";
  strline+="</div>";
  strline+="<input type='hidden' id='showdatef' name='showdatef' type='text' size=10   style='border:1px #00CCFF solid;background:#ACF4FE;font-size:12px;color:#000000;'>";
  strline+="<input type='hidden' id='showdatel' name='showdatel' type='text' size=10   style='border:1px #00CCFF solid;background:#ACF4FE;font-size:12px;color:#000000;'>";
  strline+="<input type='hidden' id='mousedown' name='mousedown' value='0' type='text' size=10   style='border:1px #00CCFF solid;background:#ACF4FE;font-size:12px;color:#000000;'>";
  
  
 
  
 var yyDivnote= document.getElementById("dateline");		
  yyDivnote.innerHTML=strline;
  
  
  function filldate(ye,me,de,e,y){

  	var yy=document.getElementById('mousedown').value;
  	  if(y==1 || yy==1){
  	  				tempstr= ye+"/"+me+"/"+de;
					 var tdate=new Date(tempstr); 
					 var limit_date=new Date(); 
					  limit_date.setDate(limit_date.getDate()+1);
					 if(limit_date>=tdate){
								       var ddf=document.getElementById('linef');
								       var ddl=document.getElementById('linel');
								       var tempf=ddf.style.left;
								       var templ=ddl.style.left;
								       tempf=Number(tempf.replace("px",""))+8;
								       templ=Number(templ.replace("px",""))+8;
								       var absf=Math.abs(e*2-tempf);
								       var absl=Math.abs(e*2-templ);
								
								       if ((absf<=absl && tempf!=templ && y!=2) || y==-2 ){
									       	ddf.style.left=(e-4)*2+"px";
									       document.getElementById('lineff').value=me + '.'+de; 
									       document.getElementById('showdatef').value=ye +','+ me + ','+de+','+e; 
									       document.getElementById('startdate').value=ye +'/'+ me + '/'+de; 
									       showF=(e);
									
								       }else if(absf==absl && tempf==templ){
								        
								       		if(e*2>tempf){
									       			ddl.style.left=(e-4)*2+"px";
											       document.getElementById('linell').value=me + '.'+de; 
											       document.getElementById('showdatel').value=ye +','+ me + ','+de+','+e; 
											       document.getElementById('enddate').value=ye +'/'+ me + '/'+de; 
											        showL=(e); 
								       		}else if(e*2<tempf){
								       				ddf.style.left=(e-4)*2+"px";
											       document.getElementById('lineff').value=me + '.'+de; 
											       document.getElementById('showdatef').value=ye +','+ me + ','+de+','+e; 
											       document.getElementById('startdate').value=ye +'/'+ me + '/'+de; 
											       showF=(e);
								       		}
								       }else if((absf>absl && y!=-2) || y==2){
								        
								       
									       	ddl.style.left=(e-4)*2+"px";
									       document.getElementById('linell').value=me + '.'+de; 
									       document.getElementById('showdatel').value=ye +','+ me + ','+de+','+e; 
									       document.getElementById('enddate').value=ye +'/'+ me + '/'+de; 
									        showL=(e); 
									      
								       }else{
								       alert('error');
								       }
								       
								       
								       
								      for(var j=0;j<amout_days;j++){
								      	 var divback=eval("document.getElementById('selimg"+j+"')");
								      	 divback.style.visibility="hidden";
								      	 if(j>showF && j<=showL){
								      	 	divback.style.visibility="visible";
								      	 };
								      }
								      
					  }
      }
  };
  
  function filldate2(ye,me,de,e,y){

  
  	  				tempstr= ye+"/"+me+"/"+de;
					
								       var ddf=document.getElementById('linef');
								       var ddl=document.getElementById('linel');
								      
								
								       if (y=='f' ){
									       	ddf.style.left=(e-4)*2+"px";
									       document.getElementById('lineff').value=me + '.'+de; 
									       document.getElementById('showdatef').value=ye +','+ me + ','+de+','+e; 
									       document.getElementById('startdate').value=ye +'/'+ me + '/'+de; 
									       showF=(e);
									       
									
								       }else if(y=='l'){
								      
									       	ddl.style.left=(e-4)*2+"px";
											document.getElementById('linell').value=me + '.'+de; 
											document.getElementById('showdatel').value=ye +','+ me + ','+de+','+e; 
											document.getElementById('enddate').value=ye +'/'+ me + '/'+de; 
											showL=(e); 
								       		
								       }
								       
								       
								       
								      for(var j=0;j<amout_days;j++){
								      	 var divback=eval("document.getElementById('selimg"+j+"')");
								      	 divback.style.visibility="hidden";
								      	 if(j>showF && j<=showL){
								      	 	divback.style.visibility="visible";
								      	 };
								      }
								      
					  
      
  };
     
  function checkmove(e){
	  if(e==1){
	  var tt=mousePos();
	  mousePosX=tt.x;
	  }
	  
  document.getElementById('mousedown').value=e; 
  
  }
  
  function mousemove(e){
  var tt=mousePos();
  th=Math.abs(mousePosX-tt.x);
  var th2=th/2;
  /*if(th>2){
  	document.getElementById('mousedown').value=0;
  }*/
  var yy=document.getElementById('mousedown').value;
  	  if(yy==1){
					  if(e==1){
					  	var tempdiv=document.getElementById('linef');
					  	var tempdivdate=document.getElementById('showdatef').value;
					  	var tt1=-2;
					  }else if(e==2){
						var tempdiv=document.getElementById('linel');
					  	var tempdivdate=document.getElementById('showdatel').value;
					  	var tt1=2;
					  }
					  
					  var dateList = new Array(4)
					   dateList = tempdivdate.split(",");
					   var ty=dateList[0];
					   var tm=dateList[1];
					   var td=dateList[2];
					   var tamount=dateList[3];
					   tempstr= ty+"/"+tm+"/"+td;
					   var tdate=new Date(tempstr); 
					   var limit_date=new Date(); 
					 		limit_date.setDate(limit_date.getDate()+1);
					 	
								    	var tt=mousePos();
								    	//if(th<2){
									    	if(mousePosX>tt.x){
									    		 if(tamount>=1 ){
										    		  tdate.setDate(tdate.getDate()-1);
										    		  tamount--;
									    		  }
									    	}else{
									    		 if(tamount<=amout_days-10){
										 			  tdate.setDate(tdate.getDate()+1);
										 			  tamount++;
									 			 }
									    	}
									   /* }else{
									    	if(mousePosX>tt.x){
									    		 if(tamount-th2<1 ){th2=tamount-1}
										    		  tdate.setDate(tdate.getDate()-th2);
										    		  tamount=tamount-th2; 
									    	}else{
									    		 if(tamount+th2<=amout_days-10){th2=amout_days-10-tamount}
										 			  tdate.setDate(tdate.getDate()+th2);
										 			  tamount=tamount+th2;
									    	}
									    }*/
								    	 ty=tdate.getFullYear();
									     tm=tdate.getMonth();
									     td=tdate.getDate();
							if(limit_date>=tdate && showF<=showL-1){		   
								    	  filldate(ty,(tm+1),td,tamount,tt1);
					    	 }
				    	
		}
  }
  
  
 var temp_fromdate='${fromdate}';
  var temp_todate='${todate}';

	if(temp_fromdate != '' && temp_fromdate != null && temp_todate != '' && temp_todate != null){
		var tempdl0=new Date(); 
		var tempdl1=new Date(temp_todate);
		 var tempdf22=new Date(temp_fromdate); 
	}else{
		var tempdl1=new Date(); 
		 var tempdf22=new Date(); 
		 tempdf22.setMonth(tempdf22.getMonth()-1);
		 		tempdl1.setDate(tempdl1.getDate()+1);
		 		//tempdl1.setDate(tempdl1.getDate()-1);
	}
 
 var tempyearf=tempdf22.getFullYear();
 var tempmonthf=tempdf22.getMonth();
 var tempdayf=tempdf22.getDate();
 var tempyearl=tempdl1.getFullYear();
 var tempmonthl=tempdl1.getMonth();
 var tempdayl=tempdl1.getDate();
 var tt=0;
 var tt1=0;
 while(tempdf22<tempdl1){
	 tempdf22.setDate(tempdf22.getDate()+1);
	 tt++;
 
 }
  while(tempdl1<tempdl0){
	 tempdl1.setDate(tempdl1.getDate()+1);
	 tt1++;
 }
  
if(temp_fromdate !='' && temp_fromdate!=null &&  temp_todate !='' && temp_todate!=null){
	 filldate2(tempyearf,(tempmonthf+1),tempdayf,(amout_days-tt-tt1-11),'f');
	 filldate2(tempyearl,(tempmonthl+1),tempdayl,(amout_days-tt1-11),'l');
}else{
	 filldate(tempyearf,(tempmonthf+1),tempdayf,(amout_days-tt-tt1-11),1);
	 filldate(tempyearl,(tempmonthl+1),tempdayl,(amout_days-tt1-11),1);
}
 
	 function mousePos(e){ 
		var x,y; 
		var e = e||window.event; 
		return { 
			x:e.clientX+document.body.scrollLeft+document.documentElement.scrollLeft, 
			y:e.clientY+document.body.scrollTop+document.documentElement.scrollTop 
		}; 
	 }
	 
	 function changedate(e){
		 if(e==1 || e==-1){
		 	var td= document.getElementById('td1'); 
		 }else if(e==2 || e==-2){
		 	var td= document.getElementById('td2'); 
		 }else if(e==3 || e==-3){
		 	var td= document.getElementById('td3'); 
		 }else if(e==4 || e==-4){
			 var td= document.getElementById('td4'); 
		 }
		
		if(e>0){
		 	td.style.background="#C4F0FF";
		 }else{
		 	td.style.background="none";
		 }
		 
		 if(e==1){
		 	 var tempd=new Date(); 
			 var tempyearf=tempd.getFullYear();
			 var tempmonthf=tempd.getMonth();
			 var tempdayf=tempd.getDate();
			 var tempyearl=tempd.getFullYear();
			 var tempmonthl=tempd.getMonth();
			 var tempdayl=tempd.getDate();
			 document.getElementById('startdate').value=tempyearf +'/'+ (tempmonthf+1) + '/'+tempdayf; 
			 document.getElementById('enddate').value=tempyearl +'/'+ (tempmonthl+1) + '/'+tempdayl; 
		 }else if(e==2){
		 	 var tempd=new Date(); 
			 var tempyearl=tempd.getFullYear();
			 var tempmonthl=tempd.getMonth();
			 var tempdayl=tempd.getDate();
			 tempd.setMonth(tempd.getMonth()-3);
			 var tempyearf=tempd.getFullYear();
			 var tempmonthf=tempd.getMonth();
			 var tempdayf=tempd.getDate();
			 document.getElementById('startdate').value=tempyearf +'/'+ (tempmonthf+1) + '/'+tempdayf; 
			 document.getElementById('enddate').value=tempyearl +'/'+ (tempmonthl+1) + '/'+tempdayl; 
		 }else if(e==3){
		 	 var tempd=new Date(); 
			 var tempyearl=tempd.getFullYear();
			 var tempmonthl=tempd.getMonth();
			 var tempdayl=tempd.getDate();
			 tempd.setFullYear(tempd.getFullYear()-1);
			 var tempyearf=tempd.getFullYear();
			 var tempmonthf=tempd.getMonth();
			 var tempdayf=tempd.getDate();
			 document.getElementById('startdate').value=tempyearf +'/'+ (tempmonthf+1) + '/'+tempdayf; 
			 document.getElementById('enddate').value=tempyearl +'/'+ (tempmonthl+1) + '/'+tempdayl; 
		 	 
		 }else if(e==4){
			  
		 	 var tempd=new Date(); 
			 tempd.setFullYear(tempd.getFullYear()-1);
			 var tempyearl=tempd.getFullYear();
			 var tempmonthl=tempd.getMonth();
			 var tempdayl=tempd.getDate();
			 var tempyearf="1999";
			 var tempmonthf="01";
			 var tempdayf="01";
			 document.getElementById('startdate').value=tempyearf +'/'+ tempmonthf + '/'+tempdayf; 
			 document.getElementById('enddate').value=tempyearl +'/'+ (tempmonthl+1) + '/'+tempdayl; 
		 }
		 
		 
	 }
	 
	 
	
	 