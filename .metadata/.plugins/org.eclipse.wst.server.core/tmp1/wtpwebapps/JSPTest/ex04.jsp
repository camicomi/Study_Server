<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  ex04.jsp  -->
	<h1>커뮤니티</h1>
	
	<p>이런기능</p>
	<p>저런기능</p>
	
	<!--  로그인 부분 적용
	
			1. 클라이언트
			2. 서버 

	
	 -->
	 
	 <iframe src="login.jsp" frameborder="0"></iframe>
	
	<!--  일반적으로 include  사용 --> 
	 <%@ include file="login.jsp" %>
	

	
</body>
</html>