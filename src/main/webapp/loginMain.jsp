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

</style>

<body>

    <form action="loginProcess.jsp" method="post" name="loginForm">

        <div>
            <table>
                <tr>
                    <td><input type="email" name="user_email" autofocus placeholder="EMAIL" required></td>
                </tr>
                
                <tr>
                    <td><input type="password" name="user_password" autofocus placeholder="PASSWORD" required></td>
                </tr>
				
				<tr>
					<td><a class="memLink" href="policy.jsp">회원가입</a> &nbsp; 비밀번호찾기 </td>
				</tr>
				
                <tr>
                    <td><input type="submit" value="로그인"></td>
                </tr>
            </table>
        </div>

    </form>

<jsp:include page="footer.jsp"/>

</body>
</html>