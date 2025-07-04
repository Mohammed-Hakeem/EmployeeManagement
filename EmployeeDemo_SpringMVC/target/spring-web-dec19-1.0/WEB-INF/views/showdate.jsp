<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


HashMap<String,Object> data=(HashMap<String,Object>)request.getAttribute("data");

%>



<h1>today's date : <%=data.get("date") %></h1>
<h1> Time : <%=data.get("time") %></h1>
<h1>My name is : <%=data.get("name") %></h1>
</body>
</html>