package com.jsp.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
	public static Connection returnConnection() {
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/employee";
		String user="root";
		String pass="Pass@1234";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return con;	
	}
}
