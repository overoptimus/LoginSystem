<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录失败</title>
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
	<div>
		<h1 align="center">登录失败</h1>
		<hr size="5px">
		<h2 size="20px" align="center">您输入的账号或密码错误,请返回</h1>
		<%
			session.invalidate();
		%>
		<a href="Login.jsp">返回</a>
	</div>
</body>
</html>