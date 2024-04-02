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
	<!-- ex15_pagecontext_1.jsp  -->
	<h1>첫번째 페이지</h1>
	<%
	
	
		// response.sendRedirect() vs pageContext.forward()
		
		// 첫번째 페이지 > (이동) > 두번째 페이지
		// - 첫번째 페이지에서 사용하던 자원을 두번째 페이지에 전달
		
		// 웹은 상태 관리가 안된다. (Stateless)
		
		// jspService() 내의 지역 변수
		int num = 100;
		
		request.setAttribute("num", num);
		pageContext.setAttribute("num", num);
		
		// 단순 페이지 이동용.
		// response.sendRedirect("ex15_pagecontext_2.jsp");
		
		// 아래를 사용하면 데이터가 살아 있음 
		// 클라이언트 이동이 아닌 서버측 이동을 해서 그렇다. 1->2.jsp
		// url 변화가 없음..
		// 데이터 들고 가는 이동용
		// pageContext.forward("ex15_pagecontext_2.jsp");
		
		// pageContext.include("ex15_pagecontext_2.jsp"); // 잘 안씀.
		
		
	
	
	%>
	
 <div>num : <%= request.getAttribute("num") %></div>
 
  <a href="ex15_pagecontext_2.jsp">이동하기</a>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script>
		
	</script>
</body>
</html>