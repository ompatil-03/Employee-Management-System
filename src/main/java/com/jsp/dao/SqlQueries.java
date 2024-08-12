package com.jsp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.jsp.bean.Employee;

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
