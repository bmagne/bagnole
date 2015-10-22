<?php 
include('config.php');

error_reporting(E_ALL | E_WARNING | E_NOTICE);

ini_set('display_errors', TRUE);
if (isset($_POST['mail']) AND isset($_POST['password']) AND !empty($_POST['mail']) AND !empty($_POST['password'])){
	$mail = $_POST['mail'];
	$password = $_POST['password'];

$query = ("SELECT * FROM USER WHERE mail= '" . $mail . "' and password = '" . $password . "'");
$prep = $bdd->prepare($query);
$prep->execute();

if ($prep->rowCount() ==  1) {
	foreach ($prep as $key => $value) {
		$_SESSION['user'] = $value;
	}
	$_SESSION['connect'] = 1;
	print_r($_SESSION['user']);
	header('Location: accueil.php');
}

else {
	echo 'Error';
}

}
?>