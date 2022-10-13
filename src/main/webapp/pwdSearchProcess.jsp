<%@page import="dto.UserObj"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<%

String email = request.getParameter("checkEmail");
//String question = request.getParameter("checkQuestion");
int question = Integer.parseInt(request.getParameter("checkQuestion"));
String answer = request.getParameter("checkAnswer");

UserDAO dao = new UserDAO();
UserObj dto = dao.searchPwd(email, question, answer);

if(dto.getEmail() != null && dto.getQuestion() != 0 && dto.getAnswer() != null){
	out.println("비밀번호는 " + dto.getPassword() + " 입니다");
	System.out.println(dto.getEmail());
	System.out.println(dto.getQuestion());
	System.out.println(dto.getAnswer());
	
}else{
	out.println("<script>alert('정보가 일치하지 않습니다');</script>");
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

