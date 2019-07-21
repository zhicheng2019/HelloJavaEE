package com.dream.test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* @author FanZhiCheng
* @version 创建时间：2019年7月15日 下午3:53:42
* 类说明
*/
@WebServlet("/test2/DisplayHeader")
public class DisplayHeader extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 设置响应内容类型
        resp.setContentType("text/html;charset=UTF-8");

        PrintWriter out = resp.getWriter();
        String title = "HTTP Header 请求实例 - 范志成的实例";
        String docType =
            "<!DOCTYPE html> \n";
            out.println(docType +
            "<html>\n" +
            "<head><meta charset=\"utf-8\"><title>" + title + "</title></head>\n"+
            "<body bgcolor=\"#f0f0f0\">\n" +
            "<h1 align=\"center\">" + title + "</h1>\n" +
            "<table width=\"100%\" border=\"1\" align=\"center\">\n" +
            "<tr bgcolor=\"#949494\">\n" +
            "<th>Header 名称</th><th>Header 值</th>\n"+
            "</tr>\n");

        Enumeration headerNames = req.getHeaderNames();

        while(headerNames.hasMoreElements()) {
            String paramName = (String)headerNames.nextElement();
            out.print("<tr><td>" + paramName + "</td>\n");
            String paramValue = req.getHeader(paramName);
            out.println("<td> " + paramValue + "</td></tr>\n");
        }
        out.println("</table>\n</body></html>");
	}
	
	
	

}
