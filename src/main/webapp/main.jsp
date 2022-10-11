<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<style type="">
	#container{
		width : 100%;
		display : grid;
		grid-template-rows : 3fr 20fr 3fr;
		grid-template-areas :
		'header'
		'main'
		'footer'; 
	}
	 ul {
	     list-style-type : none;
	 }
	 .themeArea {padding-left: 10%;
	 			margin-top : 20px;
	 			height : 220px;}
	   .theme     { width: 90%; }
   .themeHead { width: 40%; height: 200px; float: left; }
   .themeHead img { width: 100%; height: 100%;}
   .themeItem { width: 60%; height: 100px; float: left; }
   .themeItem ul { margin: 0 0 0 20px; padding: 0; width: 100%; height: 50px; float: left; }
   .themeItem li { margin: 0 5px; width: 100px; height: 100px; float: left;}

   .themeItem img { width: 100%; height: 100%;}
   
   .popArea {padding-left: 10%;
	 			margin-top : 20px;
	 			clear: both;}
   .popmenu {}
   
   .cards ul li img{
   		width : 20%;
   		height : 20%;
   }
   
   
</style>
</head>
<body>
	 <div id="container">
      <header>
         <div id="logo">
            <h1>로고가 올거시야</h1>
         </div>
         <nav>
           <ul id="topMenu">
            <li> 네비게이션에 들어갈 카테고리 메뉴가 올거시야</li>
           </ul>
         </nav>
       </header>
       <main id="contents">
         <div id="bannerArea">
            <%@ include file = "banner.jsp" %>
         </div>
         <div class = "themeArea">
            <div class="theme">This Week's Theme</div>
            <div class="theme">
				<%@ include file = "themeList2.jsp" %>
			</div>
         </div>
         <div class = "popArea">
            <div class="popmenu">Popular Recipes</div>
            <div class="popmenu">
				<%@ include file = "popList.jsp" %>
			</div>
         </div>
         
       </main>
      <footer><%-- include file = "정은이가 만든 footer.jsp" --%></footer>
      
   </div>
</body>
</html>