<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
	Cookie[] cooks = request.getCookies();
	
	for(int i=0;i<cooks.length;i++)
	{
		cooks[i].setMaxAge(0);// 쿠키의 유효기간을 0으로 설정
		response.addCookie(cooks[i]);// 유효기간이 0으로 설정된 쿠키를 다시 전송
	}
	
	%>
	<a href="cookie_info.jsp">쿠키정보확인</a>
</body>
</html>