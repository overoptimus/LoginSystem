package com.JoinMysql;

import java.sql.*;

public class Conn {
	static final String url = "jdbc:mysql://localhost:3306/loginsystem?useSSL=false";
	static final String user = "root";
	static final String word = "CH.h4350302";
	public PreparedStatement pstmt = null;
	public ResultSet rSet = null;
	public Connection con = null;
	
	public Conn(){
	}
	//��ȡ���ݿ������
	public void getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url, user,word);
			System.out.println("�������ݿ�ɹ�!");
		} catch (ClassNotFoundException e) {
			System.out.println("��������ʧ��!");
		} catch(SQLException e){
			System.out.println("���ݿ�����ʧ��!");
		}
	}
	
	public void closeConnection(Connection con,ResultSet rSet,PreparedStatement pstmt){
		try {
			if (rSet != null) {
				rSet.close();
				rSet = null;
			}	
			if (pstmt !=null) {
				pstmt.close();
				pstmt = null;
			}
			if (con != null) {
				con.close();
				con = null;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("�ͷ���Դ�����쳣!");
		}
	}
}
