<%@page import="com.test.jsp.MyUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	int a = 10;

/* 
메소드라서 메소드를 만들 수 없음

public void test () {
}

class Test {
	
}


*/

MyUtil util = new MyUtil();


%>

<%!

	// 선언부
	// 최대 범위가 이 클래스 내부 라서 잘 안 쓰게 됨	
	// 그래서 보통 전통적인 방식으로 클래스를 만들어서 함 (=  MyUtil) 
	public int b = 20;

	public int sum(int a, int b) {
	return a + b;
	}
	
	

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  ex08.jsp  -->

<div>10 + 20 = <%= sum(10, 20) %></div>
<div>30 + 40 = <%= sum(30, 40) %></div>
<div>50 + 60 = <%= util.sum(50, 60) %></div>

</body>
</html>