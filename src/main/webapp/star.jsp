<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/main.css"> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

</style>
</head>
<body>
<link href="assets/star.png" rel="stylesheet"/>
<form class="mb-3" name="myform" id="myform" method="post" action="Starprocess.jsp">
	<fieldset>
		<input type="radio" name="reviewStar" value="5" id="rate1" onclick="clickHanlder()"><label
			for="rate1">★</label>
		<input type="radio" name="reviewStar" value="4" id="rate2" onclick="clickHanlder()"><label
			for="rate2">★</label>
		<input type="radio" name="reviewStar" value="3" id="rate3" onclick="clickHanlder()"><label
			for="rate3">★</label>
		<input type="radio" name="reviewStar" value="2" id="rate4" onclick="clickHanlder()"><label
			for="rate4">★</label>
		<input type="radio" name="reviewStar" value="1" id="rate5" onclick="clickHanlder()"><label
			for="rate5">★</label>
		<span class="text-bold">?레시피에 얼마나 만족하시나요</span>
	</fieldset>
	
</form>		
</body>
<script>
const clickHanlder = () => {
	const form = document.querySelector("#myform");
	form.submit()
}
</script>
</html>