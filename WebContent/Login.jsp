<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<mate charset="utf-8"></mate>
<title>用户登录</title>
<style type="text/css">
	body{
		margin: 0;
		padding: 0;
		background-image: url(images/background.jpg);
		background-size: cover;
	}
	.main{
		width: 450px;
		heigth: 200px;
		margin: 15% auto;
		border-style: groove;
		border-color: black1;
		background-color: rgba(89,105,224,1.00);
		color: white;
	}
	.main table{
		width: 250px;
		height: 100px;
		font-size: 20px;
		font-weight: 100px;
	}
	h1{
		font-family: "黑体"," 仿宋"," 宋体"," 微软雅黑";
		font-size: 40px;
		font-weight: 100px;
	}
</style>
</head>
<!-- 
	这是登录窗口
 -->
<body>
	<div class="main">
		<h1 align="center">教学科</h1>
		<!-- 表中的action是登录界面的处理程序,需要连接数据库之后运行 -->
		<form action="doLogin.jsp" name="loginForm" method="post">
			<table align="center">
				<caption align="center">用户登录</caption>
				<tr>
					<td>用户名:</td>
					<td><input type="text" name="id"/></td>
				</tr>
				<tr>
					<td>密码:</td>
					<td><input type="password" name="password"/>
				</tr>
				<tr>
					<td align="center"><input type="submit" value="登录"/></td>
					<td align="center"><input type="button" value="注册" onclick="location.href='Registered.jsp'"/></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>