package com.jsp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.jsp.bean.Employee;
import com.jsp.bean.User;
import com.mysql.cj.protocol.Resultset;

public class SqlQueries {
	public  static int insert(Employee emp) {
		String sql="insert into emp values(?,?,?,?)";
		Connection con=GetConnection.returnConnection();
		int status=0;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,emp.getId());
			ps.setString(2, emp.getName());
			ps.setString(3, emp.getCity());
			ps.setString(4, emp.getPhone());
			status=ps.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return status;
	}
	public static List<Employee> fetchData(){
		List<Employee>ls=new ArrayList<>();
		
		Connection con=GetConnection.returnConnection();
		
		String sql="select * from emp";
		
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Employee emp=new Employee();
				emp.setId(rs.getInt(1));
				emp.setName(rs.getString(2));
				emp.setCity(rs.getString(3));
				emp.setPhone(rs.getString(4));
				
				ls.add(emp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return ls;
	}
	
	public static int deleteEmp(int id) {
		Connection con=GetConnection.returnConnection();
		
		String sql="DELETE FROM emp WHERE id=?;";
		
		PreparedStatement ps;
		int status=0;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			status=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static Employee updateEmp(int id) {
		Connection con=GetConnection.returnConnection();
		
		String sql="Select * from emp where id=?;";
		Employee emp=new Employee();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
		
			while(rs.next()) {
				emp.setId(rs.getInt(1));
				emp.setName(rs.getString(2));
				emp.setCity(rs.getString(3));
				emp.setPhone(rs.getString(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return emp;
	}
	
	public static int editEmp(Employee emp) {
		Connection con=GetConnection.returnConnection();
		int status=0;
		String sql="update emp set name=?,city=?,phone=? where id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,emp.getName());
			ps.setString(2,emp.getCity());
			ps.setString(3,emp.getPhone());
			ps.setInt(4, emp.getId());
			status=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static boolean varify(String s1,String s2) {
		Connection con=GetConnection.returnConnection();
		boolean b=false;
		String sql="select * from users where username=?";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, s1);
			User user=new User();
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				user.setName(rs.getString(1));
				user.setEmail(rs.getString(2));
				user.setUsername(rs.getString(3));
				user.setPassword(rs.getString(4));
			}
			
			if(user.getPassword().equals(s2)) {
				b=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}
	
	public static int signUp(User user) {
		Connection con=GetConnection.returnConnection();
		
		String sql="insert into users values(?,?,?,?);";
		int status=0;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getUsername());
			ps.setString(4, user.getPassword());
			status=ps.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
