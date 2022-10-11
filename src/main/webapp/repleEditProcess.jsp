<%@page import="dto.RepleObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.RepleObj" %>
<%@ page import="dao.RepleDAO"%>
<%
	//RepleDAO에 추가할 메소드 명 updateRepleEdit()
	
	//repleEdit.jsp의 폼에서 받은 데이터 변수 설정
	String reple_id= request.getParameter("reple_id");
	String replecontent= request.getParameter("replecontent");

	//넘어온 값 dto에 저장
	RepleObj dto= new RepleObj();
	dto.setReple_id(reple_id);
	dto.setContents(replecontent);
	
%>
<%
	//dao 객체를 통해 db에 dto저장
	RepleDAO dao = new RepleDAO();
	int result = dao.updateRepleEdit(dto);
%>
<% 		
	//글 db입력 시 성공/실패여부 처리
	if(result==1){
		response.sendRedirect("reple.jsp");
	}else{
		request.getRequestDispatcher("repleEdit.jsp").forward(request, response);
	}
%>
  
