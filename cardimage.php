<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="author" content="Rowan Dakota"/>

        <title>Twin Oaks Labor tracker</title>
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
		<br>

        <?php
            require('model/connectdb.php');
            require('model/decks.php');
            $username=$_SESSION['user'];
            $password_pre=$_SESSION['password'];
            $password=md5($password_pre);
            $userID=getUserID($username, $password)[0]['user_ID'];
            $ID = $_GET['view'];
            $commentID = getAllComments($ID);
            if ($_SERVER['REQUEST_METHOD'] == 'POST')
                {
                if (!empty($_POST['action']) && ($_POST['action']=='Post')){
                        commentCard($_POST['comment'], $ID);
                        commentUser($_POST['comment'], $userID);
                        $commentID = getAllComments($ID);
                    }
                }
        ?>
<br>
        <!-- <form action="formprocessing.php" method="post">  -->
<form action="cardimage.php?view=<?=$ID?>" method="post" style="width: 80%; margin-left:110px">
<?php
$image = 'https://storage.googleapis.com/ygoprodeck.com/pics/'. $ID .'.jpg';
$imageData = base64_encode(file_get_contents($image));
echo '<img src="data:image/jpeg;base64,'.$imageData.'">';
?>
  <div class="form-group">
    
    <input type="string" class="form-control" name="comment" required
  </div>
  <br>
  <input type="submit" value="Post" name="action" class="btn btn-dark" title="Insert a friend into a friends table" />
</form>

        <br>
        <br>
        <br>
        <br>
        <div class="container" style="max-height: 300px; overflow:scroll">
            <h2>Comments</h2>
                <table class="w3-table w3-bordered w3-card-4 center" style="width:60%; max-height:10px; overflow:scroll">
            <thead>
            <tr style="background-color:#B0B0B0">
             <th width="20%">Name</th>
             <th width="40%">Comments</th>
             </tr>
             </thead>
            <?php foreach ($commentID as $item): ?>
             <tr>
             <td><?php
               $user = getName($item['comment_ID']);
               foreach($user as $result) {
                echo $result['username'], '<br>';
               }
               ?></td>
               <td><?php
               $comm = getComment($item['comment_ID']);
               foreach($comm as $result) {
               echo $result['comment'], '<br>';
               }
               ?></td>
            </tr>
            <?php endforeach; ?>
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
