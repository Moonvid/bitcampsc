<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/default.css">
<style>
h1, td {
	padding: 10px;
}
#memberPhoto{
	background-image: url('images/no-Image.png');
	background-size: 100%;
	width: 150px;
	height: 150px;
	border: 1px solid #333333;
	border-radius: 75px;
	margin: 20px 0;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div id="info">
		<h1>회원 정보</h1>
		
		<div id="memberPhoto"></div>
		
		<hr>
		<table>
			<tr>
				<td><label for="id">아이디(이메일)</label></td>
				<td></td>
			</tr>
			<tr>
				<td><label for="name">이름</label></td>
				<td></td>
			</tr>
			<tr>
				<td><label for="pic">사진</label></td>
				<td></td>
			</tr>
		</table>
	</div>



</body>
</html>