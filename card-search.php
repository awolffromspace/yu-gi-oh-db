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
ob_start();
session_start();
if (isset($_SESSION['user']))
{
?>

    <body>
        <?php include('header.php'); ?>
        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" name="cardSearch">
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="card_ID">Card ID</label>
                    <input type="text" class="form-control" id="card_ID" name="card_ID" value="">
                </div>
                <div class="form-group col-md-4">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="">
                </div>
                <div class="form-group col-md-4">
                    <label for="type">Type</label>
                    <select class="form-control" id="type" name="type">
                        <option value="" selected hidden>Any</option>
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
                    <select class="form-control" id="race" name="race">
                        <option value="" selected hidden>Any</option>
                        <option>Aqua</option>
                        <option>Beast</option>
                        <option>Beast-Warrior</option>
                        <option>Continuous</option>
                        <option>Dinosaur</option>
                        <option>Dragon</option>
                        <option>Equip</option>
                        <option>Fairy</option>
                        <option>Field</option>
                        <option>Fiend</option>
                        <option>Fish</option>
                        <option>Insect</option>
                        <option>Machine</option>
                        <option>Normal</option>
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
                    <label for="card_attribute">Attribute</label>
                    <select class="form-control" id="card_attribute" name="card_attribute">
                        <option value="" selected hidden>Any</option>
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
                    <select class="form-control" id="level" name="level">
                        <option value="" selected hidden>Any</option>
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
                    <input type="text" class="form-control" id="atk" name="atk" value="">
                </div>
                <div class="form-group col-md-4">
                    <label for="def">DEF</label>
                    <input type="text" class="form-control" id="def" name="def" value="">
                </div>
                <div class="form-group col-md-4">
                    <label for="card_desc">Description</label>
                    <input type="text" class="form-control" id="card_desc" name="card_desc" value="">
                </div>
            </div>
            <button type="submit" class="btn btn-dark">Search</button>
        </form>

        <?php
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
                $_SESSION['search_card_ID'] = trim($_POST['card_ID']);
                $_SESSION['search_name'] = trim($_POST['name']);
                $_SESSION['search_type'] = trim($_POST['type']);
                $_SESSION['search_race'] = trim($_POST['race']);
                $_SESSION['search_card_attribute'] = trim($_POST['card_attribute']);
                $_SESSION['search_level'] = trim($_POST['level']);
                $_SESSION['search_atk'] = trim($_POST['atk']);
                $_SESSION['search_def'] = trim($_POST['def']);
                $_SESSION['search_card_desc'] = trim($_POST['card_desc']);
                header('Location: card-search-results.php');
                ob_end_flush();
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