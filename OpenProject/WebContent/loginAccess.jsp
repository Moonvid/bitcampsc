<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.model.MemberInfo"%>
<%@ page import="java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
	
	// 로그인 폼에서 입력받은 id 와 pw 를 param으로 받아서 userId, password에 저장
	String id = request.getParameter("inputId");
	String pw = request.getParameter("inputPw");
	
	// application 저장소에서 가져온 데이터를 형변환하여 담기 위한 ArrayList 선언 및 초기화
	List<MemberInfo> chkList = null;
	
	// application에 저장된 데이터가 있다면 불러와서 chkList에 선언해준다.
	if(application.getAttribute("userList") != null){
		chkList = (List<MemberInfo>)application.getAttribute("userList");
	}else{
		// 없다면 새로 생성
		chkList = new ArrayList<MemberInfo>();
	}
%>

<%
	
	// 로그인 폼에서 아이디/비밀번호 모두 입력 하였을 때
	if(id != null && pw != null){
		
		// MeberInfo형 변수 memberinfo 선언 및 null로 초기화 후
		MemberInfo memberinfo = null;
		
		// List의 크기만큼 for문을 돌려서 로그인 폼에서 입력한 id 값과 같은 저장된 id 값을
		// 찾으면 객체변수 memberinfo에 저장하고 이 후 불필요한 for문 반복은 break 시켜준다.
		for(int i=0;i<chkList.size();i++){
			if(chkList.get(i).getId().equals(id)){
				memberinfo = chkList.get(i);
				break;
			}
		}
		
		
		// 이제 로그인폼에서 입력 받은 데이터와 application 저장소에 저장된 데이터를 비교 후
		// 일치하는 내용이 있으면 로그인 성공 및 세션 생성, 없다면 다시 로그인 화면으로 돌려준다.
		if(memberinfo != null && memberinfo.getPw().equals(pw)){
			request.getSession().setAttribute("user", new MemberInfo(memberinfo.getId(),"",memberinfo.getName(),memberinfo.getImg()));
			response.sendRedirect("myPage.jsp");
		}
		
		
	}
%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 확인</title>
<link rel="stylesheet" href="css/default.css">
<style>
	h1, td{
		padding: 10px;
	}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div id="contents">
		<h2>로그인</h2>
		<hr>
		<h1>아이디 또는 비밀번호가 틀립니다. 확인해주세요.</h1>
		<h1><a href="loginForm.jsp">다시 로그인하기</a></h1>
	</div>
</body>
</html>