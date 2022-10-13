<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import = "dao.SearchListDAO" %>
<%@ page import = "dto.RecipeObj" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Vector" %>
<%
   SearchListDAO sdao = new SearchListDAO();
   RecipeObj sdto = new RecipeObj();
   String tagid = request.getParameter("search");
   String searchword = request.getParameter("searchword");

   List<RecipeObj> searchBanList = new Vector<RecipeObj>();
   
   if(tagid != null) {
   searchBanList = sdao.getBannerSearch(Integer.valueOf(tagid));
   }
   
   else {
	   if(searchword != null) {
	   searchBanList = sdao.getSearchList(searchword, null);
   		}
   }
   sdao.close();
   %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Search Page</title>
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
         .pageTitle {
         background-color : #cfcfcf;
         width : 100%;
         height : 200px;
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
         <div class="pageTitle">Popular Recipes</div>
            <div class = "popArea">
               <div class="popmenu">
                  <div class = "cards">
                     <% 
                        int count1 = 0;
                        for(RecipeObj serli : searchBanList) {
                        	count1++;
                        %> <% if(count1==1) {%> 
                     <ul>
                        <% } %>
                        <li class = "card">
                           <a href = "http://localhost:8080/yori_zip/recipedetail.jsp?recipe_id=<%=serli.getRecipe_id() %>">
                              <div class="card_frame"><img class = "card_photo" src = "<%=serli.getThumbnail() %>"></div>
                              <div class="card_desc">
                                 <div class = "card_subTitle"><%=serli.getSubtitle() %></div>
                                 <div class = "card_title"><%=serli.getTitle() %></div>
                                 <div class = "card_score">
                                    <img class="card_level" src = "./images/difficulty.png"><%= serli.getLevel() %>
                                    <img class="card_level" src = "./images/time.png"><%= serli.getTime() %>
                                    <img class="card_level" src = "./images/score.png"><%= serli.getStar_score() %>	
                                 </div>
                              </div>
                           </a>
                        </li>
                        <%
                           if(count1 == searchBanList.size()) { %>	
                     </ul>
                     <% } 
                        }
                        	%>		
                  </div>
               </div>
            </div>
         </main>
         <footer><%@ include file = "footer.jsp"%></footer>
      </div>
   </body>
</html>