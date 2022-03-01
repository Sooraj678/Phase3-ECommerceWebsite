<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewUser-ViewPage</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
<div class="container-fluid">
		<div class="row mt-5">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body px-5">
				
  				<div class="container text-center">
                          <img src="image/add-friend.png" style="max-width:100px;" class="img-fluid" alt="">
                     </div>
                     
					<h3 class="text-center my-3">Sign-Up Here --!!</h3>
		<form action="RegisterCtl" method="post">
						<div class="form-group">
							<label for="name">User Name</label> 
							<input name="user_name" type="text"
								class="form-control" id="name" aria-describedby="emailHelp"
								placeholder="Enter User Name Here..!!">
						</div>

						<div class="form-group">
							<label for="email">User Email-ID</label> 
							<input name="user_email" type="email"
								class="form-control" id="email" aria-describedby="emailHelp"
								placeholder="Enter your Email-ID Here..!!">
						</div>

						<div class="form-group">
							<label for="password">User Password</label> 
							<input name="user_password"  type="password" class="form-control" id="password"
								aria-describedby="emailHelp"
								placeholder="Enter your Password Here..!!">
						</div>

						<div class="form-group">
							<label for="phone">User Phone</label> 
							<input name="user_phone" type="number"
								class="form-control" id="phone" aria-describedby="emailHelp"
								placeholder="Enter your Phone Number Here..!!">
						</div>

						<div class="form-group">
							<label for="phone">User Address</label>
							<textarea name="user_address" style="height: 150px;" class="form-control"
								placeholder="Enter Your Address Here...!!">
							</textarea>
						</div>

						<div class="container text-center">
							<button class="btn btn-outline-success">Register Here</button>
							<button class="btn btn-outline-warning">Reset</button>
						</div>


		</form>

				</div>

			</div>
		</div>
	</div>
</div>
</body>
</html>