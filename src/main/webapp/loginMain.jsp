<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>

<style>

.memLink{
	text-decoration : none;
	color : black;
}

.pwdLink{
	text-decoration : none;
	color : black;
}
</style>

<body>
<jsp:include page="nav.jsp"/>



    <form action="loginProcess.jsp" method="post" name="loginForm">

        <div>
            <table>
                <tr>
                    <td><input type="email" name="user_email" class="infoText" id="user_email"  autofocus placeholder="EMAIL" required></td>
                </tr>
                
                <tr>
                    <td><input type="password" name="user_password" class="infoText" id="user_password" autofocus placeholder="PASSWORD" required></td>
                </tr>
				
				<tr>
					<td><a class="memLink" href="policy.jsp">회원가입</a> &nbsp; <a class="pwdLink" href="#" onClick="searchPwd()">비밀번호찾기</a> </td>
				</tr>
				
                <tr>
                    <td><input type="submit" value="로그인" disabled id="login_btn"></td>
                </tr>
            </table>
        </div>

    </form>

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