<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="member.model.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%	

	request.setCharacterEncoding("utf-8");
	// memberList에서 삭제할려고 하는 멤버의 index 값을 넘겨받아 int형으로 형변환한다.
	int idx = Integer.parseInt(request.getParameter("memberIdx"));
	
	// application에 저장된 값 불러와서 List에 저장
	List<MemberInfo> memberList = null;
	
	if(application.getAttribute("userList") != null){
		memberList = (List<MemberInfo>)application.getAttribute("userList");
	}else{
		memberList = new ArrayList<MemberInfo>();
	}
	
	// List에 저장된 값 확인 후 해당 index 삭제 및 자동 sort 후 다시 application에 저장
	if(memberList != null){
		memberList.remove(idx);
		application.setAttribute("userList", memberList);
	}
	
	// 삭제 처리 완료 후 다시 memberList 페이지 보여줌
	response.sendRedirect("memberList.jsp");

	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	삭제 페이지
</body>
</html>