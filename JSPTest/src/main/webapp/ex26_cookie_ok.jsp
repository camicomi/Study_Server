<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("txtId");
	String pw = request.getParameter("txtPw");
	String cbRemember = request.getParameter("cbRemember");
	
	System.out.println(cbRemember);
	
	if ((id.equals("hong") && pw.equals("1234"))
		|| (id.equals("test") && pw.equals("1234"))) {
		//로그인 성공
		session.setAttribute("result", true);
		
		// 아이디 기억하기
		if (cbRemember != null && cbRemember.equals("y")) {
			// 쿠키에 아이디 저장하기 > 자바로 쿠키 생성하기
			// Cookie cookie = new Cookie("이름", "값");
			Cookie cookie = new Cookie("id", id);
			
			// 쿠키 만료 시간 지정하기
			cookie.setMaxAge(365 * 24 * 60 * 60);
			
			// 쿠키 객체 > 브라우저에게 전달
			response.addCookie(cookie);
			
		} else {
			
			// 아이디 기억하기 체크 해제
			// 모든 쿠키 받아와야 해서 배열 

			Cookie[] cookies = request.getCookies();
			
			for (int i=0; i<cookies.length; i++) {
				if (cookies[i].getName().equals("id")) {
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]); // 브라우저에 적용
				}
			}
			
		}
		
	} else {
		//로그인 실패
		session.setAttribute("result", false);
		
	}
	
	response.sendRedirect("ex26_cookie.jsp");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	
</style>
</head>
<body>
	<!-- ex26_cookie_ok.jsp -->
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script>
		
	</script>
</body>
</html>



