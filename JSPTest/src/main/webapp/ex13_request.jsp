<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!--  http://localhost:8090/jsp/sub/ex13_request.jsp  -->
	<!-- webapp > sub > ex13_request.jsp -->
	
	<h1>request > 요청 정보 확인</h1>
	
	<p>요청 URL: <%= request.getRequestURI() %></p>
	<P>요청 서버 도메인: <%= request.getServerName() %></P>
	<P>요청 서버 포트: <%= request.getServerPort() %></P>
	<P>쿼리 문자열: <%= request.getQueryString() %></P>
	<P>요청 방식: <%= request.getMethod() %></P>
	<P>컨텍스트 경로: <%= request.getContextPath() %></P>
	
	<div>
		<!--  상대 경로 -->
		<a href="ex12_form.jsp">12번 예제</a>
	</div>
	<div>
		<!--  절대 경로  -->
	 	<!--  "/jsp" == "webapp"  폴더 -->
		<a href="<%= request.getContextPath() %>/ex12_form.jsp">12번 예제</a>
	</div>
	
	<!--  http://192.168.10.30:8090/jsp/ex13_request.jsp -->
	<p>클라이언트 주소: <%= request.getRemoteAddr() %></p>
	
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script>
		
	</script>
</body>
</html>