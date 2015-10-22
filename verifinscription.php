<?php
ini_set('display_errors',1);
include('config.php');

	$prenom = $_POST['first_name'];
	$nom = $_POST['last_name'];
	$ddn = $_POST['birth_date'];
	$numtel = $_POST['phone_number'];
	$email = $_POST['mail'];
	$address1 = $_POST['address1'];
	$address2 = $_POST['address2'];
	$codepostal = $_POST['post_code'];
	$ville = $_POST['city'];
	$pays = $_POST['country'];
	$password = $_POST['password'];

$req = $bdd->prepare('INSERT INTO USER(first_name, last_name, birth_date, phone_number, mail, address1, address2, post_code, city, country, id_USER_TYPE, password)
VALUES(:first_name, :last_name, :birth_date, :phone_number, :mail, :address1, :address2, :post_code, :city, :country, :id_USER_TYPE, :password)');
print_r($bdd->errorInfo()); 
                                   
$req->execute(array(
'first_name' => $prenom,
'last_name' => $nom,
'birth_date' => $ddn,
'phone_number' => $numtel,
'mail' => $email,
'address1' => $address1,
'address2' => $address2,
'post_code' => $codepostal,
'city' => $ville,
'country' => $pays,
'id_USER_TYPE' => '5',
'password' => $password,
));










?>