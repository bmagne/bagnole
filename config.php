<?php 

try
	{
		// On se connecte à MySQL
		$bdd = new PDO('mysql:host=localhost;dbname=bagnole;charset=utf8', 'root', 'root');
	}
catch(Exception $e)
	{
		// En cas d'erreur, on affiche un message et on arrête tout
	        die('Erreur : '.$e->getMessage());
	}
if(isset($_GET['destroy']) == 1) {
	session_start(); 

// On écrase le tableau de session 
	$_SESSION = array(); 

	session_destroy();
	header('Location:login.php');
}
 ?>