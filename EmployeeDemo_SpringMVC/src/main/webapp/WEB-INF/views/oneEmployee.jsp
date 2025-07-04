<%@page import="com.flm.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title> <%-- More descriptive title --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/employee-details-style.css"> <%-- Link to external CSS --%>

<style>
    body {
        font-family: 'Open Sans', 'Helvetica Neue', sans-serif;
        background-color: #e8f5e9; /* Light green background */
        color: #333;
        margin: 0;
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        min-height: 100vh;
        box-sizing: border-box;
    }

    h1 { /* Changed from h2 to h1 for main title */
        color: #2e7d32; /* Deep green */
        text-align: center;
        margin-bottom: 30px;
        font-size: 2.5em;
        text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
    }

    .card {
        background-color: #ffffff;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        padding: 30px 40px;
        width: 100%;
        max-width: 600px; /* Wider card for details table */
        text-align: center; /* Center content within the card */
    }

    .employee-detail-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.05); /* Subtle shadow for the table */
    }

    .employee-detail-table th,
    .employee-detail-table td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    .employee-detail-table th {
        background-color: #c8e6c9; /* Lighter green header */
        color: #388e3c; /* Darker text for headers */
        font-weight: bold;
        text-transform: uppercase;
        font-size: 0.9em;
    }

    .employee-detail-table tr:last-child td {
        border-bottom: none; /* No border on the last row */
    }

    .no-employee-message {
        text-align: center;
        padding: 20px;
        font-size: 1.1em;
        color: #777;
    }

    .back-link {
        display: inline-block;
        margin-top: 30px;
        background-color: #1976d2; /* Blue for back button */
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
        font-size: 1.0em;
        transition: background-color 0.3s ease;
    }

    .back-link:hover {
        background-color: #1565c0;
    }
</style>
</head>
<body>
    <%-- The 'emp' attribute should ideally be retrieved from Model in controller
         and passed to JSP using EL for better practice.
         Keeping scriptlet for now as per your original code. --%>
    <%
    Employee employee = (Employee) request.getAttribute("emp");
    %>

    <h1>Employee Details</h1>

    <div class="card">
        <% if (employee != null) { %>
            <h2>Details for Employee ID: <%=employee.getId()%></h2>
            <table class="employee-detail-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>ADDRESS</th>
                        <th>SALARY</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%=employee.getId()%></td>
                        <td><%=employee.getName()%></td>
                        <td><%=employee.getAddress()%></td>
                        <td><%=employee.getSalary()%></td>
                    </tr>
                </tbody>
            </table>
        <% } else { %>
            <p class="no-employee-message">No employee found with the provided ID.</p>
        <% } %>
    </div>

    <a href="${pageContext.request.contextPath}" class="back-link">Back to Main menu</a>

</body>
</html>