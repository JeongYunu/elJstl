<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- el/jstl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="vo.UserVo" %>
<%@ page import="java.util.List" %>

<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<th>no</th>
				<th>name</th>
				<th>email</th>
				<th>password</th>
				<th>gender</th>
			</tr>
		</thead>
		<tbody>
			<%for(int i=0; i<userList.size(); i++){ %>
			<tr>
				<td><%=userList.get(i).getNo() %></td>
				<td><%=userList.get(i).getName() %></td>
				<td><%=userList.get(i).getEmail() %></td>
				<td><%=userList.get(i).getPassword() %></td>
				<td><%=userList.get(i).getGender() %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	
	<br><br><br><br>
	
	<table border="1">
		<thead>
			<tr>
				<th>no</th>
				<th>name</th>
				<th>email</th>
				<th>password</th>
				<th>gender</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}" var="userVo">
			<tr>
				<td>${userVo.no}</td>
				<td>${userVo.name}</td>
				<td>${userVo.email}</td>
				<td>${userVo.password}</td>
				<td>${userVo.gender}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
		<br><br><br><br>
	
	<table border="1">
		<thead>
			<tr>
				<th>no</th>
				<th>name</th>
				<th>email</th>
				<th>password</th>
				<th>gender</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}" var="userVo" varStatus="status" end="3" step="1">
			<tr>
				<td>${userVo.no}</td>
				<td>${userVo.name}</td>
				<td>${userVo.email}</td>
				<td>${userVo.password}</td>
				<td>${userVo.gender}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>