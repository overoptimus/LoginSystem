<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
 
<jsp:useBean id="loginUser" class="com.po.Users"  scope="session"/>
<jsp:useBean id="loginDao" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty property="*" name="loginUser"/>
<%!
	boolean s;
%>
<%
	s=loginDao.loginUser(loginUser);
	if(s){
		if("学生".equals(loginUser.getIdentity())){
			response.sendRedirect("login_student.jsp");
		}else if("老师".equals(loginUser.getIdentity())) {
			response.sendRedirect("login_teacher.jsp");
		}
	}else { 
		response.sendRedirect("login_false.jsp");
		
	}
%>
