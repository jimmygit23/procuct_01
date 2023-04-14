function getRealLeft(imgElem) {
	xPos = eval(imgElem).offsetLeft;
	tempEl = eval(imgElem).offsetParent;
  	while (tempEl != null) {
  		xPos += tempEl.offsetLeft;
  		tempEl = tempEl.offsetParent;
  	}
	return xPos;
}

function getRealTop(imgElem) {
	yPos = eval(imgElem).offsetTop;
	tempEl = eval(imgElem).offsetParent;
	while (tempEl != null) {
  		yPos += tempEl.offsetTop;
  		tempEl = tempEl.offsetParent;
  	}
	return yPos;
}


function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function YYcalclose(YYwhat){//v4.0
  if (YYwhat>=0){
    var yyTag = YYwhat - yyW + 2;
    if ((yyTag > 0)&&(yyTag <= dom[yyDiv.m])){
      var d=yyTag;
      if (YYLang=='ach'){YYstrdatum = eval(yyDiv.m+1)+'/'+d+'/'+yyDiv.year;} //MM/DD/YY
      if (YYLang=='com'){YYstrdatum = YYstrm[yyDiv.m].substring(0,3) +' '+d+', '+yyDiv.year;}
      if (YYLang=='av'){YYstrdatum = d+'/'+YYstrm[yyDiv.m].substring(0,3)+'/'+yyDiv.year;}
      yyDatevar1.value=eval(yyDiv.m+1);
      yyDatevar2.value=d;
      yyDatevar3.value=yyDiv.year;
      //yyDatevar.value=YYstrdatum;
    }
  }
  if (document.layers){yyDiv.visibility = "hide";}
  if (document.all||document.getElementById){yyDiv.style.visibility = "hidden";}
}

function YYgoYear(YY){//v4.0
  var newYear = eval(yyDiv.year) + YY;
  yyDiv.year = newYear.toString(10);
  if (YY==0){} else {YYsetMonth(yyDiv.m,yyDiv.year)}
  setTimeout('YYcaldraw(yyDiv.d,yyDiv.m,yyDiv.year)',(document.layers)?'300':'1');
}

function YYsetMonth(YYm, YYy){//v4.0
  var startDate = new Date();
  startDate.setMonth(YYm);   startDate.setYear(YYy);   startDate.setDate(1);
  yyW = startDate.getDay();
  if (yyW==0){yyW=7}
  var daSchalt = yyDiv.year % 4;
  if (daSchalt==0){dom[1]=29}else {dom[1]=28}
}

function YYgoMonth(YY){//v4.0
   yyDiv.m=yyDiv.m+YY;
   if (yyDiv.m<0){yyDiv.m+=12;YYgoYear(-1)}
     else {if (yyDiv.m>11){yyDiv.m=yyDiv.m-12;YYgoYear(1)}
       else{setTimeout('YYcaldraw(yyDiv.d,yyDiv.m,yyDiv.year)',(document.layers)?'300':'1')}
     }
   YYsetMonth(yyDiv.m,yyDiv.year);
}

function YYsetDate(){//v4.0
   var myDate = new Date();
   yyDiv.year=myDate.getYear();
   if ((myDate.getYear() > 86)&&(myDate.getYear() <= 99)) { yyDiv.year= '19' + myDate.getYear() }
   if ((myDate.getYear() > 99)&&(myDate.getYear() < 1900)) { yyDiv.year= (1900 + myDate.getYear())+''; }
   if (myDate.getYear() <= 86){ yyDiv.year= '20' + myDate.getYear() }//2000!!
   yyDiv.m =  myDate.getMonth();
   yyDiv.d = myDate.getDate();
   var w = myDate.getDay();
   YYsetMonth(yyDiv.m,yyDiv.year);
   YYgoYear(0);
}

function nogo() { return false; }

function YYcaldraw(ycd,ycm,ycy){//v4.0
  // writing the calendar table
  var yyfnt="<font size=1 color='"+yyDiv.yyTextcolor+"' face=\'Arial, sans-serif\'>";
  var yyfnt2="<font size=2 color='000000' face=\'Arial, sans-serif\'>";
  var myTR = "<tr bgcolor=\'"+yyDiv.yyBgcolor+"\'>";
  var yyatag="<a style=\"cursor:pointer;color:"+yyDiv.yyTextcolor+"; text-decoration: none\" onClick=";
  if (document.layers||document.all||document.getElementById){
   var myMonth = YYstrm[ycm];
   var mytxt="<Table  background=\"../pictuer/blank.gif\"><Tr><Td bgcolor=000000><table border=\'0\' cellspacing=\'1\' cellpadding=\'3\' width=\'175\'>";
   mytxt+=myTR+"<td colspan='7' bgcolor=\'"+yyDiv.yyheadcolor+"\'><table border=\'0\' width=100% cellspacing=\'0\' cellpadding=\'0\'><tr><td align='center'>"+yyatag+"'YYgoMonth(-1)'><img border=0 src='../pictuer/calendar-left.gif' alt='&lt;'>&nbsp;</a></td><td align='center' width='100%'>";
   mytxt+=yyfnt2+"<b>"+myMonth+" "+ycy+"</b></font></td><td align='center'>";
   mytxt+=yyatag+"'YYgoMonth(1)'>&nbsp;<img border=0 src='../pictuer/calendar-right.gif' alt='&lt;'></a></td><td align='center'>";
   mytxt+="</tr></table></td></tr><tr></tr><tr bgcolor=ffffff>";
   mytxt+="<td bgcolor=cccccc>"+yyfnt+"日</font></td><td>"+yyfnt+"一</font></td><td>"+yyfnt+"二</font></td><td>"+yyfnt+"三</font></td><td>"+yyfnt+"四</font></td>";
   mytxt+="<td>"+yyfnt+"五</font></td><td bgcolor=cccccc>"+yyfnt+"六</font></td></tr><tr></tr>"+myTR;
   for (var i=-1;i<=40;i++){
     myStr=((i > (dom[ycm]+yyW-2))||(i < yyW-1))?"&nbsp;":i-yyW+2;
     mytxt+="<td"
     var time=new Date();
     if ( time.getMonth() == ycm && time.getDate() == myStr && time.getYear() == ycy) { 
     	mytxt+=" bgcolor="+yyDiv.yyheadcolor+" ";
     } else if ((i==-1) || (i==5) || (i==6) || (i==12) || (i==13) || (i==19) || (i==20) || (i==26) || (i==27) || (i==33) || (i==34) || (i==40) || (i==41)) { 
     	mytxt+=" bgcolor=efefef " ;
     };
     
     
     mytxt+=">"+yyfnt+yyatag+"\'YYcalclose("+i+")\' title='"+myMonth+" "+myStr+", "+ycy+";'>"+ myStr + "</a></font>";
     mytxt+="</td>";
     if ((i==5) || (i==12) || (i==19) || (i==26) || (i==33) || (i==40)) { mytxt+=myTR }
   }
   mytxt+="</table></td></tr></table>";
 }
 if (document.layers){
   with (yyDiv.document){
     open('text/html');
     write(mytxt);
     close();
   }
 }  // end of ns4
 else if (document.all||document.getElementById){
   yyDiv.innerHTML=mytxt;
 } // end of ie4x / dom
}

function YY_Calendar(YYwhat,YYwhat2, YYwhat3, YYimage,YYformat, YYtextcolor, YYbgcolor, YYheadcolor){//v4.0
  
  TheImage = eval('document.cal' + YYimage);
  yyDiv= MM_findObj('Calendar1');
  yyDiv.yyTextcolor = YYtextcolor;
  yyDiv.yyBgcolor = YYbgcolor;
  yyDiv.yyheadcolor = YYheadcolor;
  YYsetDate();
  //if (document.layers){
   // if (TheImage.x > document.logout.x - 100) {
    	//yyDiv.left = document.logout.x - 175;
   // } else {
    	//yyDiv.left = TheImage.x;
    //}
   // yyDiv.top = TheImage.y + 25;
   // yyDiv.visibility ="show";
  //}
 
  yyDiv.style.pixelLeft = getRealLeft(TheImage);
    yyDiv.style.pixelTop =  getRealTop(TheImage) + 25;
    yyDiv.style.visibility = "visible";
	
 // if (document.all){
   //if (getRealLeft(TheImage) > getRealLeft(document.logout) - 100) {
   // 	yyDiv.style.pixelLeft = getRealLeft(document.logout) - 175;
   // } else {
		//yyDiv.style.pixelLeft = getRealLeft(TheImage);
   // }
   // yyDiv.style.pixelTop =  getRealTop(TheImage) + 25;
   // yyDiv.style.visibility = "visible"; 
 // }else
 // if (document.getElementById){
   // yyDiv.style.left = getRealLeft(TheImage);
  //  yyDiv.style.top = getRealTop(TheImage) + 25;
   // yyDiv.style.visibility = "visible";
  //}
  
  yyDatevar1 = MM_findObj(YYwhat);
  yyDatevar2 = MM_findObj(YYwhat2);
  yyDatevar3 = MM_findObj(YYwhat3);
  YYLang=YYformat;


}
