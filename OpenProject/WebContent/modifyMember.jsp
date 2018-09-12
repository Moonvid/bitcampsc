<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	// memberList에서 수정할려고 하는 멤버의 index 값을 넘겨받아 int형으로 형변환한다.
	int idx = Integer.parseInt(request.getParameter("memberIdx"));
	
	// application에 저장된 값 불러와서 List에 저장
	List<MemberInfo> memberList = null;
		
	if(application.getAttribute("userList") != null){
		memberList = (List<MemberInfo>)application.getAttribute("userList");
	}else{
		memberList = new ArrayList<MemberInfo>();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 수정</title>
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
		<h1>회원정보 수정</h1>
		<hr>
		<form action="modifyAccess.jsp" method="post">
			<table>
				<tr>
					<td><label for="id">아이디(이메일)</label></td>
					<td><input type="text" name="modifyId" value="<%=memberList.get(idx).getId()%>" readonly ></td>
				</tr>
				<tr>
					<td><label for="password">비밀번호</label></td>
					<td><input type="password" name="modifyPw" required></td>
				</tr>
				<tr>
					<td><label for="name">이름</label></td>
					<td><input type="text" name="modifyUserName" value="<%=memberList.get(idx).getName()%>" required></td>
				</tr>
				<tr>
					<td><label for="userImg">사진</label></td>
					<td><input type="file" name="modifyUserImg"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="수정완료"></td>
					<td><input type="hidden" name="modifyIdx" value="<%=idx%>"></td>
				</tr>
			</table>
		</form>
	</div>




</body>
</html>