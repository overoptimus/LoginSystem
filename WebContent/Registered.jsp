<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<style type="text/css">
	body{
		margin: 0;
		padding: 0;
		background-image: url(images/background.jpg);
		background-size: cover;
	}
	body {
		margin: 0px;
		padding: 0px;
	}
	table {
		border-style: groove;
		border-width: 1px;
		width: 300px;
		height: 350px;
		background-color: rgba(245,242,242,1.00);
	}
	.main {
		margin: 15% auto;
	}
	td {
		text-align: center;
	}
</style>
<script type="text/javascript">
	function judgment(){
		var id=document.getElementById("id");
		var name= document.getElementById("name");
		var sex=document.getElementById("sex");
		var password=document.getElementById("password");
		var passwordRepeat=document.getElementById("passwordRepeat");
		var identity=document.getElementById("identity");
		if(id.value===''||id.value===null) {
			alert("账号不能为空!");
			return false;
		}
		if(name.value===''||name.value===null) {
			alert("姓名不能为空!");
			return false;
		}
		if(sex.value===''||sex.value===null) {
			alert("性别不能为空!");
			return false;
		}
		if(password.value===''||password.value===null) {
			alert("密码不能为空!");
			return false;
		}
		if(passwordRepeat.value!=password.value) {
			alert("确认密码与密码不同!");
			return false;
		}
		if(identity.value===''||identity.value===null) {
			alert("身份不能为空!");
			return false;
		}
		//alert("注册成功");
		//document.getElementById('form1').submit();
		return true;			
	}
</script>
</head>
<body>
	<h1 align="center">注册页面</h1>
	<hr>
	<div class="main" align="center">
		<form id="form1" action="doRegistered.jsp" method="post">
			<table>
			 	<tr>
			 		<td>账号:</td>
			 		<td><input type="text" name="id" id="id"/></td>
			 	</tr>
			 	<tr>
			 		<td>姓名:</td>
			 		<td><input type="text" name="name" id="name"/></td>
			 	</tr>
			 	<tr>
			 		<td>性别:</td>
			 		<td><input type="text" name="sex" id="sex"/></td>
			 	</tr>
			 	<tr>
			 		<td>密码:</td>
			 		<td><input type="password" name="password" id="password"/></td>
			 	</tr>
			 	<tr>
			 		<td>确认密码:</td>
			 		<td><input type="password" name="passwordRepeat" id="passwordRepeat"/></td>
			 	</tr>
			 	<tr>
			 		<td>身份:</td>
			 		<td><input type="radio" name="identity" id="identity" value="老师"/>老师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="identity" id="identity" value="学生"/>学生</td>
			 	</tr>
			 	<tr>
			 		<td colspan="2"><input type="submit" value="注册" name="submit" onclick="return judgment();"/></td>
			 	</tr>
			</table>
		</form>
	</div>
</body>
</html>