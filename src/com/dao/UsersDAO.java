package com.dao;

import com.po.Users;

import java.net.ConnectException;

//import org.apache.catalina.User;

import com.JoinMysql.Conn;

//用户的业务逻辑类
public class UsersDAO {
	public boolean loginUser(Users u) throws Exception{
		String id=u.getId();
		String password=u.getPassword();
		Conn conn=new Conn();
		conn.getConnection();
		String selectsql="select * from users where id =? and password =?";
		conn.pstmt=conn.con.prepareStatement(selectsql);
		conn.pstmt.setString(1, id);
		conn.pstmt.setString(2, password);
		conn.rSet=conn.pstmt.executeQuery();
		if(conn.rSet.next()) {
			u.setId(conn.rSet.getString(1));
			u.setName(conn.rSet.getString(2));
			u.setPassword(conn.rSet.getString(3));
			u.setIdentity(conn.rSet.getString(4));
			u.setSex(conn.rSet.getString(5));
			return true;
		}else {
			return false;
		}
	}
	public void registeredUser(Users u) throws Exception{
		String id=u.getId();
		String name=u.getName();
		String sex=u.getSex();
		String password=u.getPassword();
		String identity=u.getIdentity();
		Conn conn=new Conn();
		conn.getConnection();
		String sql="insert into users(id,name,password,identity,sex) values (?,?,?,?,?)";
		conn.pstmt=conn.con.prepareStatement(sql);
		conn.pstmt.setString(1, id);
		conn.pstmt.setString(2, name);
		conn.pstmt.setString(3, password);
		conn.pstmt.setString(4, identity);
		conn.pstmt.setString(5, sex);
		conn.pstmt.executeUpdate();
	}
//	public void 
	
	
	
	//用户登录方法
//	public boolean usersLogin(Users u)
//	{
//		if("admin".equals(u.getUsername())&&"admin".equals(u.getPassword()))
//		{
//			return true;
//		}
//		else
//		{
//			return false;
//		}
//	}
}
