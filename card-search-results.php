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
        <?php
            include('header.php');
            include('model/cardSearch.php');
            $card_ID = $_SESSION['search_card_ID'];
            $name = $_SESSION['search_name'];
            $type = $_SESSION['search_type'];
            $race = $_SESSION['search_race'];
            $card_attribute = $_SESSION['search_card_attribute'];
            $level = $_SESSION['search_level'];
            $atk = $_SESSION['search_atk'];
            $def = $_SESSION['search_def'];
            $card_desc = $_SESSION['search_card_desc'];
            $cards = cardSearch($card_ID, $name, $type, $race, $card_attribute, $level, $atk, $def, $card_desc);
        ?>
        <div class="container">
            <h2>Card Search Results</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Image</th>
                        <th scope="col">Card ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Type</th>
                        <th scope="col">Race</th>
                        <th scope="col">Attribute</th>
                        <th scope="col">Level</th>
                        <th scope="col">ATK</th>
                        <th scope="col">DEF</th>
                        <th scope="col">Description</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($cards as $card) { ?>
                        <tr>
                            <th scope="row"><img src="<?php echo $card['image_URL']; ?>" style="max-height: 200px;"></th>
                            <td><?php echo $card['card_ID']; ?></td>
                            <td><?php echo $card['name']; ?></td>
                            <td><?php echo $card['type']; ?></td>
                            <td><?php echo $card['race']; ?></td>
                            <td><?php echo $card['card_attribute']; ?></td>
                            <td><?php echo $card['level']; ?></td>
                            <td><?php echo $card['atk']; ?></td>
                            <td><?php echo $card['def']; ?></td>
                            <td><?php echo $card['card_desc']; ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
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