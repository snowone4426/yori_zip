<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.RepleObj"%>
<%@ page import = "dao.RepleDAO" %>
<% 
	//reple_id 받기
	String reple_id = request.getParameter("reple_id");
	
	//dto 객체 생성
	RepleObj dto = new RepleObj();
	dto.setReple_id(reple_id);
	
	//dao 객체 생성
	RepleDAO dao = new RepleDAO();
	int result = dao.deleteReple(dto);
		
		if(result ==1){
			response.sendRedirect("reple.jsp");
		}else{
			request.getRequestDispatcher("reple.jsp").forward(request, response);
		}
	

%>