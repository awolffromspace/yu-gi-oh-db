<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<meta name="author" content="Rowan Dakota"/>

		<title>Yu-gi-oh DB</title>
		<link rel="icon" href="images/logo.png"/>

		<!-- CSS only -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
		<link rel="stylesheet" href="styles/loginStyle.css"/>

		<!-- Font awesome is used for the icons (<i> elements) and requires this line-->
		<script src="https://kit.fontawesome.com/245f30a0ca.js" crossorigin="anonymous"></script>

		<!-- JS, Popper.js, and jQuery -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="container">
		
			<h2>Register</h2>

			<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" name="mainform"> 
				<div class="form-group">
					<label for="username">Username: </label>
					<input type="text" id="username" class="form-control" placeholder="Enter Username" name="username"/>
					<span class="alert-danger" id="msg_username"></span>
				</div>

				<div class="form-group">
					<label for="password">Password: </label>
					<div class="input-group mb-2">
						<input type="password" id="password" class="form-control" placeholder="Enter Password" name="password"/>
					</div>
					<span class="alert-danger" id="msg_password"></span>
				</div>
				
				<div class="form-group">
					<label for="email">Email: </label>
					<div class="input-group mb-2">
						<input type="email" id="email" class="form-control" placeholder="Enter Email" name="email"/>
					</div>
					<span class="alert-danger" id="msg_email"></span>
				</div>

				<input type="submit" value="Register" class="btn btn-dark" />    
			</form>
			
			</br>
		
			<a href="login.php">
				<input type="submit" value="Log In" class="btn btn-outline-secondary" />
			</a>
		</div>
		

		
		<?php
			
			include('model/registerFormHandler.php');
			
			if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['username']) && isset($_POST['password']) && isset($_POST['email'])) {
				
				$username = trim($_POST['username']);
				$password = trim($_POST['password']);
				$email = trim($_POST['email']);
				$authorized = authenticate($username, $password, $email);
				if($authorized){
					echo "<div style='text-align: center;' class='bg-success text-white'>You've successfully registered</div>";
				}
				//either the username is in use or it has non-alphanumeric characters
				else{
					echo "<div style='text-align: center;' class='bg-danger text-white'>That username is invalid. Please try another</div>";
				}
			}
		?>
	</body>
</html>