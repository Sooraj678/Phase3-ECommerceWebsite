<%@page import="com.ecommercewebsite.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index-PageView</title>
</head>
<body>
<h1>Hello World</h1>
<h1> Creating Session Factory Object</h1>
<!--this is Singleton Design Pattern in which every time we get a single same object only   -->
	<%
			out.println(FactoryProvider.getFactory()+"<br>");
			out.println(FactoryProvider.getFactory()+"<br>");
			out.println(FactoryProvider.getFactory());
			
	%>
</body>
</html>