<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 项目基本路径取得 -->
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引用CSS外部样式 -->
<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/HelloWorld.css" />
<title>JSP隐式对象</title>
</head>
<body>
<jsp:include page="returnIndex.jsp" flush="false"/>	


<table class="reference">
	<tbody>
		<tr>
			<th>
				<strong>对象</strong>
			</th>	
			<th>
				<strong>描述</strong>
			</th>	
		</tr>
		<tr>
			<td>
				request
			</td>
				
			<td>
				HttpServletReqest接口的实例
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>