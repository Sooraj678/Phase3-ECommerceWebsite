<%@page import="com.ecommercewebsite.helper.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill-View Page</title>
<%@include file="components/common_css_js.jsp" %>
</head>
<%@include file="components/navbar.jsp" %>
<body>

<form action="#!">
	<div class="row">
		<div class="col-md-12">

			<div class="card mt-3 mb-3">


						<table class="table table-bordered">
							<thead>
								<tr>
									<th scope="col">Name</th>
									<th scope="col">Email</th>
									<th scope="col">Contact</th>
									<th scope="col">ShippingAddress</th>
									<th scope="col">PurchaseDate</th>
									<th scope="col">PurchaseCategory</th>
									<th scope="col">DeliveryStatus</th>
									<th scope="col">ModeOfPayment</th>
									<th scope="col">TotalAmount</th>
									<th scope="col">DaysForDelivery</th>
								</tr>
							</thead>
							<tbody>
								<%
									try {
									
									String userEmail = request.getParameter("emailId");
									System.out.println("coming Id for Bill Print is: " + userEmail);
									Connection con = DbConnectionProvider.getCon();
									Statement stmt = con.createStatement();
									ResultSet rs = stmt.executeQuery("select *from purchasedrecord where puchase_UserEmail = '"+userEmail+"'");
									while (rs.next()) {
								%>
								<tr>
									
									<td><%=rs.getString(2)%></td>
									<td><%=rs.getString(3)%></td>
									<td><%=rs.getString(4)%></td>
									<td><%=rs.getString(5)%></td>
									<td><%=rs.getString(6)%></td>
									<td><%=rs.getString(7)%></td>
									<td><%=rs.getString(8)%></td>
									<td><%=rs.getString(9)%></td>
									<td><%=rs.getString(10)%></td>
									<td><%=rs.getString(11)%></td>
								</tr>

								<%
									}

								} catch (Exception e) {
									System.out.println(e);
								}
								%>
							</tbody>
			
			
					</table>
	<div class="container text-center">
	<label for="Print-YourBill"><h3 style="color: red;">Print Your Bill...!!! </h3></label> <br>
		<button type="submit" class="btn btn-primary border-0">Print</button>
	
	</div>
			</div>
	</div>
	
</div>
</form>


<!--For Accessing CheckOut Page from directly Cart only -->
<%@include  file="components/common_modals.jsp" %>



</body>
<%@include file="components/footer.jsp" %>
</html>