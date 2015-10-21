<?php 

include('config.php');

?>

<!doctype html>
<html>
	<head>
		<link rel="stylesheet" href="css/global.css">
		<script src="js/jquery.js"></script>
		<script src="js/bagnole.js"></script>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

		<!-- Optional theme -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">

		<!-- Latest compiled and minified JavaScript -->
		<script src="bootstrap/js/bootstrap.min.js"></script>


	<div class="navbar-wrapper">
	            <div class="container-fluid">
	                <nav class="navbar navbar-fixed-top" id="menu_container">
	                    <div class="container">
	                        <div class="navbar-header">
	                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		                            <span class="sr-only">Toggle navigation</span>
		                            <span class="icon-bar"></span>
		                            <span class="icon-bar"></span>
		                            <span class="icon-bar"></span>
	                            </button>
	                            <a class="navbar-brand" href="accueil.php">Logo</a>
	                            
	                        </div>
	                        <div id="navbar" class="navbar-collapse collapse">
	                            <ul class="nav navbar-nav">
	                                <li class="active"><a href="accueil.php" class="">Home</a></li>
	                                
	                                    <li class=" dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Voitures <span class="caret"></span></a>
	                                        <ul class="dropdown-menu">
	                                            <li><a href="voiture.php?page=list">Liste voitures</a></li> 
	                                            <li><a href="voiture.php?page=search">Rechercher un modèle</a></li>
	                                        </ul>
	                                    </li>
	                                   	<li class="active"><a href="contact.php" class="">Contact</a></li>
	                                </li>
	                                    
	                            </ul>
	                            <ul class="nav navbar-nav pull-right">
	                                <li class=""><a href="login.php">Login</a></li>
	                            </ul>
	                        </div>
	                    </div>
	                </nav>
	            </div>
	        </div>