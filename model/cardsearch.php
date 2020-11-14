<?php
    function cardSearch($card_ID, $name, $type, $race, $card_attribute, $level, $atk, $def, $card_desc) {
        require('connectdb.php');
        $query = "SELECT * FROM Cards NATURAL JOIN Card_name NATURAL JOIN Card_image NATURAL LEFT JOIN Monster WHERE";

        if ($card_ID == "card_ID") {
            $query = $query." card_ID=card_ID";
        } else {
            $query = $query." card_ID=:card_ID";
        }
        if ($name == "name") {
            $query = $query." AND name=name";
        } else {
            $query = $query." AND name=:name";
        }
        if ($type == "type") {
            $query = $query." AND type=type";
        } else {
            $query = $query." AND type=:type";
        }
        if ($race == "race") {
            $query = $query." AND race=race";
        } else {
            $query = $query." AND race=:race";
        }
        if ($card_attribute == "card_attribute") {
            $query = $query." AND card_attribute=card_attribute";
        } else {
            $query = $query." AND card_attribute=:card_attribute";
        }
        if ($level == "level") {
            $query = $query." AND level=level";
        } else {
            $query = $query." AND level=:level";
        }
        if ($atk == "atk") {
            $query = $query." AND atk=atk";
        } else {
            $query = $query." AND atk=:atk";
        }
        if ($def == "def") {
            $query = $query." AND def=def";
        } else {
            $query = $query." AND def=:def";
        }
        if ($atk == "card_desc") {
            $query = $query." AND card_desc=card_desc";
        } else {
            $query = $query." AND card_desc=:card_desc";
        }

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