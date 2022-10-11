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
%>

<div class = "cards">
	<%
		int count = 0;
		for(RecipeObj themli : themeList) {
			count++;
			%> <ul>  
			<li class="card"><img src = ".<%= themli.getThumbnail()%>"> <br>
			<%=themli.getSubtitle() %> <br>
			<b><%= themli.getTitle() %></b> <br>
			<%= themli.getLevel() %>
			<%= themli.getTime() %>
			<%= themli.getStar_score() %> </li>
	<% 		
			if(count == themeList.size()) { %> </ul> <% 
				}
		}%>
		
	
	
</div>