<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>request attribute 값 꺼내쓰기</h1>
	
	<h2>자바문법</h2>
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	num = <%=num %>	<br>
	str = <%=str %>	<br>
	<br>
	
	name = <%=userVo.getName() %> <br>
	email = <%=userVo.getEmail() %>	<br>
	password = <%=userVo.getPassword() %>	<br>
	gender = <%=userVo.getGender() %>	<br>
	<br><br>
	
	<h2>el</h2>
	num = ${requestScope.num}	<br>
	str = ${requestScope.str}	<br>
	<br>
	
	<!-- UserVo의 getter에 접근(private인 필드는 접근불가
	자바에서 알아서 getName를 찾아서 getName값을 반환 -->
	name = ${requestScope.userVo.name()}	<br>
	email = ${requestScope.userVo.email()}	<br>
	password = ${requestScope.userVo.password()}	<br>
	gender = ${requestScope.userVo.gender()}	<br>
	<br><br>
	
</body>
</html>