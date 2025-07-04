<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/add-employee-style.css"> <%-- Link to external CSS (recommended) --%>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #e0f2f7; /* Light blue background */
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
        color: #007bb6; /* A shade of blue */
        text-align: center;
        margin-bottom: 30px;
        font-size: 2.2em;
        text-shadow: 1px 1px 2px rgba(0,0,0,0.05);
    }

    .form-container {
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15); /* Slightly stronger shadow */
        padding: 30px 40px;
        width: 100%;
        max-width: 450px; /* Slightly narrower form */
        text-align: left; /* Align form labels/inputs to left within container */
    }

    .form-table {
        width: 100%;
        border-collapse: collapse; /* Remove gaps between table cells */
        margin-bottom: 20px;
    }

    .form-table td {
        padding: 12px 0;
        vertical-align: middle;
    }

    .form-table td:first-child {
        font-weight: bold;
        color: #555;
        width: 35%; /* Adjust label width */
    }

    .form-table input[type="text"],
    .form-table input[type="tel"] {
        width: calc(100% - 20px); /* Account for padding */
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1em;
        box-sizing: border-box; /* Important for width calculation */
    }

    .form-table input[type="submit"],
    .form-actions a {
        display: inline-block; /* Allow buttons/links to sit side-by-side */
        padding: 10px 25px;
        border-radius: 5px;
        text-decoration: none;
        font-size: 1.0em;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease;
        margin-right: 10px; /* Space between buttons */
    }

    .form-table input[type="submit"] {
        background-color: #28a745; /* Green for submit */
        color: white;
        border: none;
    }

    .form-table input[type="submit"]:hover {
        background-color: #218838;
    }

    .form-actions a { /* Styling for the cancel link */
        background-color: #6c757d; /* Grey for cancel */
        color: white;
        border: none;
    }

    .form-actions a:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>

    <h1>Add New Employee</h1>

    <div class="form-container">
        <form action="save" > <%-- Use method="post" for form submissions --%>
            <table class="form-table">
                <tr>
                    <td>Enter name:</td>
                    <td><input type="text" name="name" required></td> <%-- Added 'required' attribute --%>
                </tr>
                <tr>
                    <td>Enter address:</td>
                    <td><input type="text" name="address" required></td>
                </tr>
                <tr>
                    <td>Enter Salary:</td>
                    <td><input type="tel" name="salary" required pattern="[0-9]+(\.[0-9]{1,2})?"></td> <%-- Added pattern for basic salary validation --%>
                </tr>
                <tr>
                    <td colspan="2" class="form-actions">
                        <input type="submit" value="AddEmployee">
                        <a href="${pageContext.request.contextPath}">Cancel</a> <%-- Corrected cancel link --%>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>