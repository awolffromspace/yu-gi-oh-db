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
		<?php include('header.php'); ?>
        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" name="cardSearch">
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="cardID">Card ID</label>
                    <input type="text" class="form-control" id="cardID">
                </div>
                <div class="form-group col-md-4">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name">
                </div>
                <div class="form-group col-md-4">
                    <label for="type">Type</label>
                    <select class="form-control" id="type">
                        <option>Effect Monster</option>
                        <option>Flip Effect Monster</option>
                        <option>Fusion Monster</option>
                        <option>Normal Monster</option>
                        <option>Spell Card</option>
                        <option>Trap Card</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="race">Race</label>
                    <select class="form-control" id="race">
                        <option>Aqua</option>
                        <option>Beast</option>
                        <option>Beast-Warrior</option>
                        <option>Dinosaur</option>
                        <option>Dragon</option>
                        <option>Fairy</option>
                        <option>Fiend</option>
                        <option>Fish</option>
                        <option>Insect</option>
                        <option>Machine</option>
                        <option>Plant</option>
                        <option>Pyro</option>
                        <option>Reptile</option>
                        <option>Rock</option>
                        <option>Sea Serpent</option>
                        <option>Spellcaster</option>
                        <option>Thunder</option>
                        <option>Warrior</option>
                        <option>Winged Beast</option>
                        <option>Zombie</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label for="attribute">Attribute</label>
                    <select class="form-control" id="attribute">
                        <option>DARK</option>
                        <option>EARTH</option>
                        <option>FIRE</option>
                        <option>LIGHT</option>
                        <option>WATER</option>
                        <option>WIND</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label for="level">Level</label>
                    <select class="form-control" id="level">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="atk">ATK</label>
                    <input type="text" class="form-control" id="atk">
                </div>
                <div class="form-group col-md-4">
                    <label for="def">DEF</label>
                    <input type="text" class="form-control" id="def">
                </div>
                <div class="form-group col-md-4">
                    <label for="cardDesc">Description</label>
                    <input type="text" class="form-control" id="cardDesc">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Search</button>
        </form>

        <?php
            include('model/cardsearch.php');
            if ($_SERVER['REQUEST_METHOD'] == "POST") {   
                $cardID = trim($_POST['cardID']);
                $name = trim($_POST['name']);
                $type = trim($_POST['type']);
                $race = trim($_POST['race']);
                $attribute = trim($_POST['attribute']);
                $level = trim($_POST['level']);
                $atk = trim($_POST['atk']);
                $def = trim($_POST['def']);
                $cardDesc = trim($_POST['cardDesc']);
                $cards = cardSearch($cardID, $name, $type, $race, $attribute, $level, $atk, $def, $cardDesc);
                echo $name;
                //foreach ($cards as $card) {
                //    echo $card['name'];
                //}
            }
        ?>
<?php
//close bracket from the "if" from before
}
else{   // not logged in yet
	header('Location: login.php');  // redirect to the login page
}
?>

	</body>
</html>