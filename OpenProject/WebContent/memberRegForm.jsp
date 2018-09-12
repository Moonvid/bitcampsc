<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="css/default.css">
<style>
h1, td {
	padding: 10px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div id="contents">
		<h1>회원 가입</h1>
		<hr>
		<form action="signUpComplete.jsp" method="post">
			<table>
				<tr>
					<td><label for="id">아이디(이메일)</label></td>
					<td><input type="text" name="userId" required></td>
				</tr>
				<tr>
					<td><label for="password">비밀번호</label></td>
					<td><input type="password" name="userPw" required></td>
				</tr>
				<tr>
					<td><label for="name">이름</label></td>
					<td><input type="text" name="userName" required></td>
				</tr>
				<tr>
					<td><label for="userImg">사진</label></td>
					<td><input type="file" name="userImg"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록"></td>
				</tr>
			</table>
		</form>
	</div>




</body>
</html>