<%@page import="com.jsp.dao.SqlQueries"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f5f7;
        margin: 0;
        padding: 0;
    }
    .navbar {
        background-color: #24292e;
        padding: 10px 20px;
        color: white;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .navbar h1 {
        margin: 0;
        font-size: 24px;
    }
    .navbar a {
        color: white;
        text-decoration: none;
        margin-left: 20px;
    }
    .container {
        max-width: 1200px;
        margin: 50px auto;
        padding: 20px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 12px 15px;
        text-align: left;
    }
    th {
        background-color: #f4f5f7;
        color: #333;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    .action-button {
        background-color: #28a745;
        color: white;
        padding: 8px 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-align: center;
    }
    .action-button:hover {
        background-color: #218838;
    }
    .delete-button {
        background-color: #dc3545;
        color: white;
    }
    .delete-button:hover {
        background-color: #c82333;
    }
    .add-employee {
        text-align: right;
        margin-top: 20px;
    }
    .add-employee button {
        background-color: #007bff;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .add-employee button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<div class="navbar">
    <h1>Employee Management System</h1>
    <div>
        <a href="#">Dashboard</a>
        <a href="#">Employees</a>
        <a href="#">Settings</a>
        <a href="Login.jsp">Logout</a>
    </div>
</div>

<div class="container">
    <h2>Employee Data</h2>
    <div class="add-employee">   
            <button type="button" onclick="window.location.href='insert.jsp'">Add New Employee</button>
    </div>

    <%
        List<Employee> ls = SqlQueries.fetchData();
    %>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>City</th>
            <th>Phone</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <%
            for(Employee emp : ls) {
        %>
        <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getName() %></td>
            <td><%= emp.getCity() %></td>
            <td><%= emp.getPhone() %></td>
            <td> 
                <form action="HomeSevelet" method="post">
                    <input type="hidden" name="opr" value="update">
                    <input type="hidden" name="id" value="<%= emp.getId() %>">
                    <button type="submit" class="action-button">Update</button>
                </form>
            </td>
            <td> 
                <form action="HomeSevelet" method="post">
                    <input type="hidden" name="opr" value="delete">
                    <input type="hidden" name="id" value="<%= emp.getId() %>">
                    <button type="submit" class="action-button delete-button">Delete</button>
                </form>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>

</body>
</html>
