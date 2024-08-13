# Employee Management System

## Overview

The **Employee Management System** is a web-based application designed to manage employee records efficiently. It allows users to view, add, update, and delete employee information. The system is built using Java, JSP, and Servlet, with a MySQL database for storing employee data.

## Features

- **View Employees:** Displays a list of all employees with details such as ID, name, city, and phone number.
- **Add Employee:** Allows users to add a new employee by entering their details in a simple form.
- **Update Employee:** Provides the ability to update existing employee information.
- **Delete Employee:** Users can delete an employee's record from the system.
- **Responsive Design:** The user interface is designed to be clean, modern, and responsive, ensuring a smooth user experience.

## Technologies Used

- **Backend:**
  - Java
  - JSP (JavaServer Pages)
  - Servlet
  - JDBC (Java Database Connectivity)
  
- **Frontend:**
  - HTML5
  - CSS3
  - JavaScript

- **Database:**
  - MySQL

## Project Structure

```
EmployeeManagementSystem/
│
├── src/
│   ├── com/
│   │   ├── jsp/
│   │   │   ├── bean/
│   │   │   │   └── Employee.java
│   │   │   ├── dao/
│   │   │   │   ├── GetConnection.java
│   │   │   │   └── SqlQueries.java
│   │   │   └── servlet/
│   │   │       └── HomeServlet.java
│   │   └── jsp/
│   │       ├── index.jsp
│   │       ├── insert.jsp
│   │       ├── update.jsp
│   │       └── dashboard.jsp
│   └── web.xml
│
├── WebContent/
│   ├── WEB-INF/
│   │   └── web.xml
│   ├── META-INF/
│   └── lib/
│
├── sql/
│   └── employee_management.sql
│
├── README.md
└── pom.xml (if using Maven)
```

## Prerequisites

- Java JDK (8 or higher)
- Apache Tomcat (9 or higher)
- MySQL
- IDE (Eclipse, IntelliJ IDEA, etc.)
## Screenshots

### Dashboard
![image](https://github.com/user-attachments/assets/4d0d92ab-da35-4c33-8e97-2ee6e6caede4)


### Add Employee
![image](https://github.com/user-attachments/assets/b4363531-ea8a-4319-b5f4-96927b19c619)


### Update Employee
![image](https://github.com/user-attachments/assets/b6e0e397-87f5-492b-9618-effa77d28487)


