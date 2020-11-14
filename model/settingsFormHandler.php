<?php
    // author: Rowan Dakota
	
    /** Checks if the new username is in the database and, if not, the username is changed */
    function change_usr($new_user) {
		require('connectdb.php');
		
		$old_user = $_SESSION['user'];
		
        // make sure the username is not already in use
        $query = "SELECT * FROM `Users` WHERE `username`=:user AND `pswd`=pswd";

        $statement = $db->prepare($query);

        $statement->bindValue(':user', $new_user);
        
        $statement->execute();
        
        $result = $statement->fetch();
        $statement->closeCursor();
		
        // This is the case where the username already exists or the username is empty
        if ($result || strlen($new_user) == 0)
            return false;

        // if the username doesn't exist, then we update the username!
        else{
			
	
			$query = "UPDATE `Users` SET `username`=:new_name WHERE `username`=:old_name";
			$statement = $db->prepare($query);
			$statement->bindValue(':new_name', $new_user);
			$statement->bindValue(':old_name', $old_user);
					
			$result = $statement->execute();

			$statement->closeCursor();
			
            return true;
		}
    }
	/** Updates the user's password */
	function change_pwd($pwd){
		
		require('connectdb.php');
		
		$user = $_SESSION['user'];
		$hashPwd = md5($pwd); // hash the password
		
		$query = "UPDATE `Users` SET `pswd`=:pwd WHERE `username`=:name";
		$statement = $db->prepare($query);
		$statement->bindValue(':pwd', $hashPwd);
		$statement->bindValue(':name', $user);
				
		$result = $statement->execute();

		$statement->closeCursor();
		if($result){
			return true;
		}
		else{
			return false;
		}
	}
	function add_email($email){
		require('connectdb.php');
		
		//get the user's ID
		$user = $_SESSION['user'];
		
		$query = "SELECT user_ID FROM `Users` WHERE `username`=:user AND `pswd`=pswd";

        $statement = $db->prepare($query);

        $statement->bindValue(':user', $user);
        $statement->execute();
        
        $result = $statement->fetch();
        
		
		//add the email
		$query = "INSERT INTO `User_emails` (`user_ID`, `emails`) VALUES(:ID, :email)";

		$statement = $db->prepare($query);
		$statement->bindValue(':ID', $result[0]);
		$statement->bindValue(':email', $email);
		$result = $statement->execute();
		
		$statement->closeCursor();
		
		if($result) {
			return true;
		}
		else{
			return false;
		}
	}
	
	function change_email($new_email, $old_email){
		require('connectdb.php');
		
		//get the user's ID
		$user = $_SESSION['user'];
		
		$query = "SELECT user_ID FROM `Users` WHERE `username`=:user AND `pswd`=pswd";

        $statement = $db->prepare($query);

        $statement->bindValue(':user', $user);
        $statement->execute();
        
        $result = $statement->fetch();
		$ID = $result[0];
		
		//check the old email exists
		$query = "SELECT * FROM `User_emails` WHERE `user_ID` = :ID AND `emails` =:old_email";

        $statement = $db->prepare($query);

        $statement->bindValue(':ID', $ID);
        $statement->bindValue(':old_email', $old_email);
        $statement->execute();
        
        $result = $statement->fetch();
		
		if (!$result){
			return false;
		}
		else{
		
			//change the user's email
			$query = "UPDATE `User_emails` SET `emails`=:new_email WHERE `user_ID`=:ID AND `emails`=:old_email";
			$statement = $db->prepare($query);
			$statement->bindValue(':new_email', $new_email);
			$statement->bindValue(':old_email', $old_email);
			$statement->bindValue(':ID', $ID);
					
			$result = $statement->execute();

			$statement->closeCursor();
			
			return true;
		}
	}
	function delete_account(){
		
		require('connectdb.php');
		
		//get the user's ID
		$user = $_SESSION['user'];
		
		$query = "SELECT user_ID FROM `Users` WHERE `username`=:user AND `pswd`=pswd";

        $statement = $db->prepare($query);

        $statement->bindValue(':user', $user);
        $statement->execute();
        
        $result = $statement->fetch();
		$ID = $result[0];
		

		
		//get all the comment_ID's from Comments_card so that we can delete the associated comments later
		$query = "SELECT `comment_ID`FROM `Comments_user` WHERE `user_ID` = :ID";

        $statement = $db->prepare($query);

        $statement->bindValue(':ID', $ID);
        $statement->execute();
        
        $comIDs = $statement->fetchAll();
		
		//delete the comments from Comments_user
		$query = "DELETE FROM `Comments_user` WHERE `user_ID`=:ID";

		$statement = $db->prepare($query);
		$statement->bindValue(':ID', $ID);
		$statement->execute();
		
		
		//Delete associated comments from Comments_card
		foreach($comIDs as $x){
			$query = "DELETE FROM `Comments_card` WHERE `comment_ID`=:ID";

			$statement = $db->prepare($query);
			//$x[0] stores the comment_ID in it
			$statement->bindValue(':ID', $x[0]);
			$statement->execute();
		}
		
		//delete from Decks
		$query = "DELETE FROM `Decks` WHERE `user_ID`=:ID";

		$statement = $db->prepare($query);
		$statement->bindValue(':ID', $ID);
		$statement->execute();
		
		
		//delete from User_emails
		$query = "DELETE FROM `User_emails` WHERE `user_ID`=:ID";

		$statement = $db->prepare($query);
		$statement->bindValue(':ID', $ID);
		$statement->execute();
		
		//delete from Users
		
		$query = "DELETE FROM `Users` WHERE `user_ID`=:ID";

		$statement = $db->prepare($query);
		$statement->bindValue(':ID', $ID);
		$statement->execute();
		
		$statement->closeCursor();
		
	}
?>