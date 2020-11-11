<?php
    // author: Rowan Dakota
    
    /** Authenticates the login form by checking for the given username and password in the database */
    function authenticate($user, $pwd) {
        // if the values do not contain only alphanumeric data, return false
        if(!ctype_alnum($user) || !ctype_alnum($pwd))
            return false;

        require('connectdb.php');
		
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
	
			$statement->closeCursor();
			
            return true;
		}
    }
?>