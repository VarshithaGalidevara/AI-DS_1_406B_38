<!DOCTYPE html>
<html>
<head>
	<title>Welcome to Survey Management System</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style>
		
		h1 {text-align: center;}
		/* center the buttons */
		.btn-center {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 50vh;
		}
		/* style the buttons */
		.btn {
			padding: 1em 2em;
			font-size: 1.5em;
			border-radius: 5px;
			margin: 0 1em;
		}
		.signup {
			background-color: #4CAF50;
			color: white;
		}
		.login {
			background-color: #2196F3;
			color: white;
		}
		body {
			background-image: url('login.jpg');
			background-repeat: no-repeat;
			background-size: cover;
			background-position: center;
		}
	</style>
</head>
<body>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Survey Management</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="homepage.jsp">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="about.jsp">About</a>
      <a class="nav-item nav-link" href="adminlogin.jsp">Admin</a>
    </div>
  </div>
</nav>
	
	<h1 >Welcome to Survey Management System</h1>
	
	<div class="btn-center">
		<a href="SignUp.jsp"><button class="btn signup">Sign Up</button></a>
		<a href="login.jsp"><button class="btn login">Login</button></a>
	</div>
	

</body>
</html>
