<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch Employee Details</title> <%-- More descriptive title --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fetch-employee-style.css"> <%-- Link to external CSS --%>

<style>
    body {
        font-family: 'Open Sans', 'Helvetica Neue', sans-serif;
        background-color: #fce4ec; /* Light pink background */
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
        color: #ad1457; /* Deep rose */
        text-align: center;
        margin-bottom: 30px;
        font-size: 2.5em;
        text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
    }

    .card {
        background-color: #ffffff;
        border-radius: 12px; /* More rounded corners */
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Stronger, more prominent shadow */
        padding: 30px 40px;
        width: 100%;
        max-width: 400px; /* Compact width */
        text-align: center; /* Center content within the card */
    }

    .form-group {
        margin-bottom: 25px; /* More space for form group */
    }

    .form-group label {
        display: block; /* Label on its own line */
        font-weight: bold;
        color: #4CAF50; /* A friendly green for labels */
        margin-bottom: 8px;
        font-size: 1.1em;
    }

    .form-group input[type="text"] {
        width: calc(100% - 24px); /* Account for padding and border */
        padding: 12px;
        border: 2px solid #ddd; /* Thicker border */
        border-radius: 8px; /* Rounded input fields */
        font-size: 1.1em;
        box-sizing: border-box;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    .form-group input[type="text"]:focus {
        border-color: #ad1457; /* Highlight border on focus */
        box-shadow: 0 0 0 3px rgba(173, 20, 87, 0.2); /* Subtle glow on focus */
        outline: none; /* Remove default outline */
    }

    .form-actions {
        display: flex; /* Use flexbox for button alignment */
        justify-content: center; /* Center buttons horizontally */
        gap: 20px; /* Space between buttons */
    }

    .form-actions input[type="submit"],
    .form-actions a {
        padding: 12px 30px;
        border-radius: 8px;
        text-decoration: none;
        font-size: 1.1em;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
        border: none;
    }

    .form-actions input[type="submit"] {
        background-color: #4CAF50; /* Green for Fetch */
        color: white;
    }

    .form-actions input[type="submit"]:hover {
        background-color: #45a049;
        transform: translateY(-2px); /* Slight lift on hover */
    }

    .form-actions a { /* Styling for the cancel link */
        background-color: #9c27b0; /* Purple for Cancel */
        color: white;
    }

    .form-actions a:hover {
        background-color: #7b1fa2;
        transform: translateY(-2px); /* Slight lift on hover */
    }
</style>
</head>
<body>

    <h1>Fetch Employee Details by ID</h1>

    <div class="card">
        <form action="getEmp" method="get"> 
            <div class="form-group">
                <label for="employeeId">Enter Employee ID:</label>
                <input type="text" id="employeeId" name="id" placeholder="e.g., 123" required pattern="[0-9]+">
            </div>
            <div class="form-actions">
                <input type="submit" value="Fetch">
                <a href="${pageContext.request.contextPath}/">Cancel</a> 
            </div>
        </form>
    </div>

</body>
</html>