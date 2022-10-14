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
<link rel="stylesheet" href="css/member.css">  


<body>

<jsp:include page="nav.jsp"/>

<div class="wrapper" align="center">


<form action="memberProcess.jsp" method="post" name="memberForm" enctype ="multipart/form-data">
 

    
    <table>
    
        <tr align="center">
            <td>
   				<img id="preview" src="assets/userInfo.png" onclick='document.all.inputImg.click(); document.all.file2.value=document.all.file1.value'>
               <input type="text" id="file2" name="fiel2" style='display:none;'>
                <input id="inputImg" type="file" name="profile" onchange="readURL(input)" style='display: none;'>
            </td>
        </tr>
   
	
	        <tr>
	            <td>
	            <div id="info_id">
	                <input type="email" name="member_email" id="member_email" autofocus placeholder="어떤 이메일로 가입하시겠어요?" required style="border:0 solid white">
	                <button type="button" id="emailCheck" onClick="check()">중복확인</button>
	               </div>
	            </td>
	        </tr>
		
		
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
            	<button type="button" id="checkNick" onclick="nickCheck()">중복확인</button>
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



<jsp:include page="footer.jsp"/>


</body>

<script type="text/javascript" src="js/member.js"></script>


</html>