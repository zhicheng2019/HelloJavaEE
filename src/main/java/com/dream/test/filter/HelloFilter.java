package com.dream.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class HelloFilter implements Filter {
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		//获取初始化参数
		String site =filterConfig.getInitParameter("Site");
		
		//输出初始化参数
		System.out.println("网站名称：" + site);

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//输出站点网址
		System.out.println("网站地址：www.fanzhicheng.com");
		
		//把请求传回过滤链
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		/* 在 Filter 实例被 Web 容器从服务移除之前调用 */
	}


}
