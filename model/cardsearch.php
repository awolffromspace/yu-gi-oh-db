<?php
    function cardSearch($cardID, $name, $type, $race, $attribute, $level, $atk, $def, $cardDesc) {
        require('connectdb.php');
        $query = "SELECT * FROM Card_name WHERE card_ID=:cardID OR name=':name' OR type=':type' OR race=':race'";

        $statement = $db->prepare($query);

        $statement->bindValue(':cardID', $cardID);
        $statement->bindValue(':name', $name);
        $statement->bindValue(':type', $type);
        $statement->bindValue(':race', $race);
        
        $statement->execute();
        
        $results = $statement->fetch();
        $statement->closeCursor();
        return $results;
    }
?>