<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>System is busy</title>
<meta name="keywords" content="simplifi" />
<meta name="description" content="simplifi" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.js"></script>
<link href="<%=request.getContextPath()%>/css/layout404.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/default404.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="pmain">
	<div class="module module5">
        <div class="mhead">
            <div class="mhead-wrap">
            </div>
        </div>
        <div class="mbody plr80p">
            <div  class="tipcue3">
                <span class="cueicn"></span>
                <p class="cuetitle">Sorry,system is busy. Please refresh browser or try again later.</p>
            </div>
            <div class="tipcuecon">
              <h2> <a href="#" id="idRef">refresh</a></h2>
          </div>
         </div>
         <div class="mfoot"><div class="mfoot-wrap"></div></div>
    </div>
</div>
</body>
<script type="text/javascript">	
$("#idRef").click(function(){
	window.location.reload(); 
});
</script>
</html>
