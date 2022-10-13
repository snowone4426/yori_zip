<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.UserObj" %>
<%@ page import="dao.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" href="css/main.css">
<style>


nav{
width: 100vw;
height:150px;

}

.nav_h{
	display: flex;
	justify-content: space-between;
	flex-wrap:nowrap;
	padding: 10px 0;
}

.search{
  
  background-color: #fff;
  
}
.search:hover{
	border-bottom: 2px solid  #585858;;
}

.search input{
  font-size: 24px;
  border:none;
  outline:none;
  float:left;
  line-height:77px;
  transition: .4s;
}

.search:hover > .search input{
padding: 0 5px;
width:577px;
}

.search button{
  background-color:white;
  border:none;
  height:77px;
}
.search img{
  display:flex;
  justify-content:right;
  align-items:center;
  height: 55px;
  width: 55px;
  
}
.nav_h_r{
	float:left;
	display:flex;
	justify-content: flex-end;
}

.nav_h_r .login {
	padding:0 10px;
	padding-left: 20px;
	width: 120px;
	height: 77px;
	text-decoration:none;	
	font-family: 'Yuji Mai';
	font-style: normal;
	font-weight: 400;
	font-size: 24px;
	line-height: 77px;
	display: flex;
	align-items: center;
	text-align: center;
	color: #000000;
	}
	
.nav_h_r .logout {
	padding:0 10px;
	padding-left:20px;
	width: 140px;
	height: 77px;
	text-decoration:none;	
	font-family: 'Yuji Mai';
	font-style: normal;
	font-weight: 400;
	font-size: 24px;
	line-height: 77px;
	display: flex;
	align-items: center;
	text-align: center;
	color: #000000;
	}
	
.nav_h_r .male img {
	width: 77px;
	height: 77px;	
	display: flex;
	justify-content:right;
	align-items: center;
	text-align: center;
	}
.nav_h_r .female img{
	width: 77px;
	height: 77px;	
	display: flex;
	justify-content:right;
	align-items: center;
	text-align: center;
	}
	
	
.nav_f{
	list-style:none;
}
.nav_f a {
	text-decoration:none;
	float:left;
}
.category span{
	padding-left: 15px;
	
}
.category a{
	
	padding:10px;
	width: 150px;
	height: 60px;
	font-family: 'Ultra';
	font-style: normal;
	font-weight: 400;
	font-size: 25px;
	line-height: 60px;
	/* identical to box height */
	display: flex;
	align-items: center;
	text-align: center;
	color: #000000;
	
}
.recent_rcp a, .recent_reg a{
	width: 135px;
	height: 65px;
	font-family: 'Ultra';
	font-style: normal;
	font-weight: 400;
	font-size: 18px;
	line-height: 65px;
	/* identical to box height */
	display: flex;
	align-items: center;
	text-align: center;
	color: #4E4E4E;
}


</style>
<nav>

<div class="nav_h">
	<div class="nav_h_l">
	<h1><a href = "main.jsp">logo</a></h1>
	</div>
		<div class="nav_h_r">
			<!-- 검색폼 -->
			<div class="search">
			<form method="get" action="#">
			<input type="text" name="searchword"/>
			<button type="submit"><img src="assets/search.png"></button>
			</form>
			</div>
				<% 
				//UserDAO dao = new UserDAO();
				//UserObj dto = dao.get
				//getUserObj(){
				//	UserObj dto= new UserObj();
				
				
				if(session.getAttribute("email")==null){ %> 
				<a href="loginMain.jsp" class="login">로그인</a>
				<%} else { %>
				 <%if(session.getAttribute("gender").equals("M")) {		
					%>
				<a href="#" class="male"><img src="assets/mypage_male.png"></a>
				<%} else { %>
				<a href="#" class="female"><img src="assets/mypage_female.png"></a>
				<%}%>
				
				
				
				<a href="logoutProcess.jsp" class="logout">로그아웃</a>	

				<%} %>
		</div>
</div>
<div class="nav_f">
	<ul>
		<div class="category"><li><a href="#">카테고리<span>|</span></a></li></div>
		<div class="recent_rcp" ><li><a href="#">최근 본 레시피</a></li></div>
		<% if(session.getAttribute("user_id")!=null){ %>
		<div class="recent_reg"><li><a href="#">레시피 등록</a></li></div>
		<%} %>	
	</ul>

</div>
</nav>


</body>
</html>