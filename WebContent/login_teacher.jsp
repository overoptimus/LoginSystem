<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="loginUser" class="com.po.Users" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>老师登录</title>
<style type="text/css">
	body {
		background-image: url("images/background.jpg");
		background-size: cover;
	}
	h1{
		font-style: "宋体";
		font-size: 40px;
	}
	table {
		width:500px;
		height: 100px;
		text-align: center;
		background-color: rgba(245,242,242,1.00);
	}
	p {
		font-size:30px;
		margin-top: 30px;
		margin-left: 200px;
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<h1 align="center">欢迎您,<%=loginUser.getName() %>老师</h1>
	<hr size="5px">
	<p>您的信息:
	<table align="center" border="5">
		<tr>
			<td>账号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>身份</td>
		</tr>
		<tr>
			<td><%=loginUser.getId() %></td>
			<td><%=loginUser.getName() %></td>
			<td><%=loginUser.getSex() %></td>
			<td><%=loginUser.getIdentity() %></td>
		</tr>
	</table>
		<%
			session.invalidate();
		%>
	<a href="Login.jsp">返回</a>
</body>
</html>