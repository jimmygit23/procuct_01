


function changecode(str,type){

		if(type==1){ 
			str=str.replace(new RegExp("&#","g"),"#_#");
			str=str.replace(new RegExp("&nbsp;","g"),"#__nbsp;");
			
		}else if(type==2){
			 
			str=str.replace(new RegExp("#_#","g"),"&#");
			str=str.replace(new RegExp("#__nbsp;","g"),"&nbsp;");
		}
		 return str;
	   
     }
     
		
		 
	
