<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<style>
	h1 {text-align: center;}	
		/* center the form */
		.form-center {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 50vh;
		}
		/* style the form */
		form {
			display: flex;
			flex-direction: column;
			align-items: center;
			border: 1px solid #ccc;
			padding: 2em;
			border-radius: 5px;
			background-color: #f2f2f2;
		}
		label {
			display: block;
			margin-bottom: 1em;
		}
		input[type="text"],
		input[type="email"],
		input[type="password"] {
			padding: 0.5em;
			font-size: 1em;
			border-radius: 3px;
			border: 1px solid #ccc;
			margin-bottom: 1em;
			width: 100%;
			box-sizing: border-box;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 1em;
			border: none;
			border-radius: 3px;
			font-size: 1.2em;
			cursor: pointer;
			width: 100%;
			box-sizing: border-box;
		}
	</style>
</head>
<body>
	<h1 >Welcome to Sign Up Page</h1>
	<br>
	<br>
	<br>
	
	<div class="form-center">
		<form action="SignUpValidate.java" >
			<label for="name">Enter Your UserName:</label>
			<input type="text" id="name" name="username" required>
			<label for="email">Enter Your Email:</label>
			<input type="email" id="email" name="email" required>
			<label for="password">Enter Your Password:</label>
			<input type="password" id="password" name="password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,17}$"required>
			Note:Password must contain atleast 1 digit,small,capital letter,
			1special character,length of atleast 8<br>
			<br>
			<span style="color: red;">${error}</span>
			<input type="submit" value="Sign Up">
		</form>
	</div>
</body>
</html>
