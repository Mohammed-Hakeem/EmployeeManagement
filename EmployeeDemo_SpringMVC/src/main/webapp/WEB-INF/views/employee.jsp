<%@page import="com.flm.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- Add JSTL taglib for better EL handling and C-tags --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<%-- Changed title to be more descriptive --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/employee-list-style.css">
<%-- Link to external CSS --%>

<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f0f8ff; /* Light blue-ish background */
	color: #333;
	margin: 0;
	padding: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	min-height: 100vh;
	box-sizing: border-box;
}

h1 {
	color: #1a5276; /* Darker blue */
	text-align: center;
	margin-bottom: 30px;
	font-size: 2.5em;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

.container {
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	padding: 30px 40px;
	width: 100%;
	max-width: 900px; /* Wider container for the table */
	box-sizing: border-box;
	text-align: center; /* Center content within the container */
}

.add-employee-link {
	display: inline-block;
	background-color: #007bff; /* Blue button */
	color: white;
	padding: 10px 20px;
	margin-bottom: 25px;
	border-radius: 5px;
	text-decoration: none;
	font-size: 1.1em;
	transition: background-color 0.3s ease;
}

.add-employee-link:hover {
	background-color: #0056b3;
}

.employee-table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
	/* Subtle shadow for the table */
}

.employee-table th, .employee-table td {
	padding: 12px 15px;
	text-align: left;
	border-bottom: 1px solid #ddd; /* Light separator lines */
}

.employee-table th {
	background-color: #e9ecef; /* Light grey header */
	color: #495057; /* Darker text for headers */
	font-weight: bold;
	text-transform: uppercase;
	font-size: 0.9em;
}

.employee-table tr:nth-child(even) {
	background-color: #f8f9fa; /* Zebra striping for rows */
}

.employee-table tr:hover {
	background-color: #e2f0fb; /* Highlight row on hover */
}

.employee-table td.actions a {
	display: inline-block;
	padding: 6px 12px;
	margin-right: 5px;
	border-radius: 4px;
	text-decoration: none;
	font-size: 0.9em;
	transition: background-color 0.3s ease;
}

.employee-table td.actions a.edit-link {
	background-color: #28a745; /* Green for Edit */
	color: white;
}

.employee-table td.actions a.edit-link:hover {
	background-color: #218838;
}

.employee-table td.actions a.delete-link {
	background-color: #dc3545; /* Red for Delete */
	color: white;
}

.employee-table td.actions a.delete-link:hover {
	background-color: #c82333;
}

.no-employees-message {
	text-align: center;
	padding: 20px;
	font-size: 1.1em;
	color: #777;
}
</style>
</head>
<body>

	<h1>Employee Information</h1>

	<div class="container">
		<a href="${pageContext.request.contextPath}/employee/addEmployee"
			class="add-employee-link">Add New Employee</a>

		<table class="employee-table">
			<thead>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>ADDRESS</th>
					<th>SALARY</th>
					<th>Edit Action</th>
					<th>Delete Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				List<Employee> employees = (List<Employee>) request.getAttribute("emps");
				%>
				<%
				if (employees == null || employees.isEmpty()) {
				%>
				<tr>
					<td colspan="6" class="no-employees-message">No employees
						found...!</td>
					<%-- colspan 6 to span all columns --%>
				</tr>
				<%
				} else {
				for (Employee emp : employees) {
				%>
				<tr>
					<td><%=emp.getId()%></td>
					<td><%=emp.getName()%></td>
					<td><%=emp.getAddress()%></td>
					<td><%=emp.getSalary()%></td>
					<td class="actions"><a
						href="${pageContext.request.contextPath}/employee/editEmployee?emp_id=<%=emp.getId()%>"
						class="edit-link">Edit</a></td>
					<td class="actions"><a
						href="${pageContext.request.contextPath}/employee/delete?emp_id=<%=emp.getId()%>"
						class="delete-link">Delete</a></td>
				</tr>
				<%
				} // End of for loop
				} // End of if-else for empty check
				%>



			</tbody>
		</table>
		<p></p>
		<a href="${pageContext.request.contextPath}" class="add-employee-link">Go
			back to main menu</a>
	</div>

</body>
</html>