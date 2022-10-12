<%@page import="dto.UserObj"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String nickname = request.getParameter("checkNick");
UserDAO dao = new UserDAO();
UserObj dto = dao.nickCheck(nickname);

if(dto.getNickname() != null){
	out.println("<script>alert('이미 존재하는 닉네임입니다');</script>");
	
}else{
	out.println("<script>alert('사용 가능한 닉네임입니다');</script>");
}


%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>