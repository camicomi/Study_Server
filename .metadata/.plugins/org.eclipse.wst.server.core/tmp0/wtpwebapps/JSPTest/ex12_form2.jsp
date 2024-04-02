<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
	
</style>
</head>
<body>
	<!-- 문제 http://192.168.10.30:8090/jsp/ex12_form2.jsp -->
	<h1>버튼 만들기</h1>
	<form method="POST" action="ex12_ok2.jsp">
	<table>
		<tr>
			<th>너비(px)</th>
			<td>
				<input type="number" min="20" max="300" step="10" value="120" name="width"> 
			</td>
		</tr>
		<tr>
			<th>높이(px)</th>
			<td>
				<input type="number" min="10" max="200" step="10"  value="30" name="height">
			</td>
		</tr>
		<tr>
			<th>텍스트</th>
			<td>
				<input type="text" value="Button" name="txt">
			</td>
		</tr>
		<tr>
			<th>배경색</th>
			<td>
				<input type="color" name="color1">
			</td>
		</tr>
		<tr>
			<th>글자색</th>
			<td>
				<input type="color" name="color2">
			</td>
		</tr>
		<tr>
			<th>글자 크기(px)</th>
			<td>
				<input type="number" min="10" max="100" value="16" name="fontsize">
			</td>
		</tr>
		<tr>
			<th>버튼 개수(ea)</th>
			<td>
				<input type="number"  min="1" max="30" value="1" name="count">
			</td>
		</tr>
		<tr>
			<th>버튼 간격</th>
			<td>
				<div>
				좌우 간격 : <input type="range" min="0" max="50" value="0" name="leftright">
				</div>
				<div>
				상하 간격 : <input type="range" min="0" max="50" value="0" name="topbottom">
				</div>
			</td>
		</tr>
		<tr>
			<th>아이콘</th>
			<td>
			<label>
			<!--  https://fontawesome.com/  -->
				<input type="radio" name="icon" value="none" checked> 없음
				<input type="radio" name="icon" value="house"> <i class="fa-solid fa-house"></i>
				<input type="radio" name="icon" value="picture"> <i class="fa-solid fa-image"></i>
				<input type="radio" name="icon" value="map"> <i class="fa-solid fa-location-dot"></i>
				<input type="radio" name="icon" value="github"> <i class="fa-brands fa-github"></i>
				<input type="radio" name="icon" value="clip"> <i class="fa-solid fa-paperclip"></i>
			</label>
			</td>
		</tr>
		<tr>
			<th>테두리</th>
			<td>
				<select name="sel1">
					<option value="1">감추기</option>
					<option value="2">보이기</option>
				</select>
			</td>
		</tr>
			
	</table>
	<div>
		<input type="submit" value="보내기">
	</div>
</form>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script>
		
	</script>
</body>
</html>