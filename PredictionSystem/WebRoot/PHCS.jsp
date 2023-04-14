<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>File Import</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="<%=path%>/js/xmlajax.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>  
	<!--<script type="text/javascript" src="<%=path%>/js/ajaxfileupload.js"></script> 
	<script type="text/javascript" src="<%=path%>/js/changecode.js"></script>
	
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style> 
	#statusline{
	  width: 1px;
	  height: 30px;
	  background: green;
	  transition-timing-function: linear;
	  transition-property: width;
	  transition-duration: 1s;
	} 
	
	#showstatus{
	  width: 500px;
	  height: 200px;
	  background: #f3f9f1;
	  text-align: left;
	  border: 1px solid green;
	}
	
	#tempstatusSize{
	  width: 500px;
	  height: 20px;
	  background: #f3f9f1;
	  text-align: right;
	  font-family: Arial, Helvetica, sans-serif;
	}
	
	.path{
	  text-align: left;
	  font-family: Arial, Helvetica, sans-serif;
	  text-shadow: 1px 1px 5px red;
	  font-size: 18px;
	}
	.status{
	  text-align: left;
	  font-family: Arial, Helvetica, sans-serif;
	  font-size: 12px;
	}
	
	font{
	  text-align: left;
	  font-family: Arial, Helvetica, sans-serif;
	  text-shadow: 1px 1px 1px #057748;
	  font-size: 16px;
	} 
	
	
	#Filetype{
	  width: 280px;
	  height: 20px;
	}
	</style>
	<s:head/>
  </head>
  <body>
    <center> 
    	<h1>File Import</h1>
    	<!--<s:form   action="fileimport_add" namespace="/fileimport" method="post">
    		<s:submit value="File Add"></s:submit>
    	</s:form>-->
    	
    	<br><br>
    	<!--show new page--<form id="formFile" method="post" action="<%=path%>/fileimport/fileimport_add.action" target="frameFile" >-->
    	   <form id="formFile" method="post" action="<%=path%>/fileimport/fileimport_add.action" enctype="multipart/form-data">
	    	  	choose file type:&nbsp;&nbsp;
	    	  	<select   name="Filetype" id="Filetype" >
	    	  	<option id="" value=""></option>
	    	  	<option id="cmsinn" value="cmsinn">CMS INN FOMART</option>
	    	  	<option id="cmsoon" value="cmsoon">CMS OON FOMART</option>
	    	  	<option id="inn" value="inn">INN FOMART</option>
	    	  	<option id="oon" value="oon">OON FOMART</option>
	    	  	</select>
	    	  	<br><br>choose file: 
    	   		<input type="file" id="fileupload" name="fileupload" class="input"  onchange="getFileSize(this.value);">
    		    <input type="button" value="File Add" id="addfiles" >
			</form>
			
			<input type="hidden" name="statusSize"  id="statusSize" value="0" >
			<input type="text" name="tempstatusSize"  id="tempstatusSize" value="">
			<div id="showstatus" name="showstatus" >
			</div>
			<br><br>
    </center>
    
			<div id="statusline" name="statusline"></div>
    <script type="text/javascript">
     var tempfileSize=0;
	  $("#addfiles").click(function(){
       				//var obj=document.getElementById('statysline');
			     	//var tempcss=$("#"+obj.id).css("transition"); 
	  				// $("#"+obj.id).css({width:'500px'});
	  				//alert(tempcss);
	  		var type=document.getElementById('Filetype').value;
	  		if(type!=''&&type!=null){
		  		$("#statusline").css({transition:'width 1s'});
		  		$("#statusline").css({width:'1px'});
		 		var tt=  document.getElementById('fileupload').value;
		  		var r=confirm("Upload the file?")
		  		if (r==true){
				  	if(tt!=''){
		  				 $("#statusline").css({transition:'width 1s'});
				  		 $("#statusline").css({width:'1px'});
				  		 
				         $('#formFile').submit();
				  		 //setInterval(function(){ getFileStat(); }, 1000);
				  		 setInterval(getFileStat, 1000);
				  	}else{
				  		alert('Please choose file!');
		  				 $("#statusline").css({transition:'width 1s'});
				  		$("#statusline").css({width:'1px'});
				  	}
				}else{
		  			$("#statusline").css({transition:'width 1s'});
					$("#statusline").css({width:'1px'});	
				}  
			}else{
				alert("Please choose the file type?");
			}    
        });
        
        $(function(){
          $('#statusline').bind('click',function(){
          	alert('status line');
          });
        });
        
        function dounbind(){
        	$('#statysline').unbind();
        }
        
        
        
          
        function sendseccess(idstr){
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
        } 
        function sendseccess1(idstr){
        	   		  eval("document.getElementById('"+idstr+"').innerHTML=xmlhttp.responseText;");
			  		  if(tempfileSize==0 || tempfileSize==''){
			  		  	 tempfileSize=document.getElementById('fileSize').value;
						 document.getElementById('statusSize').value=parseInt(tempfileSize/2000);
						 $("#statusline").css({transition:'width '+parseInt(tempfileSize/2000)+'s'});
			  		 	 $("#statusline").css({width:'100%'});
			  		  }else{
			  		  	var temptime=document.getElementById('statusSize').value;
			  		  	temptime=temptime-1;
			  		  	document.getElementById('statusSize').value=temptime;
			  		  	document.getElementById('tempstatusSize').value=temptime+'S';
			  		  	
			  		  	
			  		  	
			  		  }
        } 
        
       
        
        function getFileSize(filePath){   
        //alert(filePath); 
        	XMLAjax("<%=path%>/fileimport/fileimport_showstatu.action" ,"fileuploadpath="+filePath,"showstatus",sendseccess);
        
		}  
		
        function getFileStat(){   
        	XMLAjax2("<%=path%>/fileimport/fileimport_showstatu.action" ,"","showstatus",sendseccess1);
        
		}     
	</script>   
  </body>
</html>
      