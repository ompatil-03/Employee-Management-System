<%@page import="com.jsp.dao.SqlQueries"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table</title>
<style>
    table {
        width: 80%;
        border-collapse: collapse;
        margin: 50px auto;
    }
    table, th, td {
        border: 1px solid black;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
     .delete-button {
        color: red;
        text-decoration: none;
    }
</style>
</head>
<body>
<h1>Employee data</h1>
<%
List<Employee>ls=SqlQueries.fetchData();

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
        		<input type=hidden name="id" value=<%=emp.getId() %>>
        		<button type="submit">Update</button>
        	</form>
        </td>
        <td> 
        	<form action="HomeSevelet" method="post">
        		<input type="hidden" name="opr" value="delete">
        		<input type=hidden name="id" value=<%=emp.getId() %>>
        		<button type="submit">Delete</button>
        	</form>
        </td>
    </tr>
    <%
        }
    %>
  
</table>


</body>
</html>