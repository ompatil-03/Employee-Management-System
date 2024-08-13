<%@page import="com.jsp.dao.SqlQueries"%>
<%@page import="com.jsp.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee Data</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/kTcO3grG1X7m5XXjVPRR1tqMZrX5C+S8kij/5M4b6K7fZecwXx6A+ljk45OmnK6X4BQWlpHgMzlrw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f5f7;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h3 {
        margin-bottom: 20px;
        font-size: 24px;
        color: #333;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    label {
        font-size: 16px;
        margin-bottom: 5px;
        color: #333;
    }
    input[type="text"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 6px;
        font-size: 16px;
        width: 100%;
    }
    button {
        background-color: #007bff;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        align-self: flex-start;
    }
    button:hover {
        background-color: #0056b3;
    }
    .back-link {
        display: block;
        margin-top: 20px;
        font-size: 14px;
        color: #007bff;
        text-decoration: none;
    }
    .back-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="container">
    <h3>Update Employee Data</h3>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        Employee emp = SqlQueries.updateEmp(id);
    %>
    <form action="HomeSevelet" method="post">
        <input type="hidden" name="opr" value="edit">
        <input type="hidden" name="id" value="<%=id %>">
        
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" value="<%=emp.getName() %>" required>
        
        <label for="city">City:</label>
        <input type="text" name="city" id="city" value="<%=emp.getCity() %>" required>
        
        <label for="phone">Phone:</label>
        <input type="text" name="phone" id="phone" value="<%=emp.getPhone() %>" required>
        
        <button type="submit" onclick="alert('Updated Successfully!')">Update</button>
    </form>
    <a href="FetchData.jsp" class="back-link"><i class="fas fa-arrow-left"></i> Back to Dashboard</a>
</div>

</body>
</html>
