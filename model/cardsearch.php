<?php
    function cardSearch($card_ID, $name, $type, $race, $card_attribute, $level, $atk, $def, $card_desc) {
        require('connectdb.php');
        $query = "SELECT * FROM Cards NATURAL JOIN Card_name NATURAL JOIN Card_image NATURAL LEFT JOIN Monster WHERE card_ID=:card_ID AND name=:name AND type=:type AND race=:race AND card_attribute=:card_attribute AND level=:level AND atk=:atk AND def=:def AND card_desc=:card_desc";

        $statement = $db->prepare($query);

        $statement->bindValue(':card_ID', $card_ID);
        $statement->bindValue(':name', $name);
        $statement->bindValue(':type', $type);
        $statement->bindValue(':race', $race);
        $statement->bindValue(':card_attribute', $card_attribute);
        $statement->bindValue(':level', $level);
        $statement->bindValue(':atk', $atk);
        $statement->bindValue(':def', $def);
        $statement->bindValue(':card_desc', $card_desc);

        echo $query;
        echo $card_ID;
        echo is_int($card_ID);
        echo $name;
        echo $type;
        echo $race;
        echo $card_attribute;
        echo $level;
        echo $atk;
        echo $def;
        echo $card_desc;

        $statement->execute();

        $results = $statement->fetchAll();
        $statement->closeCursor();
        return $results;
    }
?>