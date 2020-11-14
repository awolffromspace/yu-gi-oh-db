<?php

// CREATE TABLE friends (
//    name varchar(30) NOT NULL,
//    major varchar(10) NOT NULL,
//    year int NOT NULL,
//    PRIMARY KEY (name) );

// Prepared statement (or parameterized statement) happens in 2 phases:
//   1. prepare() sends a template to the server, the server analyzes the syntax
//                and initialize the internal structure.
//   2. bind value (if applicable) and execute
//      bindValue() fills in the template (~fill in the blanks.
//                For example, bindValue(':name', $name);
//                the server will locate the missing part signified by a colon
//                (in this example, :name) in the template
//                and replaces it with the actual value from $name.
//                Thus, be sure to match the name; a mismatch is ignored.
//      execute() actually executes the SQL statement
require('connectdb.php');

function getAllDecks($ID)
{
    global $db;

    $query = "SELECT DISTINCT name FROM Decks WHERE user_ID='$ID';";
    $statement = $db->prepare($query);
    $statement->execute();

    $results = $statement->fetchAll();

    $statement->closeCursor();

    return $results;
}

function getAllCards(&$string)
{
    global $db;
    $query = "SELECT name FROM Cards WHERE card_ID IN (SELECT card_ID FROM Decks WHERE name='$string');";
    $statement = $db->prepare($query);
    $statement->execute();

    $results = $statement->fetchAll();

    $statement->closeCursor();

    return $results;
}

function addCard(&$deck, $card, $user)
{
	global $db;
	$deck_ID_pre=getDeckID($deck, $user);
	$deckID=0;
	if ($deck_ID_pre==null){
	    $deckID=getNewDeckID()[0]['deck_ID']+1;
	}
	else{
	    $deckID=$deck_ID_pre[0]['deck_ID'];
	}
    $query = "INSERT INTO Decks (user_ID, card_ID, deck_ID, name) VALUES($user, $card, $deckID, '$deck');";
    $statement = $db->prepare($query);
    $statement->execute();
    $statement->closeCursor();
}

function deleteCard($deck, $card, $ID)
{
	global $db;
    $query = "DELETE FROM Decks WHERE name='$deck' AND card_ID=$card AND user_ID=$ID;";
    $statement = $db->prepare($query);
    $statement->execute();
    $statement->closeCursor();
}

function getUserID(&$user, &$password)
{
    global $db;
    $query = "SELECT DISTINCT user_ID FROM Users WHERE username='$user' AND pswd='$password';";
    $statement = $db->prepare($query);
    $statement->execute();

    $results = $statement->fetchAll();

    $statement->closeCursor();

    return $results;
}

function getDeckID(&$deck, $user)
{
    global $db;
    $query = "SELECT DISTINCT deck_ID FROM Decks WHERE name='$deck' AND user_ID=$user;";
    $statement = $db->prepare($query);
    $statement->execute();

    $results = $statement->fetchAll();

    $statement->closeCursor();

    return $results;
}

function getNewDeckID()
{
    global $db;
    $query = "SELECT MAX(deck_ID) deck_ID FROM Decks;";
    $statement = $db->prepare($query);
    $statement->execute();

    $results = $statement->fetchAll();

    $statement->closeCursor();

    return $results;
}

?>
