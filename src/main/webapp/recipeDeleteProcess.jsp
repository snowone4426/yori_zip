<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.RecipeObj"%>
<%@ page import = "dao.RecipeDAO" %>
<% 
	//reple_id 받기
	String recipe_id = request.getParameter("recipe_id");
	
	//dto 객체 생성
	RecipeObj dto = new RecipeObj();
	dto.setRecipe_id(recipe_id);
	
	//dao 객체 생성
	//RecipeDAO dao = new RecipeDAO();
	//int result = dao.deleteRecipe(dto);
		
	//	if(result ==1){
	//		response.sendRedirect("main.jsp");
	//	}else{
	//		request.getRequestDispatcher("recipeDetail.jsp").forward(request, response);
	//	}
	

%>