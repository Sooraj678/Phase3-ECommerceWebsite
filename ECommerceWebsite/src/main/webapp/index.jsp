<%@page import="com.ecommercewebsite.entities.Category"%>
<%@page import="com.ecommercewebsite.model.CategoryDao"%>
<%@page import="com.ecommercewebsite.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommercewebsite.model.ProductDao"%>
<%@page import="com.ecommercewebsite.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ECommerceHome-ViewPage</title>
<%@include file="components/common_css_js.jsp" %>

</head>
<body>
	
	<%@include file="components/navbar.jsp" %>
	
	<div class="row mt-3 mx-2">
	
	<%
		ProductDao dao =  new ProductDao(FactoryProvider.getFactory());
		List<Product> list =  dao.getAllProducts();
		
		CategoryDao cdao  = new CategoryDao(FactoryProvider.getFactory());
		List<Category> clist = 	cdao.getCategories();
	%>
	
	<!-- Show Categories  -->
		<div class="col-md-2">
		
			<h1><%=clist.size() %></h1>
			<%
				for(Category c: clist){
					
					out.println(c.getCategoryTitle()+"<br>");
				}
			
			%>
		
		
		</div>
	
	<!-- Show Products  -->	
		<div class="col-md-8">
				<h1> Number of Products is <%= list.size() %></h1>
				<%
					for(Product product:list)
					{	
						out.println(product.getpPhoto()+"<br>");
						out.println(product.getpName()+"<br><br>");
					
					}
		
				
				%>
		</div>
	
	</div>

</body>

<%@include file="components/footer.jsp" %>
</html>