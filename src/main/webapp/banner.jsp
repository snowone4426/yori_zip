<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "dao.BannerDAO" %>
    <%@ page import = "dto.BannerObj" %>
    <%@ page import = "java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="">
	#cake {
		width : 100%;
		height : 400px;	
	}
	#banner {
		width : 90%;
		text-align : center;
	}
</style>
</head>
<script src="type.js"></script>
<script src="main.js"></script>
<script>
   var bannerId = 0;
   var banner   = new typeBanner();
   var banners  = new Array();

   <%
	BannerDAO banDao = new BannerDAO();
	BannerObj banObj = new BannerObj();

	List<BannerObj> bannerList = banDao.BannerList();
	banDao.close();
	
	for( BannerObj banner : bannerList ){
		%>
		banners.push(new typeBanner(<%=banner.getBanner_id()%>,"<%=banner.getPhoto()%>","<%=banner.getAlt()%>",<%=banner.getSearch()%>));
		<%
	 }
%>
   document.addEventListener("DOMContentLoaded", function () {
      setInterval(setBannerInterval, 1000);
   });
</script>
<body>
	<div id="banner">
        <a href="javascript:procBanner()">
           <img src="images/recipe/hotcake.jpg" alt="핫케이크" id="cake">
        </a>
    </div>
</body>
</html>