<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Spring MVC App</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<%-- Link to external CSS --%>

<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f7f6;
	color: #333;
	margin: 0;
	padding: 20px;
	display: flex;
	flex-direction: column;
	align-items: center; /* Center content horizontally */
	min-height: 100vh; /* Full viewport height */
	box-sizing: border-box;
	/* Include padding in element's total width and height */
}

h1 {
	color: #2c3e50;
	text-align: center;
	margin-bottom: 30px;
	font-size: 2.5em;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

.container {
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 30px 40px;
	width: 100%;
	max-width: 600px;
	text-align: center; /* Center text within the container */
}

.link-group a {
	display: block; /* Make links take full width and stack vertically */
	background-color: #3498db;
	color: white;
	padding: 12px 20px;
	margin-bottom: 15px; /* Space between links */
	border-radius: 5px;
	text-decoration: none;
	font-size: 1.1em;
	transition: background-color 0.3s ease;
	text-align: center;
}

.link-group a:hover {
	background-color: #2980b9;
}

.link-group h3 {
	margin-top: 25px;
	margin-bottom: 15px;
	color: #333;
}
</style>
</head>
<body>

	<h1>Welcome to Spring World!!!</h1>

	<div class="container">
		<div class="link-group">
			<a href="${pageContext.request.contextPath}/murty/test">Spring
				WebMVC Test</a> <a href="${pageContext.request.contextPath}/murty/say">Click
				Here (Say Hello)</a> <a
				href="${pageContext.request.contextPath}/murty/showdate">Show
				Current Date</a> <a
				href="${pageContext.request.contextPath}/employee/getAll">Show All
				Employees</a>
			<a href="employee/getone">Get details of Employee with id</a>
		</div>
	</div>

</body>
</html>