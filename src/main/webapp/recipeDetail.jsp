<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.RecipeObj"%>
<%@ page import = "java.util.List" %>
<%@ page import = "dao.RecipeDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/main.css">    
<body>
<main>
	<article>
	<div>
	<%	String recipe_id= request.getParameter("recipe_id");
	System.out.println(recipe_id);
		RecipeDAO dao = new RecipeDAO();
		List<RecipeObj> recipe = dao.getRecipe(recipe_id);
		for(RecipeObj dto:recipe){
	
	%>
	<p><img src="<%=dto.getThumbnail() %>"></p>
	<p><%=dto.getSubtitle() %></p>
	<p><%=dto.getTitle() %></p>
	<p><%=dto.getLevel() %></p>
	<p><%=dto.getTime() %></p>
	<p><%=dto.getProfile() %></p>
	<p><%=dto.getNickname() %></p>
	<p><%=dto.getCreate_at() %></p>
	<p><%=dto.getDiscription() %></p>
<% 	}%>
	</div>
	
	<div></div>
	</article>
	<aside></aside>

</main>
</body>
</html>