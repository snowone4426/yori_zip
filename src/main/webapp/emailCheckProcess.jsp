<%@page import="dto.UserObj"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
String email = request.getParameter("checkEmail");
UserDAO dao = new UserDAO();
UserObj dto = dao.emailCheck(email);

if(dto.getEmail() != null){
	out.println("<script>alert('이미 존재하는 이메일입니다');</script>");
	
}else{
	out.println("<script>alert('사용 가능한 이메일입니다');</script>");
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