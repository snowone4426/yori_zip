<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="">
	#cake {
		width : 80%;
		height : 400px;	
	}
	#banner {
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

   banners.push(new typeBanner(1,1,"images/recipe/carrot.jpg",""));
   banners.push(new typeBanner(2,1,"images/recipe/hotcake.jpg",""));
   banners.push(new typeBanner(3,1,"images/recipe/carrot.jpg",""));
   banners.push(new typeBanner(4,1,"images/recipe/hotcake.jpg",""));
   banners.push(new typeBanner(5,1,"images/recipe/1.jpg",""));

   document.addEventListener("DOMContentLoaded", function () {
      setInterval(setBannerInterval, 1000);
   });
</script>
<body>
	<div id="banner">
        <a href="javascript:procBanner()">
           <img src="images/recipe/cake.jpg" alt="핫케이크" id="cake">
        </a>
    </div>
</body>
</html>