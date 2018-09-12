<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="member.model.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String modifyId = request.getParameter("modifyId");
	String modifyPw = request.getParameter("modifyPw");
	String modifyName = request.getParameter("modifyUserName");
	String modifyImg = request.getParameter("modifyUserImg");
	int modifyIdx = Integer.parseInt(request.getParameter("modifyIdx"));
	
	MemberInfo modifyMember = null;
	
	List<MemberInfo> modifyList = null;
	
	if(application.getAttribute("userList") != null){
		modifyList = (List<MemberInfo>)application.getAttribute("userList");
	}else{
		modifyList = new ArrayList<MemberInfo>();
	}
	
	if(modifyList != null){
		modifyList.set(modifyIdx, new MemberInfo(modifyId, modifyPw, modifyName, modifyImg));
		application.setAttribute("userList", modifyList);
	}
	
	response.sendRedirect("memberList.jsp");
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