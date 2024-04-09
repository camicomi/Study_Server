package com.test.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex03Data extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// DB 작업 > 데이터
		int count = 100;
		
		//resp.sendRedirect("/ajax/ex03.do?count=" + count);
		
		PrintWriter writer = resp.getWriter();
		
		// 의미없는 문자열이다 ....
		// writer.println("<html>");
		// writer.println("<body>");
		// writer.println("<div>" + count + "</div>");
		// writer.println("</body>");
		// writer.println("</html>");
		
		// println X (Enter 도 데이터!!!)
		writer.print(count);
		
		writer.close();
		
	}

}
