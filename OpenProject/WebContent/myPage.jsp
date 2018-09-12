<%@page import="member.model.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	MemberInfo memberinfo = (MemberInfo)request.getSession().getAttribute("user");
	
%>
<%
	
	if(memberinfo == null){
		%>
		
	<script>
		alert('로그인 후 사용가능한 서비스입니다.');
		location.href = 'loginForm.jsp';
	</script>
<%
		
	}else{
		
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" href="css/default.css">
<style>
h1, td {
	padding: 10px;
}
#info{
	margin-left:4px;
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
				<td><%=memberinfo.getId() %></td>
			</tr>
			<tr>
				<td><label for="name">이름</label></td>
				<td><%=memberinfo.getName() %></td>
			</tr>
		</table>
	</div>
	<%} %>
</body>
</html>