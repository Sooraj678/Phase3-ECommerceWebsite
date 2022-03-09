<%@page import="java.util.Map"%>
<%@page import="com.ecommercewebsite.helper.Helper"%>
<%@page import="com.ecommercewebsite.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommercewebsite.helper.FactoryProvider"%>
<%@page import="com.ecommercewebsite.model.CategoryDao"%>
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


<%
		CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
		List<Category> list = cdao.getCategories();
		
		
		//Getting count for product and user by using Map concepts
		
		Map<String,Long> m = Helper.getCounts(FactoryProvider.getFactory());
		
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
	
	<div class="container admin">
	
	<div class="container-fluid mt-3"> 
		<%@include file="components/message.jsp" %>
		
	</div>
	
	
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
						<h1><%=m.get("userCount")%></h1>
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
						<h1> <%=list.size() %> </h1>
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
						
						<h1> <%=m.get("productCount")%> </h1>
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
				<div class="card" data-toggle="modal" data-target="#add-category-modal">
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
			<div class="card" data-toggle="modal" data-target="#add-product-modal">
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
	
	<!-- Start of Third Row to Perform Additional Operation For the Admin -->	

<div class="row mt-3">
		
		<!-- First Column -->
			<div class="col-md-4">
			
			<!-- First box -->
				<div class="card" data-toggle="modal" data-target="#change-adminPassword-modal">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 125px;" class="img-fluid rounded-circle" 
							src="image/passwordChange.jpg" alt="user_icon">
						</div>
						<p class="mt-2">Click here for Admin Password Change </p>
						<h1 class="text-uppercase text-muted">Pwd Change</h1>
					</div>
				
				</div>	
			
			</div>
			
		<!-- Second Column -->	
			<div class="col-md-4">
			
			<!-- Second box -->
				<div class="card" data-toggle="modal" data-target="#getUserList-modal">
					<div class="card-body text-center">
					<div class="container">
							<img style="max-width: 125px;" class="img-fluid rounded-circle" 
							src="image/userList.png" alt="user_icon">
					</div>
						<p class="mt-2">Click here for Getting User List</p>
						<h1 class="text-uppercase text-muted">Get User List</h1>
					</div>
				
				</div>	
			
			</div>
			
		<!-- Third Column -->	
			<div class="col-md-4">
			
			<!-- Third box -->
				<div class="card" data-toggle="modal" data-target="#purchasedReport-modal">
					<div class="card-body text-center">
					<div class="container">
							<img style="max-width: 125px;" class="img-fluid rounded-circle" 
							src="image/purchaseFiltered.png" alt="user_icon">
					</div>
						
						<p class="mt-2">Click here to see Purchase Report </p>
						<h1 class="text-uppercase text-muted">Filtered Data</h1>
					</div>
				
				</div>	
			
			</div>
		</div>
	

<!-- End of Third Row to Perform Additional Operation For the Admin -->
	
	
	</div>

	<!-- Add Category Model -->

<!-- Modal -->
	<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="exampleModalLabel">Please fill the Category Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
					<!-- we design a form here to give our input -->
					<form action="ProductOperationCtl" method="post">
					
					<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="catTitle" placeholder="Please Enter Category Title" required/>
						
						</div>
						<div class="form-group">
							<textarea style="height:250px;" name="catDescription" class="form-control" placeholder="Please Enter Category Description"></textarea>
						
						</div>
						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>
							<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						
						</div>
					
					
					</form>
			
				</div>
			</div>
		</div>
	</div>


	<!--End Category Model -->
	<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
	
<!--Product Model -->

<!-- Modal -->
<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Product Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <!-- form -->
        <form action="ProductOperationCtl" method="post" enctype="multipart/form-data">
        	
        	<input type="hidden" name="operation" value="addproduct"/>
        	
			<!-- product title -->		
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter title of product" name="pName" required />
			</div>  
			
			<!-- product description -->
			<div class="form-group">
				<textarea style="height:150px;" class="form-control" placeholder="Enter product description" name="pDesc"></textarea>
			</div> 
			
			<!-- product price -->
			<div class="form-group">
				<input type="number" class="form-control" placeholder="Enter price of the product" name="pPrice" required />
			</div>
			
			<!-- product discount -->
			<div class="form-group">
				<input type="number" class="form-control" placeholder="Enter product discount" name="pDiscount" required />
			</div>  
			
			<!-- product quantity -->
			<div class="form-group">
				<input type="number" class="form-control" placeholder="Enter product Quantity" name="pQuantity" required />
			</div>    
        
        <!-- product category, coming from DB -->
        <!--product category-->


						<div class="form-group">
							<select name="catId" class="form-control" id="">
								<%
									for (Category c : list) {
								%>
								<option value="<%=c.getCategoryId()%>">
									<%=c.getCategoryTitle()%>
								</option>
								<%
									}
								%>
							</select>

						</div>


	<!-- Product File [ Product Photo ] -->
        <div class="form-group"> 
        <label for="pPic">Select Picture of Product</label> 
        <br>     
        <input type="file" id="pPic" name="pPic" required />
        </div>
        
         <!-- Submit Button -->
         <div class="container text-center">
         	<button class="btn btn-outline-success">Add Product</button>
         
         </div>
        
        
        
        </form>
        

        <!-- End form -->
        
  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

	
<!--End Product Model -->



<!-- Add Admin Password Change Model -->

<!-- Password Change Modal -->
	<div class="modal fade" id="change-adminPassword-modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="exampleModalLabel">Please fill the Details for Admin Password Change</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
					<!-- we design a form here to give our input -->
					
					<form action="UpdateAdminPasswordCtl" method="post">
					
						<div class="form-group">
							<label for="email" style="color:#ff5722!important;"><b>Admin's Email-Id</b></label> 
							<input name="admin_email" type="email"
								class="form-control" id="email" aria-describedby="emailHelp"
								placeholder="Enter admin Email-Id Here to update admin Password..!!">
						</div>
						
						<div class="form-group">
							<label for="adminPasswordChange" style="color:#ff5722!important;"><b>Enter Admin New Password to be Update</b></label> 
							<input name="admin_Newpassword"  type="password" class="form-control" id="password"
								aria-describedby="emailHelp"
								placeholder="Enter admin's new Password Here for updation..!!">
						</div>
						<div class="container text-center">
							<button class="btn btn-outline-success">Reset-AdminPassword</button>
							<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						
						</div>

					</form>
			
				</div>
			</div>
		</div>
	</div>


<!-- End of Admin Password Change Model -->




<!-- Add Getting User List Model -->

<!-- Getting User List Modal -->
	<div class="modal fade" id="getUserList-modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="exampleModalLabel">Showing User List</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
					<!-- we design a form here to give our input -->
					<form action="#!" method="post">
					
					<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="catTitle" placeholder="Please Enter Category Title" required/>
						
						</div>
						<div class="form-group">
							<textarea style="height:250px;" name="catDescription" class="form-control" placeholder="Please Enter Category Description"></textarea>
						
						</div>
						<div class="container text-center">
							<button class="btn btn-outline-success">Get User List</button>
							<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						
						</div>
					
					
					</form>
			
				</div>
			</div>
		</div>
	</div>


<!-- End of Getting User List Model -->



<!-- Add Filtered Purchase Report Model -->

<!-- Filtered Purchase Report Modal -->
	<div class="modal fade" id="purchasedReport-modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="exampleModalLabel">Showing Purchased Report</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
					<!-- we design a form here to give our input -->
					<form action="#!" method="post">
					
					<input type="hidden" name="operation" value="addcategory">
						<div class="form-group">
							<input type="text" class="form-control" name="catTitle" placeholder="Please Enter Category Title" required/>
						
						</div>
						<div class="form-group">
							<textarea style="height:250px;" name="catDescription" class="form-control" placeholder="Please Enter Category Description"></textarea>
						
						</div>
						<div class="container text-center">
							<button class="btn btn-outline-success">Show Purchased Report</button>
							<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						
						</div>
					
					
					</form>
			
				</div>
			</div>
		</div>
	</div>


<!-- End of Filtered Purchase Report Model -->














<!--For Accessing CheckOut Page from directly Cart only -->
<%@include  file="components/common_modals.jsp" %>

</body>
<%@include file="components/footer.jsp" %>
</html>