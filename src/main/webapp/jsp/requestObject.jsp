<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  导入要使用的工具包-->
<%@ page import="java.io.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request实例的方法</title>
</head>
<body>
<h3>request实例的方法</h3>
<h4>1. getHeaderNames方法</h4>
<table border="1" align="center" width="100%">
	<tbody>
		<tr>
			<th>header name</th>
			<th>header value</th>
		</tr>
		<%
		   Enumeration headerNames = request.getHeaderNames();
		   while(headerNames.hasMoreElements()) {
		      String paramName = (String)headerNames.nextElement();
		      out.print("<tr><td>" + paramName + "</td>\n");
		      String paramValue = request.getHeader(paramName);
		      out.println("<td> " + paramValue + "</td></tr>\n");
		   }
		%>
	</tbody>
</table>
</body>
</html>