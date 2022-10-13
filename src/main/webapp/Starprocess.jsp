<%@ page import="dao.StarDAO"%>
<%@ page import = "java.util.Map"  %>
<%@ page import = "java.util.HashMap"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="IsLoggedIn.jsp" %>   
    
    
<%
        //별 폼값 받기
        	String star_score = request.getParameter("reviewStar");
			
        	StarDAO dao= new StarDAO();
        	Map<String, String> star = new HashMap<>();
        	star.put("star_score", star_score);
        	star.put("user_id", session.getAttribute("user_id").toString());
        	star.put("recipe_id", "6");
        	
        	int result = dao.insertStar(star);
        	
        	if(result ==1){
        		request.getRequestDispatcher("reple.jsp").forward(request,response);
        		
        	}
        		
        %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>