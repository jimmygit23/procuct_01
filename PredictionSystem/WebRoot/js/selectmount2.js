
    function add(str) {
    var tch=document.getElementById("colname"+str).checked;
    if(tch==true){
      var a = document.getElementById("txtMount"+str).value;
        a++;
       document.getElementById("txtMount"+str).value = a;
        
        var tm=document.getElementById("hiddenmoney"+str).value;
        document.getElementById("txtmoney"+str).value = (a*tm).toFixed(2);
         var tmun= document.getElementById("totalmount").value;
         var tmony=  document.getElementById("totalmoney").value;
        document.getElementById("totalmount").value = parseInt(tmun)+1;
        document.getElementById("totalmoney").value = (parseFloat(tmony)+parseFloat(tm)).toFixed(2);
        
        
       var heavy = document.getElementById("txtheavy"+str).value;
       var heavy_= document.getElementById("weight").value;
        document.getElementById("weight").value = (parseFloat(heavy_)+parseFloat(heavy)).toFixed(2);
        express_submit();
      }
    }
    function sub(str) {
    var tm=document.getElementById("hiddenmoney"+str).value;
    var tch=document.getElementById("colname"+str).checked;
    if(tch==true){
     var a = document.getElementById("txtMount"+str).value;
         var tmun= document.getElementById("totalmount").value;
         var tmony=  document.getElementById("totalmoney").value;
    	if(document.getElementById("txtMount"+str).value>1){
       		a--;
       		document.getElementById("txtMount"+str).value = a;
       		document.getElementById("txtmoney"+str).value = (a*tm).toFixed(2);
	        document.getElementById("totalmount").value = parseInt(tmun)-1;
	        document.getElementById("totalmoney").value = (parseFloat(tmony)-parseFloat(tm)).toFixed(2);
	        
	        
    		 var heavy = document.getElementById("txtheavy"+str).value;
       		 var heavy_= document.getElementById("weight").value;
        	 document.getElementById("weight").value = (parseFloat(heavy_)-parseFloat(heavy)).toFixed(2);
        	 express_submit(); 
        }
        if(document.getElementById("txtMount"+str).value<=1){
        	document.getElementById("txtMount"+str).value = 1;
        	document.getElementById("txtmoney"+str).value = tm;
        }
       }
    }