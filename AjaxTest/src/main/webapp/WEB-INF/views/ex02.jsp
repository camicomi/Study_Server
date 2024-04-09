<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	#iframe1 {
	
		width: 100%;
		height: 600px;
	
	}
	
</style>
</head>
<body>

	<!-- 문서 내 일정 부분 다른 페이지 보여주기  -->	
	<iframe id= "iframe1" src="/ajax/ex01.do" frameborder="0" scrolling="no"></iframe>
	
	<hr>
	
	<!--  페이지 새로고침시 내용 유지 방법이지만  -->
	<h2>다른 내용</h2>
	<div>
		<input type="text">
		<br><br>
		<input type="checkbox">
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script>
		
	</script>
</body>
</html>