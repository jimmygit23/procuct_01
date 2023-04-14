<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<s:head/>
  </head>
  <script type="text/javascript">
  			function loadsendseccess(idstr){
  							alert(idstr);
				        	// windows.open(idstr,'_self');
				        }
				         
  			//alert('choose link......');
  			var xmlhttp; 	
			if (window.XMLHttpRequest)
						  {// code for IE7+, Firefox, Chrome, Opera, Safari
						  xmlhttp=new XMLHttpRequest();
						  }
			else
						  {// code for IE6, IE5
						  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
						  }	


			function XMLAjax(requestpath,sendstr,idstr,callback){
				if(null!=xmlhttp){
				 		xmlhttp.onreadystatechange=(function(){
															   alert("xmlhttp.readyState:" + xmlhttp.readyState);
														 if (xmlhttp.readyState==4){
															  // 4 = "loaded"
															   alert("xmlhttp.status:" + xmlhttp.status);
															  if (xmlhttp.status==200||xmlhttp.status==0)
															    {// 200 = "OK"	     
															   		callback(requestpath);	
															    }
															  else
															    {
															    	alert("Problem retrieving data1:" + xmlhttp.status);
															   		callback(idstr);	
															    }
														  }
					  								});
						xmlhttp.open("GET",requestpath,true); 
						xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						xmlhttp.send();
				    }
				   
			     }
			   
 
  function chooselink(){
				    var jump_Url="https://secure6.achonline.com/portal/user/ach_quick_logon.jsp";   
					var attach="pagechoose1";      
					var test_Url="https://secure4.achonline.com/portal/user/ach_quick_logon.jsp";  
				    XMLAjax(test_Url ,attach,jump_Url,loadsendseccess);  
	}
  </script>
  <body>
    <center>
    	<h1>用户登录</h1>
    	<s:a action="user_addUI" namespace="/user">添加新用户</s:a>
    	<s:form action="user_login" namespace="/user" method="post">
    		<s:textfield label="用户名" name="user.username"></s:textfield>
    		<s:password label="密码" name="user.password"></s:password>
    		<s:submit value="登录"></s:submit>
    	</s:form>
    	<button onclick='chooselink();'>选择线路</button>
    </center>
  </body>
</html>
