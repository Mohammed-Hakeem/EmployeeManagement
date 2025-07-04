<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee Details</title> <%-- More descriptive title --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/edit-employee-style.css"> <%-- Link to external CSS (recommended) --%>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f7f7e0; /* Light yellow-green background, slightly different from add page */
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
        color: #b67b00; /* A shade of warm orange/brown */
        text-align: center;
        margin-bottom: 30px;
        font-size: 2.2em;
        text-shadow: 1px 1px 2px rgba(0,0,0,0.05);
    }

    .form-container {
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        padding: 30px 40px;
        width: 100%;
        max-width: 450px;
        text-align: left;
    }

    .form-table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    .form-table td {
        padding: 12px 0;
        vertical-align: middle;
    }

    .form-table td:first-child {
        font-weight: bold;
        color: #555;
        width: 35%;
    }

    .form-table input[type="text"],
    .form-table input[type="tel"] {
        width: calc(100% - 20px);
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1em;
        box-sizing: border-box;
    }

    /* Style for readonly input (ID) */
    .form-table input[readonly] {
        background-color: #eee;
        cursor: not-allowed;
    }

    .form-actions {
        text-align: center; /* Center the buttons within their cell */
    }

    .form-table input[type="submit"],
    .form-actions a {
        display: inline-block;
        padding: 10px 25px;
        border-radius: 5px;
        text-decoration: none;
        font-size: 1.0em;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease;
        margin: 0 5px; /* Adjust spacing between buttons/links */
    }

    .form-table input[type="submit"] {
        background-color: #007bff; /* Blue for Update */
        color: white;
        border: none;
    }

    .form-table input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .form-actions a { /* Styling for the cancel link */
        background-color: #6c757d;
        color: white;
        border: none;
    }

    .form-actions a:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>

	<h1>Edit Employee Details</h1>

	<div class="form-container">
		<form action="update" method="get"> <%-- IMPORTANT: Ensure method="post" for update --%>
			<table class="form-table">
				<tr>
					<td>Employee ID:</td>
					<td><input type="text" name="id" readonly value="${employee.id}"></td>
				</tr>
				<tr>
					<td>Enter name:</td>
					<td><input type="text" name="name" value="${employee.name}" required></td> <%-- Add required --%>
				</tr>
				<tr>
					<td>Enter address:</td>
					<td><input type="text" name="address" value="${employee.address}" required></td> <%-- Populated and required --%>
				</tr>
				<tr>
					<td>Enter Salary:</td>
					<td><input type="tel" name="salary" value="${employee.salary}" required pattern="[0-9]+(\.[0-9]{1,2})?"></td> <%-- Populated and required, with pattern --%>
				</tr>
				<tr>
					<td colspan="2" class="form-actions">
						<input type="submit" value="Update">
						<a href="${pageContext.request.contextPath}/employee/getAll">Cancel</a> <%-- Corrected cancel link --%>
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>