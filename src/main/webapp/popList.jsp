<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.PopularListDAO"%>
<%@ page import = "dto.RecipeObj"%>
<%@ page import = "java.util.List" %>

<%
	PopularListDAO dao1 = new PopularListDAO();
	RecipeObj dto1 = new RecipeObj();

	List<RecipeObj> popularList = dao1.getPopList();
	//dto1 = popularList.get(0);
%>
	

<div class = "cards">
	<% 
	int count1 = 0;
	for(RecipeObj popli : popularList) {
		count1++;
	%> <ul>
		<li class = "card"><img src = ".<%=popli.getThumbnail() %>"><br>
		<%=popli.getSubtitle() %> <br>
		<b><%=popli.getTitle() %></b> <br>
		<%= popli.getLevel() %>
		<%= popli.getTime() %>
		<%= popli.getStar_score() %></li>
<%
		if(count1 == popularList.size()) { %>	</ul> <% } 
	}
		%>		
</div>