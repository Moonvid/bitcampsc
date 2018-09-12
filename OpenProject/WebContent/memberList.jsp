<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.model.MemberInfo"%>
<%@ page import="java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
	
	// 로그인 유무를 확인하기 위해 기존 저장된 세션을 확인한다.
	MemberInfo memberinfo = (MemberInfo)request.getSession().getAttribute("user");
	
	if(memberinfo == null){
%>

<script>
	alert('로그인 후 사용가능한 서비스입니다.');
	location.href = 'loginForm.jsp';
</script>

<%
	}else{
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
<title>마이 페이지</title>
<link rel="stylesheet" href="css/default.css">
<style>
h1, td {
	padding: 10px;
}

#memberPhoto {
	background-image: url('images/no-Image.png');
	background-size: 100%;
	width: 150px;
	height: 150px;
	border: 1px solid #333333;
	border-radius: 75px;
	margin: 20px 0;
}

#memberInfo td{
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div id="memberInfo">
		<h1>회원 리스트</h1>
		<hr>
		<table>
			<tr>
				<td><label for="id">아이디(이메일)</label></td>
				<td><label for="name">이름</label></td>
			</tr>
			<%
			for(int i=0;i<memberList.size();i++){
			%>	
			<tr>
				<td><%=memberList.get(i).getId() %></td>
				<td><%=memberList.get(i).getName() %></td>
			</tr>
			<%}%>
		<%}%>
		</table>
	</div>



</body>
</html>
