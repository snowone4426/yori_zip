<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 찾기</title>
</head>
<body>
<h1>이메일 찾기</h1>

<form action="emailCheckProcess.jsp" method="post">

	<input type="email" name="checkEmail" autofocus placeholder="이메일을 입력하세요" required>
	<input type="submit" value="확인">

</form>

</body>
</html>