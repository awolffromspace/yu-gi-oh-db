<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="author" content="Rowan Dakota"/>

        <title>Yu-gi-oh DB</title>
		<link rel="icon" href="images/logo.png"/>
		
		<!-- CSS -->
        <link rel="stylesheet" type="text/css" href="styles/reset.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
        <link rel="stylesheet" type="text/css" href="styles/style.css"/>
		<link rel="stylesheet" type="text/css" href="styles/profileStyle.css"/>
        <!-- Font awesome is used for the icons (<i> elements) and requires this line-->
        <script src="https://kit.fontawesome.com/245f30a0ca.js" crossorigin="anonymous"></script>
   
    </head>

<!--checks to see if the user is logged in-->
<?php
session_start();
if (isset($_SESSION['user']))
{

	include('model/settingsFormHandler.php');
	$suc_message ="";
	$fail_message ="";

	if ($_SERVER['REQUEST_METHOD'] == "POST"){
		//change username
		if (isset($_POST['username'])){
			$username = trim($_POST['username']);
			$changed = change_usr($username);
			if($changed){
				$suc_message = "Your username is updated";
				$_SESSION['user'] = $username;
			}
			else{
				$fail_message = "That username is invalid. Please try another";
			}
		}
		//change password
		else if (isset($_POST['password'])){
			$password = trim($_POST['password']);
			if (strlen($password) != 0){
				$changed = change_pwd($password);
				if($changed){
					$suc_message = "Your password is updated";
				}
				else{
					$fail_message = "For some godforsaken reason your password is not updated (this shouldn't happen)";
				}
			}
			else{
				$fail_message = "Your password can't be nothing";
			}
		}
		//update email
		else if (isset($_POST['old_email']) && isset($_POST['new_email'])){
			$new_email = trim($_POST['new_email']);
			$old_email = trim($_POST['old_email']);
			$changed = change_email($new_email, $old_email);
			if($changed){
				$suc_message = "Your email has been change";
			}
			else{
				$fail_message = "That email is not saved under your name";
			}
		}
		//add an email
		else if (isset($_POST['add_email'])){
			$email = trim($_POST['add_email']);
			$added = add_email($email);
			if($added){
				$suc_message = "Your email has been added";
			}
			else{
				$fail_message = "Your email was of an improper form. Please try again";
			}
		}
		//delete the user's account
		else if (isset($_POST['delete_account'])){
			$user = trim($_POST['delete_account']);
			if ($user != $_SESSION['user']){
				$fail_message = "Um, that's not your username. Please type again";
			}
			else{
				delete_account();
				header('Location: logout.php');
			}
		}
	}
?>
 
    <body>
		<?php include('header.php'); ?>
		<div class = "center">
			<div style = "text-align: center;">User Settings</div>
			<?php 
				if (strlen($suc_message) != 0){
					echo "<div style='text-align: center;' class='bg-success text-white'>" . $suc_message . "</div>";
				}
				else if (strlen($fail_message) != 0){
					echo "<div style='text-align: center;' class='bg-danger text-white'>" . $fail_message . "</div>";
				}
			?>
			</br>
			<div class="bordered">
				<div style="text-align: center;">Update Account</div>
				</br>

				<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" name="mainform"> 
					<div class="form-group">
						<label style="text-align: left;" for="username">Change Username: </label>
						<input type="text" id="username" class="form-control" placeholder="New Username" name="username"/>
						<span class="alert-danger" id="msg_username"></span>
					</div>
					<input type="submit" value="Update" class="btn btn-dark" />
				</form>
				</br>
				<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" name="mainform">
					<div class="form-group">
						<label for="password">Change Password: </label>
						<div class="input-group mb-2">
							<input type="password" id="password" class="form-control" placeholder="New Password" name="password"/>
						</div>
						<span class="alert-danger" id="msg_password"></span>
					</div>
					<input type="submit" value="Update" class="btn btn-dark" />
				</form>
				</br>
				<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" name="mainform">
					<div class="form-group">
						<label for="email">Change Email: </label>
						<div class="input-group mb-2">
							<input type="email" id="old_email" class="form-control" placeholder="Old Email" name="old_email"/>
						</div>
						<span class="alert-danger" id="msg_email"></span>
						
					<div class="form-group">
						<div class="input-group mb-2">
							<input type="email" id="new_email" class="form-control" placeholder="New Email" name="new_email"/>
						</div>
						<span class="alert-danger" id="msg_email"></span>
					</div>
					<input type="submit" value="Update" class="btn btn-dark" />
				</form>
				</br>
				</br>
				<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" name="mainform">
					<div class="form-group">
						<label for="email">Add Email: </label>
						<div class="input-group mb-2">
							<input type="email" id="add_email" class="form-control" placeholder="Enter Email" name="add_email"/>
						</div>
						<span class="alert-danger" id="msg_email"></span>
					</div>
					<input type="submit" value="Add" class="btn btn-success" />
				</form>
				
				</br>
				</br>
				<div style="text-align: center;">Delete Account</div>
					</br>
					<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" name="mainform">
						<label for="email">To confirm, type your username: </label>
						<div class="input-group mb-2">
							<input type="username" id="delete_account" class="form-control" placeholder="Username" name="delete_account"/>
						</div>
						<span class="alert-danger" id="msg_email"></span>
						<div style="text-align: center;">
							<input type="submit" value="Delete Account" class="btn btn-danger" />
						</div>
					</form>
				</div>
			</div>
		</div>

<?php
//close bracket from the "if" from before
}
else{   // not logged in yet
	header('Location: login.php');  // redirect to the login page
}
?>

	</body>
</html>