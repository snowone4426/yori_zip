<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.ThemeListDAO2"%>
<%@ page import = "dto.RecipeObj"%>
<%@ page import = "java.util.List" %>

<%	
	String tagid = "5";
	ThemeListDAO2 dao2 = new ThemeListDAO2();
	RecipeObj dto2 = new RecipeObj();
	// tagid는 임의로 받아야 하나 '-'고민을 해보자
	List<RecipeObj> themeList = dao2.getThemeList(tagid);
	dao2.close();
%>

<div class = "cards">
	<%
		int count = 0;
		for(RecipeObj themli : themeList) {
			count++;
			if(count==1) { %> <ul> <% } %> 
			<li class="card">
			<a href="http://localhost:8080/yori_zip/recipedetail.jsp?recipe_id=<%=themli.getRecipe_id() %>">
			<img class = "card_photo" src = "<%= themli.getThumbnail()%>"> 
			<div class="card_desc">
				<div class = "card_subTitle"><%=themli.getSubtitle() %> </div>
				<div class = "card_title"><%= themli.getTitle() %></div>
				<div class = "card_score">
					<img class="card_level" src = "./images/difficulty.png"><%= themli.getLevel() %>
					<img class="card_level" src = "./images/time.png"><%= themli.getTime() %>
					<img class="card_level" src = "./images/score.png"><%= themli.getStar_score() %>
				</div>
			</div>
			</a> 
			</li>
	<% 		
			if(count == themeList.size()) { %> </ul> <% 
				}
		}%>
		
	
	
</div>