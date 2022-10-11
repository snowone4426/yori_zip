<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.ThemeListDAO" %>
<%@ page import = "dto.ThemeListDTO" %>
<%@ page import = "java.util.List" %>
<%
ThemeListDAO dao = new ThemeListDAO();
ThemeListDTO dto = null;

List<ThemeListDTO> list = dao.getThemeList();
dto = list.get(0);
%>
<div class="themeHead">
<img src="<%=dto.getThumbnail()%>">
</div>

<div class="themeItem">
<%
    int count = 0;
	for(ThemeListDTO li : list) { 
		count++;
      if (count == 1){ continue; }
	  if (count == 2){ %><ul><%  }
%>      <li><img src="<%=li.getThumbnail()%>"></li>
<%  
      if (count == list.size()){ %></ul><%  }
	}
%>
</div>