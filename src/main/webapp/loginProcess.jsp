<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="dao.UserDAO" %>
<%@ page import="dto.UserObj" %>  
<%@ page import="util.*" %>  
    
<%

// loginMain 폼으로 부터 이메일, 비밀번호 받기
	String email = request.getParameter("user_email"); //이메일
	String password = request.getParameter("user_password"); // 비밀번호
	
	UserDAO dao = new UserDAO();
	UserObj dto = dao.getUserObj(email, password);
	
// 로그인 성공 여부
	if(dto.getEmail() != null){
		session.setAttribute("email", dto.getEmail());
		session.setAttribute("password", dto.getPassword());
		session.setAttribute("user_id", dto.getUser_id());
		session.setAttribute("gender", dto.getGender());
		session.setAttribute("type", dto.getType());
		
		
		
		
		
		dao.updateTime(email);
		// 로그인 성공 시 메인페이지로 이동
		response.sendRedirect("reple.jsp");
		
	}else{
		
		// 로그인 실패 시 창 띄우기
		
		// 나중에 변경
		//request.setAttribute("LoginErrMsg", "로그인 오류 아이디, 비밀번호 확인");
		out.println("<script>alert('이메일 또는 비밀번호가 틀렸습니다');</script>");
		//request.getRequestDispatcher("loginMain.jsp").forward(request, response);
		out.println("<script>location.href='loginMain.jsp';</script>");
		
	}
	dao.close();	
%>    
