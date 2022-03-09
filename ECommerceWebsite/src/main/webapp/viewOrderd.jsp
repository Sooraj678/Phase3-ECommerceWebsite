<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access Checkout page");
        response.sendRedirect("login.jsp");
        return;

    }

%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ordered-ViewPage</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
<%@include file="components/navbar.jsp"%>

<h1 style="color: red;"> Welcome to Ordered Page</h1>

<%@include file="components/message.jsp" %>






<%@include  file="components/common_modals.jsp" %>
</body>
<%@include file="components/footer.jsp" %>
</html>