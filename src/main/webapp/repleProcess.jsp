<%@page import="dao.RepleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.RepleObj" %>
    
<% 
	//댓글 입력한 폼값 받기
	String reple = request.getParameter("repleText");
%>  

<%
	//RepleObj(dto)객체에 폼에서 불러온 값 세팅
	RepleObj dto= new RepleObj();
	dto.setContents(reple);
	//dto.setUser_id(session.getAttribute("user_id").toString());
	dto.setUser_id("2");
	//dto.setRecipe_id(session.getAttribute("recipe_id").toString());
	dto.setRecipe_id("9");
%>

<%
	//dao 객체를 통해 db에 dto저장
	RepleDAO dao = new RepleDAO();
	int result = dao.insertReple(dto);
%>
<% 		
	//글 db입력 시 성공/실패여부 처리
	if(result==1){
		response.sendRedirect("reple.jsp");
	}else{
		request.getRequestDispatcher("reple.jsp").forward(request, response);
	}
%>
  