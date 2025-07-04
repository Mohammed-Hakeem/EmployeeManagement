<%@page import="java.util.List"%>
<%@page import="com.flm.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">

		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Address</th>
			</tr>
		</thead>
		<%
		List<Employee> emplist = (List<Employee>) request.getAttribute("emps");

		for (Employee emp : emplist) {
		%>
		<tr>

		<td><%=emp.getId()%></td>
		<td><%=emp.getName()%></td>
		<td><%=emp.getSalary()%></td>
		<td><%=emp.getAddress()%></td>
		
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>