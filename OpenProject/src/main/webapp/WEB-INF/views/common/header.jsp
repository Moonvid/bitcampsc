<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<h1 class="title">Open Project</h1>
	
	<ul id="gnb">
		<li><a href="<%=request.getContextPath() %>/">Home</a></li>
        <li><a href="<%=request.getContextPath() %>/member/memberReg">회원가입</a></li>        
        <li><a href="<%=request.getContextPath() %>/member/login">로그인</a></li>
        <li><a href="<%=request.getContextPath() %>/logout.jsp">로그아웃</a></li>
        <li><a href="<%=request.getContextPath() %>/mypage/myPage.jsp">마이페이지</a></li>
        <li><a href="<%=request.getContextPath() %>/memberList.jsp">회원리스트</a></li>
    </ul>