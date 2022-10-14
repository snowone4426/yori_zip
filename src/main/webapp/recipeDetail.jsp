<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.RecipeObj"%>
<%@ page import = "java.util.List" %>
<%@ page import = "dao.RecipeDAO" %>
<%@ page import = "java.util.Map" %>
<%@ page import = "java.util.HashMap" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">    

<style>
main{
	
	padding:57px;
}
.article{
	float:left;
}
.detail .mainimg{
	box-sizing: border-box;
	width: 910px;
	height: 606px;
	border: 2px solid #AAAAAA;
	margin: 10px 0;
}
.subtitle{
	font-family: 'Inter';
	font-style: normal;
	font-weight: 400;
	font-size: 24px;
	line-height: 29px;
	/* identical to box height */	
	color: #000000;
}

.title{
	height:50px;
	font-family: 'Inter';
	font-style: normal;
	font-weight: 800;
	font-size: 32px;
	line-height: 50px;
	/* identical to box height */
	color: #000000;
}
.level{
	width:20px;
	height:20px;
}
.level1{
	font-family: 'Inter';
	font-style: normal;
	font-weight: 400;
	font-size: 15px;
	line-height: 20px;
	display: flex;
	align-items: center;
	text-align: center;	
	color: #757474;
}

.nickname{
	width: 173px;
	height: 35px;
	font-family: 'Inter';
	font-style: normal;
	font-weight: 600;
	font-size: 22px;
	line-height: 35px;
	/* identical to box height */	
	text-align: left;

}
.date{
	width: 100px;
	height: 25px;	
	font-family: 'Inter';
	font-style: normal;
	font-weight: 400;
	font-size: 15px;
	line-height: 25px;
	text-align: left;	
	color: #828282;
}
.descr{

	width: 882px;
	height: 72px;	
	font-family: 'Inter';
	font-style: normal;
	font-weight: 200;
	font-size: 15px;
	line-height: 18px;
	color: #464646;
}
.box{
	width: 50px;
	height: 50px;	
	display: flex;
	justify-content:space-between;
}


aside{
	width:460px;
	float :right;
	border-left :  2px solid #888888;
}
aside .ingre{
	width: 150px;
	font-family: 'Inter';
	font-style: normal;
	font-weight: 700;
	font-size: 32px;
	line-height: 39px;
	/* identical to box height */
	text-align: center;
	color: #000000;
}
.name{
	
	width: 300px;
	height: 50px;
	
	
	font-family: 'Inter';
	font-style: normal;
	font-weight: 400;
	font-size: 26px;
	line-height: 50px;
	display: flex;
	align-items: center;
	text-align: center;
	
	color: #000000;
}
.quan {
	height: 50px;
	
	
	font-family: 'Inter';
	font-style: normal;
	font-weight: 400;
	font-size: 26px;
	line-height: 50px;
}
.quan_frame {
	display:flex;
}
.icon{
display:flex;
justify-content: flex-end;
}
.box{
display:flex;

}
</style>
</head>
<link rel="stylesheet" href="css/main.css">    
<body>
<jsp:include page="nav.jsp"/>
<main>
	<article class="article">
	<div class="detail">
	<%	String recipe_id= request.getParameter("recipe_id");
		//String recipe_id="1";
		RecipeDAO dao = new RecipeDAO();
		List<RecipeObj> recipe = dao.getRecipe(recipe_id);
		for(RecipeObj dto:recipe){
	
	%>
	<p><img src="<%=dto.getThumbnail() %>" class="mainimg"></p>
	<p class="subtitle"><%=dto.getSubtitle() %></p>
	<p class="title"><%=dto.getTitle() %></p>
	<p class="level1"><img src ="assets/level.png" class="level"><%=dto.getLevel() %>
	<img src ="assets/timecheck.png" class="time"><%=dto.getTime() %> </p>
	<div class="icon">
	<button type="button" onclick="location.href='reple.jsp';"><img src="assets/modify.png" class="box" id="modify"></button>
	
	
	</div>
	<hr>
	<!--  <p><%=dto.getProfile() %></p> -->
	<p class="nickname"><%=dto.getNickname() %></p>
	<p class="date"><%=dto.getCreate_at() %></p>
	<p class="descr"><%=dto.getDescription() %></p>
<% 	}%>
	</div>
	
	<%
		
		ArrayList<RecipeObj> detail = dao.getRecipedetail(recipe_id);
		
		
	%>
	<div>
	<table>
	
		<tr>
		<% for (int i=0;i<detail.size();i++){ %>
			<td><img src="<%=dao.getRecipedetail("photo") %>"></td>
			<td><%=dao.getRecipedetail("description") %></td>
			<% }%>
		<tr>
	
	</table>
	
	</div>
	</article>
	<aside>
	<p><div class="ingre">기본재료</div><p>
	<hr>
	<% 
	List<RecipeObj> ingredient = dao.getIngredient(recipe_id);
	for(RecipeObj dto : ingredient){
	
		%>
		
<div class="quan_frame">
<div><p class="name"><%=dto.getIngredient_name() %></p></div>
		<div><p class="quan"><%=dto.getIngredient_quantity() %></p></div>
		</div>		
		
		
	<% }
	%>
	</aside>

</main>

<jsp:include page="footer.jsp"/>
</body>
</html>