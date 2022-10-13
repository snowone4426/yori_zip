<%@page import="dao.UserDAO"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	UserDAO dao = new UserDAO();
	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
</head>
<link rel="stylesheet" href="css/main.css">  
<style>

.wrapper{
	padding : 30px;
}

#preview{
	#F3AA5D80
	width : 200px;
	Height : 200px;
}


.container{
    Width : 700px;
    Height : 700px;
    padding : 80px;
    border-style: solid;
    border-width: 1px;
    border-color: #D4D4D4;
}

#member_email, #memberPw, #password_check, #answer, #memeber_nick, #member_question, #registerBtn{
    width : 400px;
    height: 45px;
}

.emailDiv{
	position: relative;
}



table{
	border-collapse: separate;
    border-spacing: 0 10px;

}


table input{
    background-color: #ECECEC;

}




</style>

<body>

<jsp:include page="nav.jsp"/>

<div class="wrapper" align="center">

<div class="container" align="center">

<form action="memberProcess.jsp" method="post" name="memberForm" enctype ="multipart/form-data">
    <!-- 로고 -->
 
 
    
    <table>
    
        <tr align="center">
            <td>
            	<img id="preview" src="assets/userInfo.png" onclick='document.all.inputImg.click(); document.all.file2.value=document.all.file1.value'>
               <input type="text" id="file2" name="fiel2" style='display:none;'>
                <input id="inputImg" type="file" name="profile" onchange="readURL(input)" style='display: none;'>
            </td>
        </tr>
   
		<div id="emailDiv">
	        <tr>
	            <td>
	            <div id="info__id">
	                <input type="email" name="member_email" id="member_email" autofocus placeholder="어떤 이메일로 가입하시겠어요?" required style="border:0 solid white">
	                <button type="button" id="emailCheck" onClick="check()">중복확인</button>
	               </div>
	            </td>
	        </tr>
		</div>
		
        <tr>
            <td><input type="password" name="memberPw" id="memberPw" class="memberPw" autofocus placeholder="비밀번호는 어떻게 설정해 드릴까요" required onkeyup="passConfirm()" style="border:0 solid white"></td>
        </tr>

        <tr>
            <td><input type="password" name="password_check" id="password_check" autofocus placeholder="다시 한번 확인해 주세요" required onkeyup="passConfirm()" style="border:0 solid white"></td>
         </tr>
         
         <tr>   
            <td><div id ="confirmMsg"></div></td>    
        </tr>

        <tr>
            <td>
                <input type="text" name="memeber_nick" id="memeber_nick" autofocus placeholder="사이트에서 어떻게 불리고 싶으신가요?" required style="border:0 solid white">
            	<button type="button" id="checkNick" onClick="checkNick()">중복확인</button>
            </td>
        </tr>

        <tr>
        	<td>
        		<select name="member_question" id="member_question">
        			<% 	
        				for(int i = 0; i < dao.questionList().size(); i++){
        			%>
        			<option value="<%= i+1%>"><% out.print(dao.questionList().get(i));%></option>
        					 
        			<%
	        			}
	        		%>
        		</select>
        	</td>
        </tr>
        
        <tr>
            <td><input type="text" name="answer" id="answer" autofocus placeholder="질문의 답을 입력해주세요" required style="border:0 solid white"></td>
            
        </tr>        

        <tr>
            <td>
             	<input type="radio" name="gender" id="gender" value="M" checked="checked"><label for="select">남</label>
             	<input type="radio" name="gender" id="gender" value="F"><label for="select2">여</label>
            </td>
        </tr>
        
        <tr>
            <td><input type="submit" value="회원가입" disabled id="registerBtn"></td>
        </tr>
        
    </table>

</form>
</div>
</div>


<jsp:include page="footer.jsp"/>


</body>


<script>

const reader = new FileReader();
reader.onload = (readerEvent) => {
    document.querySelector("#preview").setAttribute("src", readerEvent.target.result);
};

document.querySelector("#inputImg").addEventListener("change", (changeEvent) => {

const imgFile = changeEvent.target.files[0];
reader.readAsDataURL(imgFile);		 
	 
})

var password = document.getElementById('memberPw');
var correctColor = "#00ff00";
var wrongColor ="#ff0000";
var buttonColor ="#666666";

function passConfirm(){
		
	var passwordConfirm = document.getElementById("password_check");
	var confrimMsg = document.getElementById('confirmMsg');
		
	if(password.value == passwordConfirm.value){
		confirmMsg.style.color = correctColor;
		confirmMsg.innerHTML ="비밀번호가 일치합니다";
	}else{
		confirmMsg.style.color = wrongColor;
		confirmMsg.innerHTML ="비밀번호가 일치하지 않습니다";
	}
			
}

function check(){
	 window.open("emailCheck.jsp", "a", "width=400, height=300, left=100, top=50");	 
 }

 function checkNick(){
	 window.open("nickCheck.jsp", "a", "width=400, height=300, left=100, top=50");	 
 }

const emailForm = document.querySelector('#member_email');
const pwdForm = document.querySelector('#memberPw');
const pwdCheck = document.querySelector('#password_check');
const nickForm = document.querySelector('#memeber_nick');
const answerForm = document.querySelector('#answer');
//const genderForm = document.querySelector('#gender');
const registerBtn = document.querySelector('#registerBtn');

emailForm.addEventListener('keyup', activeEvent);
pwdForm.addEventListener('keyup', activeEvent);
pwdCheck.addEventListener('keyup', activeEvent);
nickForm.addEventListener('keyup', activeEvent);
answerForm.addEventListener('keyup', activeEvent);
//genderForm.addEventListener('click', activeEvent);
registerBtn.addEventListener('click', errorEvent);

function activeEvent() {
	  switch(!(emailForm.value && pwdForm.value && pwdCheck.value && nickForm.value && answerForm.value)){
	    case true : registerBtn.disabled = true;
	    //registerBtn.style.color = buttonColor;
	    break;
	    case false : registerBtn.disabled = false; 
	    break;
	  }
}

</script>
</html>