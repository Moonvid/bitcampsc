<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.MemberInfo"%>
<%@ page import="java.util.*"%>
<%

	request.setCharacterEncoding("utf-8");
	
	// memberRegForm으로부터 넘겨받은 param 값을 각각 변수에 저장한다.
	String id = request.getParameter("userId");
	String pw = request.getParameter("userPw");
	String name = request.getParameter("userName");
	String img = request.getParameter("userImg");
	
	// 각 param 값을 MemberInfo 타입으로 저장 및 초기화하기 위한 변수 member 선언 
	MemberInfo member;
	
	// MemberInfo 타입으로 초기화 한 데이터를 객체형으로 저장하기 위한 ArrayList list 선언
	List<MemberInfo> userList = null;
	
	// application에 userList로 저장된 속성 값이 존재한다면 userList에 선언해준다.
	if(application.getAttribute("userList") != null){
		userList = (List<MemberInfo>)application.getAttribute("userList");
	}else{
		userList = new ArrayList<MemberInfo>();
	}
	
	
	// ArrayList에 각 속성 값이 담긴 객체형으로 값을 add 해준다.
	userList.add(new MemberInfo(id, pw, name, img));
	
	// ArrayList에 저장된 값을 application 저장소에 저장하여 세션 좋료 후에도 재사용 할 수 있도록 함.	
	application.setAttribute("userList", userList);
	
	
	// 회원 가입이 완료되면 loginForm 으로 redirect 시켜준다.
	response.sendRedirect("loginForm.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>