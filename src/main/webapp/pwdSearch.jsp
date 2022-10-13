<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	UserDAO dao = new UserDAO();

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>

<h1>비밀번호 찾기</h1>


<form action="pwdSearchProcess.jsp" method="post">

	<table>
		<tr>
			<td>
				<input type="email" name="checkEmail" autofocus placeholder="이메일을 입력하세요" required>
			</td>
		</tr>


        <tr>
        	<td>
        		<select name="checkQuestion">
        			
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
			<td>
				<input type="text" name="checkAnswer" autofocus placeholder="답변을 입력하세요" required>
			</td>
		</tr>

		<tr>
			<td>
				<input type="submit" value="확인">
			</td>
		</tr>

	</table>



</form>


</body>
</html>