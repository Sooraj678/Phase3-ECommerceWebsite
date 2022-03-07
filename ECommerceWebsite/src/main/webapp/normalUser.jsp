<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NormalUser-ViewPage</title>
<%@include file="components/common_css_js.jsp" %>
</head>
<body>
<%@include file="components/navbar.jsp" %>

<div class="container-fluid"> 

		<div class="container text-center">
           	<img src="image/back.jpg" style="max-width:100px;" class="img-fluid" alt="">
    	</div>
    	
<div class="col-md-12 text-center">
<h1> This is Normal User Pannel</h1>
</div>
</div>








<!--For Accessing CheckOut Page from directly Cart only -->
<%@include  file="components/common_modals.jsp" %>
</body>
<%@include file="components/footer.jsp" %>
</html>