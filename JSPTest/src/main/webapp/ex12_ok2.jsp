<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");

	int width = Integer.parseInt(request.getParameter("width"));
	int height = Integer.parseInt(request.getParameter("height"));
	String txt = request.getParameter("txt");
	String color1 = request.getParameter("color1");
	String color2 = request.getParameter("color2");
	int fontsize = Integer.parseInt(request.getParameter("fontsize"));
	int count = Integer.parseInt(request.getParameter("count"));
	int leftright = Integer.parseInt(request.getParameter("leftright"));
	int topbottom = Integer.parseInt(request.getParameter("topbottom"));
	String icon = request.getParameter("icon");
	int sel1 = Integer.parseInt(request.getParameter("sel1"));
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>


	.button {
	
		
		width : <%= width %>px;
		height : <%= height %>px;
		background-color : <%= color1 %>;
		color : <%= color2 %>;
		font-size : <%= fontsize %>px;
		margin : <%= topbottom %>px <%= leftright %>px;
		border : <%= sel1 == 1? "none" : "1px solid black" %>;

	}
	

</style>
</head>
<body>

	<h1>결과</h1>
	<table>
		<tr>
			<th>버튼</th>
		</tr>
		<%
			for (int i = 0; i< count; i++) {
		%>
		<tr>
			<td>
				<button class="button">
				<% if (!icon.equals("none")) { %>
					<i class="fa-solid fa-<%= icon %>"></i>
				<% } %>
				<%= txt %>
				</button>
				<% } %>
			</td>
		</tr>
	</table>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script>
		
	</script>
</body>
</html>