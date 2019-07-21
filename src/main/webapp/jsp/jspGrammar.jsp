<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP语法知识</title>
</head>
<body>
<jsp:include page="returnIndex.jsp" flush="false"/>	
<h1>JSP语法知识</h1>


<h3>脚本程序</h3>
<p>脚本代码语法格式1:<br/>
<code> &lt;% 代码片段 %&gt;</code>
</p>

<p>脚本代码语法格式2:<br/>
<code> &lt;jsp:scriptlet&gt;代码片段&lt;/jsp:scriptlet&gt;</code>
</p>

<h3>中文编码问题</h3>

<h3>JSP声明</h3>
<p>
一个语句可以声明一个变量，或者多个变量。供后面的Java代码使用，在JSP文件中，必须先声明在使用<br/>
<code>
&lt;%! int i = 0; %&gt; <br/>
&lt;%! int a, b, c; %&gt; 
</code>
</p>
<h3>JSP表达式</h3>
<p>1.JSP表达式先被转换成String，然后插入到表达式出现的地方</p>
<p>2.由于表达式会被转化成String，所以可以在一个文本行中使用表达式而不用关心它是否是HTML标签</p>
<p>3.比到达时中可以包含任何符合Java规范的表达式，但是不能以分号结束表达式</p>
<p>JSP表达式的语法格式：</p>
<code>
&lt;%= 表达式 %&gt;
</code>

<p>同样也可以用XML语句编写：</p>
<code>
&lt;jsp:expression&gt;
表达式
&lt;/jsp:expression&gt;
</code>

<p>表达式实例：通过Java获取系统今天的日期</p>
<p>今天的日期是：<%= new java.util.Date() %></p>


<h3>JSP注释</h3>
<p>1. 我是HTML注释，通过浏览器的查看源代码，可以看到我</p>
<!-- 我是HTML注释，通过浏览器的查看源代码，可以看到我。哈哈哈看到我啦 -->
<p>2. 我是JSP注释，我不会被发送到浏览器甚至不会被编译</p>
<%-- 我是JSP注释，我不会被发送到浏览器甚至不会被编译。 哈哈你看不到我--%>
<p>3. 属性中使用的单引号:\'</p>
<p>4. 属性中使用的双引号:\"</p>
<p>5. 代表静态常量&lt;\%</p>
<p>6. 代表静态常量\%&gt;</p>

<h3>JSP指令</h3>
<p>JSP指令用来设置与整个JSP页面相关的属性<br/>
常见的三种指令标签:<br/>
<code>&lt;%@page %&gt;</code><br/>
<code>&lt;%@include %&gt;</code><br/>
<code>&lt;%@taglib %&gt;</code><br/>
</p>
<h3>JSP行为</h3>
<p>JSP行为标签使用XML语法结构来控制Servelt引擎。他能动态插入一个页面，或者重用JavaBean组件，控制用户去哪一个界面，为java产生对应的HTML页面</p>


<h3>JSP隐含对象</h3>

<h3>控制流语句之判断语句</h3>
<p>if else 实例</p>
<p> ============================</p>
<%! int day1 = 1;%>
<% if(day1 == 6 || day1 == 7){ %>
	<p>今天是周末</p>
<% }else { %>
	<p>今天是工作日</p>
<% }%>
<p> ============================</p>

<p>switch case实例</p>
<p> ============================</p>
<%! int day2 = 1;%>
<% switch(day2){
	case 1:
		out.println("今天是星期一");
		break;
	case 2:
		out.println("今天是星期二");
		break;
	case 3:
		out.println("今天是星期三");
		break;
	case 4:
		out.println("今天是星期四");
		break;
	case 5:
		out.println("今天是星期五");
		break;
	case 6:
		out.println("今天是星期六");
		break;
	case 7:
		out.println("今天是星期日");
		break;
	}%>
<p> ============================</p>

<h3>控制流语句之循环语句 for</h3>
<%for(int fontsize = 1;fontsize <= 3;fontsize++){ %>
	<font color="red" size="<%=fontsize %>">
		for循环测试<%=fontsize %><br/>
	</font>
<% }%>

<h3>控制流语句之判断语句 while</h3>
<%! int fontsize2 = 4; %>
<%while( fontsize2 <= 6){ %>
	<font color="red" size="<%=fontsize2 %>">
		wh2循环测试<%=fontsize2 %><br/>
	</font>
	<% fontsize2++;%>
<% }%>

<h3>控制流语句之判断语句 do while</h3>
<%! int fontsize3 = 7; %>
<%do{ %>
	<font color="red" size="<%=fontsize3 %>">
		d wh循环测试<%=fontsize3 %><br/>
	</font>
	<% fontsize3++;%>
<% }while(fontsize3 <= 9);%>

<h3>JSP 字面量</h3>
<p>JSP定义了以下几种自变量
	Boolean<br/>
	int<br/>
	float<br/>
	string<br/>
	null<br/>
</p>

</body>
</html>