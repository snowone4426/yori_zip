<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.PopularListDAO"%>
<%@ page import = "dto.RecipeObj"%>
<%@ page import = "java.util.List" %>

<%
	PopularListDAO dao1 = new PopularListDAO();
	RecipeObj dto1 = new RecipeObj();

	List<RecipeObj> popularList = dao1.getPopList();
	dao1.close();
	//dto1 = popularList.get(0);
%>
	

<div class = "cards">
	<% 
	int count1 = 0;
	for(RecipeObj popli : popularList) {
		count1++;
	%> <% if(count1==1) {%> <ul> <% } %>
		<li class = "card">
		<a href = "http://localhost:8080/yori_zip/recipedetail.jsp?recipe_id=<%=popli.getRecipe_id() %>">
		<div class="card_frame"><img class = "card_photo" src = "<%=popli.getThumbnail() %>"></div>
		<div class="card_desc">
			<div class = "card_subTitle"><%=popli.getSubtitle() %></div> 
			<div class = "card_title"><%=popli.getTitle() %></div>
			<div class = "card_score">
				<img class="card_level" src = "./images/difficulty.png"><%= popli.getLevel() %>
				<img class="card_level" src = "./images/time.png"><%= popli.getTime() %>
				<img class="card_level" src = "./images/score.png"><%= popli.getStar_score() %>	
			</div>
		</div>
		 </a>
		</li>
<%
		if(count1 == popularList.size()) { %>	</ul> <% } 
	}
		%>		
</div>