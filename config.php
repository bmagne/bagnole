<?php 

// Afficher les erreurs à l'écran
ini_set('display_errors', 1);
// Enregistrer les erreurs dans un fichier de log
ini_set('log_errors', 1);
// Nom du fichier qui enregistre les logs (attention aux droits à l'écriture)
ini_set('error_log', dirname(__file__) . '/log_error_php.txt');


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