<?php

/******************************/
// connecting to GCP cloud SQL instance

// $username = 'root';
// $password = 'your-root-password';

// $dbname = 'your-database-name';

// if PHP is on GCP standard App Engine, use instance name to connect
// $host = 'instance-connection-name';

// if PHP is hosted somewhere else (non-GCP), use public IP address to connect
// $host = "public-IP-address-to-cloud-instance";


/******************************/
// connecting to DB on XAMPP (local)

$username = 'rad7eu_log';
$password = 'OhmygodwhathaveIdone96!';
$host = 'usersrv01.cs.virginia.edu';
$dbname = 'rad7eu_yugioh';


/******************************/
// connecting to DB on CS server
/*
$username = 'rad7eu';
$password = 'BlueDragon96!';
$host = 'usersrv01.cs.virginia.edu';
$dbname = 'rad7eu';
*/

/******************************/

$dsn = "mysql:host=$host;dbname=$dbname";
$db = "";

/** connect to the database **/
try 
{
   $db = new PDO($dsn, $username, $password);
}
catch (PDOException $e)     // handle a PDO exception (errors thrown by the PDO library)
{
   // Call a method from any object, 
   // use the object's name followed by -> and then method's name
   // All exception objects provide a getMessage() method that returns the error message 
   $error_message = $e->getMessage();        
   echo "<p>An error occurred while connecting to the database: $error_message </p>";
}
catch (Exception $e)       // handle any type of exception
{
   $error_message = $e->getMessage();
   echo "<p>Error message: $error_message </p>";
}

?>