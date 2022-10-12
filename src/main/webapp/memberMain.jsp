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
<meta charset="EUC-KR">
<title>회원가입 화면</title>
</head>

<style>









</style>

<body>

<jsp:include page="nav.jsp"/>

<form action="memberProcess.jsp" method="post" name="memberForm" enctype ="multipart/form-data">
    <!-- 로고 -->
    <!-- 이미지 -->    
    
    <table align="center">
    
    <!--  -->
        <tr>
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
	                <input type="email" name="member_email" id="member_email" autofocus placeholder="어떤 이메일로 가입하시겠어요?" required onkeyu="checkEmail()">
	                <button type="button" id="emailCheck" onClick="check()">중복확인</button>
	               </div>
	            </td>
	        </tr>
		</div>
		
        <tr>
            <td>
                <input type="password" name="memberPw" id="memberPw" autofocus placeholder="비밀번호는 어떻게 설정해 드릴까요" required onkeyup="passCheck()">
            </td>
        </tr>

		<!-- 비밀번호 형시 -->
		<tr>
			<td>
				<div id = "checkMsg"></div>
			</td>
		</tr>


        <tr>
            <td>
                <input type="password" name="password_check" id="password_check" autofocus placeholder="다시 한번 확인해 주세요" required onkeyup="passConfirm()">
           		
            </td>
         </tr>
         <tr>   
            <td>
           		<div id ="confirmMsg"></div>
            </td>
        </tr>

        <tr>
            <td>
                <input type="text" name="memeber_nick" autofocus placeholder="사이트에서 어떻게 불리고 싶으신가요?" required>
            	<button type="button" id="emailNick" onClick="checkNick()">중복확인</button>
            </td>
        </tr>
        <!-- 중복체크 -->


        <tr>
        	<td>
        		<select name="member_question">
        			
        			<% 	
        				for(int i = 0; i < dao.questionList().size(); i++){
        			%>
        			<option><% out.print(dao.questionList().get(i));%></option>
        					 
        			<%
	        			}
	        		%>
        			
        		</select>
        	</td>
        </tr>
        
        <tr>
            <td>
                <input type="text" name="answer" autofocus placeholder="질문의 답을 입력해주세요" required>
            </td>
        </tr>        

        <tr>
        <!--  
            <td>
                <button name="sex" type="button" value="M">남</button>&nbsp;<button name="sex" type="button" value="F">여</button>
            </td>
         -->   
            <td>
            <!--  
                <div class="container">
                    <div class="box non-click" name="gender" id="gender" value="M">남</div>
                    <div class="box non-click" name="gender" id="gender" value="F">여</div>
                 </div>
             -->    
             	<input type="radio" name="gender" id="gender" value="M"><label for="select">남</label>
             	<input type="radio" name="gender" id="gender" value="F"><label for="select2">여</label>
            </td>

        </tr>
        
        <tr>
            <td>
                <input type="submit" value="회원가입">
            </td>
        </tr>
        
        
    </table>

</form>


<footer>
<jsp:include page="footer.jsp"/>
</footer>






<script>
/*
const nonClick = document.querySelectorAll(".non-click");

function handleClick(event) {
  // div에서 모든 "click" 클래스 제거
  nonClick.forEach((e) => {
    e.classList.remove("click");
  });
  // 클릭한 div만 "click"클래스 추가
  event.target.classList.add("click");
}

nonClick.forEach((e) => {
  e.addEventListener("click", handleClick);
});
*/



function passConfirm(){
	
	var password = document.getElementById('memberPw');
	var passwordConfirm = document.getElementById("password_check");
	var confrimMsg = document.getElementById('confirmMsg');
	var correctColor = "#00ff00";
	var wrongColor ="#ff0000";
	
	if(password.value == passwordConfirm.value){
		confirmMsg.style.color = correctColor;
		confirmMsg.innerHTML ="비밀번호 일치";
	}else{
		confirmMsg.style.color = wrongColor;
		confirmMsg.innerHTML ="비밀번호가 일치하지 않습니다";
	}
		
}

/*
function passCheck(){
	var pass = document.getElementByName('memberPw');
	var leg = "^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$";
	var checkMsg = document.getElementById('checkMsg');
	var correctColor = "#00ff00";
	var wrongColor ="#ff0000";
		
	if(!leg.test.(pass)){
		checkMsg.style.color = wrongColor;
		checkMsg.innerHTML ="비밀번호 형식이 맞지 않습니다";		
	}else{
		checkMsg.style.color = correctColor;
		checkMsg.innerHTML ="비밀번호가 형식이 일치합니다";
	}
}

*/

const reader = new FileReader();
 reader.onload = (readerEvent) => {
     document.querySelector("#preview").setAttribute("src", readerEvent.target.result);
 };
 
 document.querySelector("#inputImg").addEventListener("change", (changeEvent) => {

 const imgFile = changeEvent.target.files[0];
 reader.readAsDataURL(imgFile);		 
	 
 })
 
 
function check(){
	 window.open("emailCheck.jsp", "a", "width=400, height=300, left=100, top=50");	 
 }

 function checkNick(){
	 window.open("nickCheck.jsp", "a", "width=400, height=300, left=100, top=50");	 
 }


 
 
</script>
 
 



</body>
</html>