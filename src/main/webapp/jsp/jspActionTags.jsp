<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP动作元素</title>
</head>
<body>
<jsp:include page="returnIndex.jsp" flush="false"/>	

<h1>JSP动作元素</h1>

<!-- include动作元素 -->
<h3>1.&lt;jsp:include&gt;动作元素</h3>
<font color="red" size="4">
	动作元素用来包含静态和动态的文件。该动作把指定文件插入正在生成的页面.<br/>
	注意：前面已经介绍过include指令，它是在JSP文件被转换成Servlet的时候引入文件，而这里的jsp:include动作不同，插入文件的时间是在页面被请求的时候。
</font>
<font color="blue" size="3">
	<jsp:include page="ActionTagsInclude.jsp" flush="false"/>	
</font>


<!-- useBean,setProperty,getProperty动作元素 -->
<h3>2.&lt;jsp:useBean&gt;,&lt;jsp:setProperty&gt;,&lt;jsp:getProperty&gt;动作元素</h3>
<font color="red" size="4">
	useBean:用来加载画面中使用JavaBean<br/>
	setProperty:用来设置JavaBean属性的值<br/>
	getProperty:获取JavaBean属性的值<br/>
</font>

<p>jsp:useBean 的使用方式1</p>
<font color="blue" size="3">
	<!-- class对应目录：项目文件夹\WebContent\WEB-INF\classes\com\dream\test\bean\TestBean.class -->
	<!-- 上面的class是写好java文件后，将编译后的class文件放到web-inf下的。自动放的方法有吗？？？ -->
	<jsp:useBean id="testBean1" class="com.dream.test.bean.TestBean"/>
	<jsp:setProperty name="testBean1" property="messatge" value="SetPropty测试1"/>
	输出信息：<br/>
	<jsp:getProperty name="testBean1" property="messatge"/>
	
</font>

<p>jsp:useBean 的使用方式2</p>
<font color="blue" size="3">	
	<jsp:useBean id="testBean2" class="com.dream.test.bean.TestBean">
		<jsp:setProperty name="testBean2" property="messatge" value="SetPropty测试2"/>
		输出信息：<br/>
		<jsp:getProperty name="testBean2" property="messatge"/>
	</jsp:useBean>
</font>

<!-- forward动作元素 -->
<h3>3.&lt;jsp:forward&gt;动作元素</h3>
<font color="red" size="4">
	forward:用来将此画面转到另外的画面。
</font><br/>

<a href="ActionTagsForwardMain.jsp">通往测试Forward的主函数的超链接</a>

<!-- plugin动作元素 -->
<h3>4.&lt;jsp:plugin&gt;动作元素</h3>
<font color="red" size="4">
	plugin:暂时不学习
</font><br/>

<!-- element，attribute，body动作元素 -->
<h3>5.&lt;jsp:element&gt;,&lt;jsp:attribute&gt;,&lt;jsp:body&gt;动作元素</h3>
<font color="red" size="4">
	element，attribute，body动作元素   动态定义XML元素
</font><br/>

<jsp:element name="xmlElement">
<jsp:attribute name="xmlElementAttr">
   属性值
</jsp:attribute>
<jsp:body>
   XML 元素的主体
</jsp:body>
</jsp:element>

<!-- text动作元素 -->
<h3>6.&lt;jsp:text&gt;动作元素</h3>
<font color="red" size="4">
	text动作元素   动态定义XML元素
</font><br/>

<% String content= "aaaaa";%>
<jsp:text>
模板数据,只能是文本或者EL表达式。
</jsp:text>
</body>
</html>