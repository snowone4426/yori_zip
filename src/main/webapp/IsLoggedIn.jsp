<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("user_id")==null){
		out.print("<script>alert('로그인 후 댓글 작성이 가능합니다.');</script>");
		request.getRequestDispatcher("loginMain.jsp").forward(request, response);
		//out.println("<script>location.href='loginMain.jsp';</script>");
		
		//script창에서 주소이동하는것 추후 구현
		//confirm 사용해서하기!
	}
%>