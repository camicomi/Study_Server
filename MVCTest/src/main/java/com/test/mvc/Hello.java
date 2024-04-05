package com.test.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 비즈니스 업무 처리 or 데이터베이스 처리
		// 화면 제작 > JSP 위임 
		
		// 가상 주소 > web.xml
		
		System.out.println("Hello");
		
		// sendRedirect > root 폴더까지
		// resp.sendRedirect("/mvc/hello.jsp");
		
		int count = 0;
		
		req.setAttribute("count", 100 / count);
		
		// pageContext > RequestDispatcher
		// WEB-INF 폴더 VIEWS 폴더에 관리
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/hello.jsp");
		
		dispatcher.forward(req, resp);
		

		
	}

}
