<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>닉네임 중복확인</title>
</head>
<body>
<h1>닉네임 중복확인</h1>

<form action = "nickCheckProcess.jsp" method="post">

	<input type="text" name="checkNick" autofocus placeholder="닉네임을 입력하세요" required>
	<input type="submit" value="확인">

</form>

</body>
</html>