<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传下载表单</title>
</head>
<body>
<h2>上传文件表单</h2>
<!--文件上传表单 


-->
<form method="POST" enctype="multipart/form-data" action="/HelloMaven/UploadFileServlet">
  <!-- @multiple 设置可以同时选中过个文件进行上传 -->
  上传文件: <input type="file" multiple="multiple" name="upfile"><br/>
  Notes about the file: <input type="text" name="note"><br/>
  <br/>
  <input type="submit" value="Press"> to upload the file!
</form>

</body>
</html>