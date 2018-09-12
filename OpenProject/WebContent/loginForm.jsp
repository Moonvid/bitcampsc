<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 로그인</title>
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
		<h1>회원 로그인</h1>
		<hr>
		<!-- 로그인 폼에서 입력한 값을 login.jsp로 전달하여 처리 시킴 -->
		<form action="loginAccess.jsp" method="post">
			<table>
				<tr>
					<td><label for="id">아이디(이메일)</label></td>
					<td><input type="text" name="inputId"></td>
				</tr>
				<tr>
					<td><label for="password">비밀번호</label></td>
					<td><input type="password" name="inputPw"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>