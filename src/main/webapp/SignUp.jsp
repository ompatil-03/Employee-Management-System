<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    form {
        background-color: white;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        width: 300px;
        display: flex;
        flex-direction: column;
    }
    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    button {
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        background-color: #28a745;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    button[type="button"] {
        background-color: #6c757d;
    }
    button:hover {
        background-color: #218838;
    }
    button[type="button"]:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>
 <form action="HomeSevelet" method="post">
     <input type="hidden" name="opr" value="signup">
    <label for="name">Full Name:</label>
    <input type="text" id="name" name="fullname" placeholder="Enter Full Name"><br>
 	
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" placeholder="Enter Email"><br>

    <label for="username">Username:</label>
    <input type="text" id="username" name="username" placeholder="Enter Username"><br>
 	
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" placeholder="Enter Password"><br>

    <button type="submit">Sign Up</button>
    <button type="button" onclick="window.location.href='login.jsp'">Login</button>
 </form>
</body>
</html>
