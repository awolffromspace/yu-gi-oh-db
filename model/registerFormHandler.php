<?php
    // author: Rowan Dakota (based off of code by Peter Chen)
    
    /** Authenticates the login form by checking for the given username and password in the database */
    function authenticate($user, $pwd, $email) {

        require('connectdb_pre.php');
		
        // make sure the username is not already in use
        $query = "SELECT * FROM `Users` WHERE `username`=:user AND `pswd`=pswd";

        $statement = $db->prepare($query);

        $statement->bindValue(':user', $user);
        
        $statement->execute();
        
        $result = $statement->fetch();
        $statement->closeCursor();
        // This is the case where the username already exists
        if ($result)
            return false;

        // if the username doesn't exist, then we register the user!
        else{
	
			$query = "INSERT INTO `Users` (`username`, `pswd`) VALUES(:name, :pswd)";
			$statement = $db->prepare($query);
			$statement->bindValue(':name', $user);
			$statement->bindValue(':pswd', $pwd);
					
			$result = $statement->execute();

			if(!$result) {
				print_r($statement->errorInfo());
				$statement->closeCursor();
				exit;
			}
	
			//insert the email into the User_emails database
			$query = "SELECT user_ID FROM `Users` WHERE `username`=:user AND `pswd`=:pswd";
			
			//get the user's ID
			$hashPwd = md5($pwd); // hash the password

			$statement = $db->prepare($query);
			$statement->bindValue(':user', $user);
			$statement->bindValue(':pswd', $hashPwd);
			$statement->execute();
			$result = $statement->fetch();
			
			//insert email
			$query = "INSERT INTO `User_emails` (`user_ID`, `emails`) VALUES(:ID, :email)";

			$statement = $db->prepare($query);
			$statement->bindValue(':ID', $result[0]);
			$statement->bindValue(':email', $email);
			$result = $statement->execute();
			
			if(!$result) {
				print_r($statement->errorInfo());
				$statement->closeCursor();
				exit;
			}
	
			$statement->closeCursor();
			
            return true;
		}
    }
?>