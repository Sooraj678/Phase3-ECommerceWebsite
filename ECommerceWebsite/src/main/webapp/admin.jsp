<!-- Now we are going to protect admin.jsp Page So that except 
admin nobody can access admin Page - So for this we will apply our Java
Code here -->

<%@page import="com.ecommercewebsite.entities.User"%>
<%
	User user =  (User) session.getAttribute("current-user");
		if(user == null){
			
			session.setAttribute("message", "You are not logged in !!! Please login first");
			response.sendRedirect("login.jsp");
		}else
		{
			if(user.getUserType().equals("normal")){
			
				session.setAttribute("message", "You are not admin !!! Do not Access this Page...!!!");
				response.sendRedirect("login.jsp");
			}	
			
			
		}


%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<%@include file="components/common_css_js.jsp" %>
</head>

<body>
<%@include file="components/navbar.jsp" %>
	
	<div class="container">
		<div class="row mt-3">
		
		<!-- First Column -->
			<div class="col-md-4">
			
			<!-- First box -->
				<div class="card">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 125px;" class="img-fluid rounded-circle" 
							src="image/seo-and-web.png" alt="user_icon">
						</div>
						<h1>5656</h1>
						<h1 class="text-uppercase text-muted">Users</h1>
					</div>
				
				</div>	
			
			</div>
			
		<!-- Second Column -->	
			<div class="col-md-4">
			
			<!-- Second box -->
				<div class="card">
					<div class="card-body text-center">
					<div class="container">
							<img style="max-width: 125px;" class="img-fluid rounded-circle" 
							src="image/list.png" alt="user_icon">
					</div>
						<h1>7070</h1>
						<h1 class="text-uppercase text-muted">Categories</h1>
					</div>
				
				</div>	
			
			</div>
			
		<!-- Third Column -->	
			<div class="col-md-4">
			
			<!-- Third box -->
				<div class="card">
					<div class="card-body text-center">
					<div class="container">
							<img style="max-width: 125px;" class="img-fluid rounded-circle" 
							src="image/product.png" alt="user_icon">
					</div>
						
						<h1>858</h1>
						<h1 class="text-uppercase text-muted">Products</h1>
					</div>
				
				</div>	
			
			</div>
		</div>
	
	
	<!-- Second row for two boxes -->
	<div class="row mt-3">
	
			<!-- Second Row: First Column -->
			<div class="col-md-6">
			
				<!-- Second Row: First Column : First Box -->
				<div class="card">
					<div class="card-body text-center">
					<div class="container">
							<img style="max-width: 125px;" class="img-fluid rounded-circle" 
							src="image/keys.png" alt="user_icon">
					</div>
						<p class="mt-2">Click here to add new Category</p>
						<h1 class="text-uppercase text-muted">Add Categories</h1>
					</div>
				
				</div>
			
			</div>
			<!-- Second Row: Second Column -->
			<div class="col-md-6">
			
			<!--Second Row: Second Column: Second Box -->
			<div class="card">
					<div class="card-body text-center">
					<div class="container">
							<img style="max-width: 125px;" class="img-fluid rounded-circle" 
							src="image/plus.png" alt="user_icon">
					</div>
						<p class="mt-2">Click here to add new Product</p>
						<h1 class="text-uppercase text-muted">Add Product</h1>
					</div>
				
				</div>
			
			</div>
			
	
	</div>
	
	</div>
	
	
	
</body>
<%@include file="components/footer.jsp" %>
</html>