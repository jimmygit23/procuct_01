 var a = 1;
    function add() {
        a++;
        document.getElementById("txt").value = a;
    }
    function sub() {
    	if(document.getElementById("txt").value>1){
       		a--;
       		document.getElementById("txt").value = a;
        }
        if(document.getElementById("txt").value<=1){
        	document.getElementById("txt").value = 1;
        }
    }