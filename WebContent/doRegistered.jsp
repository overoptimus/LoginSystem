<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
 
<jsp:useBean id="registeredUser" class="com.po.Users" scope="session"/>
<jsp:useBean id="registeredDao" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty property="*" name="registeredUser"/>

<%
	registeredDao.registeredUser(registeredUser);
	response.sendRedirect("Login.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="loginUser" class="com.po.Users" scope="session"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<style type="text/css">
		h1{
		font-style: "宋体";
		font-size: 40px;
	}
</style>
<script type="text/javascript">
	alert("注册成功");
</script>
</head>
<body>
	<h1 >恭喜您,注册成功</h1>
</body>
</html>