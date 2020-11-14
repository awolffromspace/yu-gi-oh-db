<?php
    // author: Peter Chen
    
    /** Authenticates the login form by checking for the given username and password in the database */
    function authenticate($user, $pwd) {
        // if the values do not contain only alphanumeric data, return false
        if(!ctype_alnum($user) || !ctype_alnum($pwd))
            return false;

        require('connectdb_pre.php');
        $hashPwd = md5($pwd); // hash the password
        // :user and :pwd are bound to the variables down below
        $query = "SELECT * FROM `Users` WHERE `username`=:user AND `pswd`=:pwd";

        $statement = $db->prepare($query);

        $statement->bindValue(':user', $user);
        $statement->bindValue(':pwd', $hashPwd);
        
        $statement->execute();
        
        $result = $statement->fetch();
        $statement->closeCursor();
        // This is the case where the username/password is incorrect
        if (!$result)
            return false;

        // if the statement is correctly fetched, then it goes to the profile page
        else
            return true;
        
    }
?>