<?php
    function cardSearch($card_ID, $name, $type, $race, $card_attribute, $level, $atk, $def, $card_desc) {
        require('connectdb.php');
        $query = "SELECT * FROM Cards NATURAL JOIN Card_name NATURAL JOIN Card_image NATURAL LEFT JOIN Monster WHERE card_ID=:card_ID AND name=:name AND type=:type AND race=:race AND card_attribute=:card_attribute AND level=:level AND atk=:atk AND def=:def AND card_desc=:card_desc";

        $statement = $db->prepare($query);

        $statement->bindValue(':card_ID', intval($card_ID), PDO::PARAM_INT);
        $statement->bindValue(':name', $name, PDO::PARAM_STR);
        $statement->bindValue(':type', $type, PDO::PARAM_STR);
        $statement->bindValue(':race', $race, PDO::PARAM_STR);
        $statement->bindValue(':card_attribute', $card_attribute, PDO::PARAM_STR);
        $statement->bindValue(':level', intval($level), PDO::PARAM_INT);
        $statement->bindValue(':atk', intval($atk), PDO::PARAM_INT);
        $statement->bindValue(':def', intval($def), PDO::PARAM_INT);
        $statement->bindValue(':card_desc', $card_desc, PDO::PARAM_STR);

        echo $query;
        echo $card_ID;
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