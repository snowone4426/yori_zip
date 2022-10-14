<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<link rel="stylesheet" href="css/main.css">
<style>

.wrapper{
	padding : 170px;

}

.container{
	Width : 600px;
    Height : 380px;;

}




.wrapper .infoText{
width : 350px;
height : 40px;
	box-sizing: border-box;

left: 32.85%;
right: 35.83%;

background: #F1F1F1;
border: 2px solid #BB905B;
}

.memLink{
	text-decoration : none;
	color : black;
}

.pwdLink{
	text-decoration : none;
	color : black;
}


.wrapper .textLine{
	float : right;
	padding : 5px;
}


.wrapper #login_btn{
width : 350px;
height : 40px;
left: 32.85%;
right: 35.83%;

background: #958380;
border-radius: 5px;

	font-weight: 400;
	font-size: 30px;

}




</style>

<body>
<jsp:include page="nav.jsp"/>

<div class="wrapper" align="center">
    <form action="loginProcess.jsp" method="post" name="loginForm">

	<div class="container">
            <table>
                <tr>
                    <td><input type="email" name="user_email" class="infoText" id="user_email"  autofocus placeholder="EMAIL" required></td>
                </tr>
                
                <tr>
                    <td><input type="password" name="user_password" class="infoText" id="user_password" autofocus placeholder="PASSWORD" required></td>
                </tr>
				
				<tr class="textLine">
					<td><a class="memLink" href="policy.jsp">회원가입</a> &nbsp; <a class="pwdLink" href="#" onClick="searchPwd()">비밀번호찾기</a> </td>
				</tr>
				
                <tr>
                    <td><input type="submit" value="로그인" disabled id="login_btn"></td>
                </tr>
            </table>
       </div> 
    </form>
</div>
<jsp:include page="footer.jsp"/>

</body>

<script>

function searchPwd(){
	 window.open("pwdSearch.jsp", "a", "width=400, height=300, left=100, top=50");	 
}


//const formWrap = document.querySelector('.infoText');
const idForm = document.querySelector('#user_email');
const pwForm = document.querySelector('#user_password');
const loginBtn = document.querySelector('#login_btn')
idForm.addEventListener('keyup', activeEvent);
pwForm.addEventListener('keyup', activeEvent);
loginBtn.addEventListener('click', errorEvent);
function activeEvent() {
	  switch(!(idForm.value && pwForm.value)){
	    case true : loginBtn.disabled = true; 
	    break;
	    case false : loginBtn.disabled = false; 
	    break;
	  }
}

</script>


</html>