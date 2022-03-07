<html>
<head><title>NormalUser-WelcomePageView</title>
<%@include file="components/common_css_js.jsp" %>

<style>
.welcome-text{
background-color: #3377ff;
color:#ffffff;
border-radius: 25px;
font-family: "Comic Sans MS", "Comic Sans", cursive;

  position:absolute;
  left:   700px;
  width:  800px;
  height: 540px;
  border: 10px solid black;

}

</style> 

</head>
<body>
<%@include file="components/navbar.jsp" %>
	
	<div class="home-content-wrapper mt-3">
		<div class="overlay-box ">
			<div class="container">
				<div class="welcome-text text-center mt-3" style="padding: 100px;">
				<h1 style="color:#cddc39!important;"><b>ECOMMERCE PORTAL WELCOMES YOU AS A DEAR CUSTOMER <br /> <br /> <br /><br />@ For The Easy Shopping on ECommerceCart</b></h1>
				</div>

			</div>

		</div>
	</div>
	
<!--For Accessing CheckOut Page from directly Cart only -->
<%@include  file="components/common_modals.jsp" %>

</body>
<%@include file="components/footer.jsp" %>
</html>
