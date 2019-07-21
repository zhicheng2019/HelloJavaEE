<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookies JSP页面</title>
</head>
<body>
<%@page import="java.net.* "%>
<% 
	//编码，解决中文乱码 
	String str=URLEncoder.encode(request.getParameter("name"),"utf-8"); 

	Cookie name=new Cookie("name",str);
	Cookie url=new Cookie("url",request.getParameter("url"));
	
	name.setMaxAge(60*60*24);
	url.setMaxAge(60*60*24);
	
	// 在响应头部添加cookie
   response.addCookie( name );
   response.addCookie( url );
			
%>
<!-- +++++++++++++++++++++++++++++++++++++++++++++++ -->
<!-- Set Cookies -->
<!-- +++++++++++++++++++++++++++++++++++++++++++++++ -->
+++++++++++++++++++++++++++++++++++++++++++++++
<h2>设置 Cookie</h2>

<ul>
<li><p><b>网站名:</b>
   <%= request.getParameter("name")%>
</p></li>
<li><p><b>网址:</b>
   <%= request.getParameter("url")%>
</p></li>
</ul>
<!-- +++++++++++++++++++++++++++++++++++++++++++++++ -->
<!-- Get Cookies -->
<!-- +++++++++++++++++++++++++++++++++++++++++++++++ -->
+++++++++++++++++++++++++++++++++++++++++++++++
<%
	Cookie cookie = null;
	Cookie[] cookies =null;
	
	cookies = request.getCookies();
	
	if(cookies != null){
		out.println("<h2>查找Cookie名与值</h2>");
		for(int i = 0;i < cookies.length;i++){
			cookie = cookies[i];
			
			out.println("参数名:" + cookie.getName() + "<br>");
			out.println("参数值:" + cookie.getValue() + "<br>");
			out.println("===================================<br>");
				
		}
	}else{
		out.println("<h2>没有发现 Cookie</h2>");
	}
%>
<!-- +++++++++++++++++++++++++++++++++++++++++++++++ -->
<!-- Delete Cookies -->
<!-- +++++++++++++++++++++++++++++++++++++++++++++++ -->
+++++++++++++++++++++++++++++++++++++++++++++++
<%
	cookies = request.getCookies();
	
	if(cookies != null){
		out.println("<h2>删除某个Cookie</h2>");
		for(int i = 0;i < cookies.length;i++){
			cookie = cookies[i];
			
			if(cookie.getName().equals("JSESSIONID")){
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				out.println("删除cooki：" + cookie.getName() + "<br>");
			}else{
				out.println("参数名:" + cookie.getName() + "<br>");
				out.println("参数值:" + cookie.getValue() + "<br>");
				out.println("===================================<br>");
			}
				
		}
	}else{
		out.println("<h2>没有发现 Cookie</h2>");
	}
%>

</body>
</html></html>