<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试Forward的主函数入口</title>
</head>
<body>
<jsp:include page="returnIndex.jsp" flush="false"/>	

========Forward主函数页面开始========<br/>

<!--  include -->
<font color="yellow" size="4">
	<jsp:include page="ActionTagsInclude.jsp" flush="false"/>	
</font>

我是测试Forward的主函数入口
<font color="blue" size="3">	
	<jsp:forward page="ActionTagsForward.jsp"/>
</font>

========Forward主函数页面结束========<br/>

</body>
</html>