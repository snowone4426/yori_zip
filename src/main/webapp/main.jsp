<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<link rel="stylesheet" type="text/css" href="./css/main.css">
<style>
	
	#container{
		width : 100%;
		display : grid;
		grid-template-rows : 3fr 20fr 3fr;
		grid-template-areas :
		'header'
		'main'
		'footer'; 
	}
	#bannerArea{
		padding-left: 10%;
	}
	
	 .themeArea {padding-left: 10%;
	 			margin-top : 20px;
	 			height: 300px;}
	 			
	 .themeHead {
	 	width: 90%;
	 	margin-bottom : 10px;}
	
	 .theme     { width: 90%; }
	   
   .cards { width: 100%; }
   .cards ul {
   		width : 100%;
   		list-style : none;
   		}
   	.cards a {
   		text-decoration : none;
   	}
   	.card{
   		width : 25%;
   		float : left;
   	}
   	.card_desc {
   		height : 50px;
   	}
   	.card_subTitle, .card_title, .card_score {
   		font-size : 12px;
   	}
   	.card_title {
   		font-weight : bold;
   	}

    	
   	.card_photo{
   		width : 100%;
   	}
   
   .popArea {
	   padding-left: 10%;
	   margin-top : 30px;
	   clear: both;}
	 			
	.popHead {width: 90%;
	 	margin-bottom : 10px;}
	 	
   .popmenu {
   width : 90%;
   }
   
   
   
   
</style>
</head>
<body>
	 <div id="container">
      <header>
         <nav>
           <%@ include file = "nav.jsp" %>
         </nav>
       </header>
       <main id="contents">
         <div id="bannerArea">
            <%@ include file = "banner.jsp" %>
         </div>
         <div class = "themeArea">
            <div class="themeHead">This Week's Theme</div>
            <div class="theme">
				<%@ include file = "themeList2.jsp" %>
			</div>
         </div>
         <div class = "popArea">
            <div class="popHead">Popular Recipes</div>
            <div class="popmenu">
				<%@ include file = "popList.jsp" %>
			</div>
         </div>
         
       </main>
      <footer><%@ include file = "footer.jsp"%></footer>
      
   </div>
</body>
</html>