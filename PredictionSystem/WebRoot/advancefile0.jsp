<%@ page language="java" import="java.util.*,java.io.*"
pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
    + request.getServerName() + ":" + request.getServerPort()
    + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <base href="<%=basePath%>">
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/jqueryui/js/jquery-ui-1.8.18.custom.min.js">
		</script>
</head>
 
<%out.println(basePath+"fileadvenceEOB/AdvanceEOB_999999999M21051638418518248.pdf"); %>
<%
   out.clear();
   out = pageContext.pushBody();
   response.setContentType("application/pdf");

   try {
   // String strPdfPath = new String("C://jdk//apache-tomcat-7.0.34//webapps//PredictionSystem//fileadvenceEOB//AdvanceEOB_999999999M21051638418518248.pdf");
    String strPdfPath = new String("http://localhost:8080/PredictionSystem/fileadvenceEOB/AdvanceEOB_999999999M21051638418518248.pdf");
    //判断该路径下的文件是否存在
    File file = new File(strPdfPath);
    if (file.exists()) {
     DataOutputStream temps = new DataOutputStream(response
       .getOutputStream());
     DataInputStream in = new DataInputStream(
       new FileInputStream(strPdfPath));

     byte[] b = new byte[2048];
     while ((in.read(b)) != -1) {
      temps.write(b);
      temps.flush();
     }

     in.close();
     temps.close();
    } else {
     out.print(strPdfPath + " 文件不存在!");
    }

   } catch (Exception e) {
    out.println(e.getMessage());
   }
%>
<body>
   <br>
</body>
</html>