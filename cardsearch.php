<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="author" content="Rowan Dakota"/>

        <title>Yu-Gi-Oh! Database</title>
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
?>
 
    <body>
		<?php include('header.php'); require('model/connectdb.php'); ?>
		
        <form>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="cardID">Card ID</label>
                    <input type="text" class="form-control" id="cardID">
                </div>
                <div class="form-group col-md-4">
                    <label for="name">Card Name</label>
                    <input type="text" class="form-control" id="name">
                </div>
                <div class="form-group col-md-4">
                    <label for="type">Card Type</label>
                    <input type="text" class="form-control" id="type">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Search</button>
        </form>

<?php
//close bracket from the "if" from before
}
else{   // not logged in yet
	header('Location: login.php');  // redirect to the login page
}
?>

	</body>
</html>