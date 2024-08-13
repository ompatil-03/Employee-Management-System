package com.jsp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.bean.Employee;
import com.jsp.bean.User;
import com.jsp.dao.SqlQueries;

/**
 * Servlet implementation class HomeSevelet
 */
@WebServlet("/HomeSevelet")
public class HomeSevelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeSevelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opr=request.getParameter("opr");
		PrintWriter pw=response.getWriter();
		if(opr.equals("insert")) {
			int id=Integer.parseInt(request.getParameter("id"));
			String name =request.getParameter("name");
			String city=request.getParameter("city");
			String phone=request.getParameter("phone");
			
			Employee emp=new Employee();	
			emp.setId(id);
			emp.setName(name);
			emp.setCity(city);
			emp.setPhone(phone);
			
			int status=SqlQueries.insert(emp);
			if(status!=0) {
				pw.print("Employee instered Succesfully !");
			}else {
				pw.print("Employee not insterd Succesfully !");
			}
		}else if(opr.equals("FetchData.jsp")) {
			RequestDispatcher rs=request.getRequestDispatcher("FetchData.jsp");
			rs.forward(request, response);
		}else if(opr.equals("delete")){
			int id=Integer.parseInt(request.getParameter("id"));
			System.out.println("This is id "+id);
			int status=SqlQueries.deleteEmp(id);
			if(status!=0) {
				pw.print("<h1>Employee deleted Succesfully !</h1>");
				RequestDispatcher rs=request.getRequestDispatcher("FetchData.jsp");
				rs.forward(request, response);
			}else {
				pw.print("Employee NOT deleted !");
			}
					
		}else if(opr.equals("update")) {
			RequestDispatcher rs=request.getRequestDispatcher("update.jsp");
			rs.include(request, response);
		}else if(opr.equals("edit")) {
			int id=Integer.parseInt(request.getParameter("id"));
			String name=request.getParameter("name");
			String city=request.getParameter("city");
			String phone=request.getParameter("phone");
			Employee emp=new Employee();
			emp.setId(id);
			emp.setName(name);
			emp.setCity(city);
			emp.setPhone(phone);
			int status=SqlQueries.editEmp(emp);
			if(status!=0) {
				pw.print("<h1>Employee updated Succesfully !</h1>");
				RequestDispatcher rs=request.getRequestDispatcher("FetchData.jsp");
				rs.forward(request, response);
			}else {
				pw.print("Employee NOT updated !");
			}
		}else if(opr.equals("varify")) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			boolean b=SqlQueries.varify(username, password);
			if(b) {
				RequestDispatcher rs=request.getRequestDispatcher("FetchData.jsp");
				rs.forward(request, response);
			}else {
				pw.print("Something Went Wrong !");
			}
		}else if(opr.equals("signup")) {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			User user=new User();
			user.setName(name);
			user.setEmail(email);
			user.setUsername(username);
			user.setPassword(password);
			int status=SqlQueries.signUp(user);
			if(status!=0) {
				RequestDispatcher rs=request.getRequestDispatcher("Login.jsp");
				rs.forward(request, response);
			}else {
				pw.print("SignUp Failed !");
			}
		}
	}

}
