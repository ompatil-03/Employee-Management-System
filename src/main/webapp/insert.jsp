<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Insert</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 30px 50px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 380px;
            text-align: center;
        }
        .container h2 {
            font-size: 24px;
            color: #202124;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            font-weight: 500;
            color: #5f6368;
        }
        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #dadce0;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }
        .form-group input:focus {
            border-color: #1a73e8;
            outline: none;
            box-shadow: 0 0 3px rgba(26, 115, 232, 0.5);
        }
        .btn-submit, .btn-view {
            width: 100%;
            padding: 12px 0;
            font-size: 14px;
            font-weight: 500;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn-submit {
            background-color: #1a73e8;
            color: white;
            margin-top: 20px;
        }
        .btn-submit:hover {
            background-color: #1558b0;
        }
        .btn-view {
            background-color: #34a853;
            color: white;
            margin-top: 10px;
        }
        .btn-view:hover {
            background-color: #2b7b44;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Employee</h2>
        <form action="HomeSevelet" method="post">
            <input type="hidden" name="opr" value="insert">
            <div class="form-group">
                <label for="id">ID</label>
                <input type="number" id="id" name="id" placeholder="Enter your ID" required>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <input type="text" id="city" name="city" placeholder="Enter your city" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone No.</label>
                <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>
            </div>
            <button type="submit" class="btn-submit">Submit</button>
        </form>
        <form action="HomeSevelet" method="post">
            <input type="hidden" name="opr" value="FetchData.jsp">
            <button type="submit" class="btn-view">View Data</button>
        </form>
    </div>
</body>
</html>
