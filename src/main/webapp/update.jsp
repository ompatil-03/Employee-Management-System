<%@page import="com.jsp.dao.SqlQueries"%>
<%@page import="com.jsp.bean.Employee" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	int id=Integer.parseInt(request.getParameter("id"));
	Employee emp=SqlQueries.updateEmp(id);
%>
<h3>Update your data :</h3>
<form action="HomeSevelet" method=post >
	<input type="hidden" name="opr" value="edit">
	<input type="hidden" name=id value=<%=id %>>
	name:<input type="text" name=name value=<%=emp.getName() %>><br><br>
	city:<input type="text" name=city value=<%=emp.getCity() %>><br><br>
	phone:<input type="text" name=phone value=<%=emp.getPhone() %>><br><br>
	<button type="submit"  onclick="alert('Updated Succesfully !')">Update</button>
</form>
</body>
</html>