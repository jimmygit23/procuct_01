<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>跳转页面</title>
</head>
<body>

<div style="height:600px"> 
<table height="100%" width="100%"> 
<tr valign="middle"  align="center"> 
<td> 
	<img src="<%=request.getContextPath()%>/image/load_image.gif" /><h1 style="color:red">正在跳转中...</h1> 
	<h3>若超过10秒还没跳转，请点击<a href="javascript:void(0);" onclick="closeShade();return false;" style="color:blue;">这里</a></h3>
</td>
</tr> 
</table> 
</div>
<script type="text/javascript">
function closeShade(){
    parent.hideShadel();
}
</script>
</body>
</html>