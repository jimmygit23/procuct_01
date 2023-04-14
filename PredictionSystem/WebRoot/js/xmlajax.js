var xmlhttp; 	
if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			  xmlhttp=new XMLHttpRequest();
			  xmlhttp2=new XMLHttpRequest();
			  }
else
			  {// code for IE6, IE5
			  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  xmlhttp2=new ActiveXObject("Microsoft.XMLHTTP");
			  }	


function XMLAjax(requestpath,sendstr,idstr,callback){
		if(null!=xmlhttp){
			xmlhttp.onreadystatechange=(function(){
								if (xmlhttp.readyState==4)
											  {// 4 = "loaded"
											  if (xmlhttp.status==200)
											    {// 200 = "OK"
											   		callback(idstr);		     
											    }
											  else
											    {
											    alert("Problem retrieving data:" + xmlhttp.statusText);
											    }
											  }
		  								});
			xmlhttp.open("POST",requestpath,false);//xmlhttp.open("POST",requestpath,true);
			xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			xmlhttp.send(sendstr);
	    }
	   
     }
   
function XMLAjax2(requestpath,sendstr,idstr,callback){
		if(null!=xmlhttp){
			xmlhttp.onreadystatechange=(function(){
											if (xmlhttp.readyState==4)
											  {// 4 = "loaded"
											  if (xmlhttp.status==200)
											    {// 200 = "OK"
											   		callback(idstr);		     
											    }
											  else
											    {
											    alert("Problem retrieving data:" + xmlhttp.statusText);
											    }
											  }
		  								});
			xmlhttp.open("POST",requestpath,true);//xmlhttp.open("POST",requestpath,true);
			xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			xmlhttp.send(sendstr);
	    }
	   
     }  
		
		 

		 	
