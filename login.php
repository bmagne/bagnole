<?php 

include('menu.php');

 ?>
	<title>Login - inscription</title>
</head>
<body id="login">
	
	<div id="authentication_container">
		<div id="login_container">
			
			<form class="form-horizontal" action="veriflogin.php" method="POST">
				<fieldset>

					<!-- Form Name -->
					<legend>Connectez-vous</legend>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="email">Votre email : </label>  
					  <div class="col-md-4">
					  <input id="mail" name="mail" type="text" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Password input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="password">Votre mot de passe : </label>
					  <div class="col-md-4">
					    <input id="password" name="password" type="password" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Button -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="login_button"></label>
					  <div class="col-md-4">
					    <button id="login_button" name="login_button" class="btn btn-default">Connexion</button>
					  </div>
					</div>

				</fieldset>
			</form>

		</div>
		<div id="inscription_container">
			<form class="form-horizontal" action="verifinscription.php" method="POST">
				<fieldset>

					<!-- Form Name -->
					<legend>Inscrivez-vous</legend>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="first_name">Prenom : </label>  
					  <div class="col-md-4">
					  <input id="first_name" name="first_name" type="text" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="last_name">Nom de famille : </label>
					  <div class="col-md-4">
					    <input id="last_name" name="last_name" type="text" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- date-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="birth_date">Date de naissance : </label>  
					  <div class="col-md-4">
					  <input id="birth_date" name="birth_date" type="date" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Tel input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="phone_number">Numero de telephone : </label>  
					  <div class="col-md-4">
					  <input id="phone_number" name="phone_number" type="tel" placeholder="" class="form-control input-md" required="" pattern="[0-9] {10}">
					    
					  </div>
					</div>

					<!-- Email input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="mail">E-mail : </label>  
					  <div class="col-md-4">
					  <input id="mail" name="mail" type="email" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="address1">Adresse N 1 : </label>  
					  <div class="col-md-4">
					  <input id="address1" name="address1" type="text" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="address2">Adresse N 2 : </label>  
					  <div class="col-md-4">
					  <input id="address2" name="address2" type="text" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="post_code">Code Postal : </label>  
					  <div class="col-md-4">
					  <input id="post_code" name="post_code" type="text" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="city">Ville : </label>  
					  <div class="col-md-4">
					  <input id="city" name="city" type="text" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="country">Pays : </label>  
					  <div class="col-md-4">
					  <input id="country" name="country" type="text" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="password">Mot de passe : </label>  
					  <div class="col-md-4">
					  <input id="password" name="password" type="password" placeholder="" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Button -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="inscription_button"></label>
					  <div class="col-md-4">
					    <button id="inscription_button" name="inscription_button" class="btn btn-default">Inscription</button>
					  </div>
					</div>

				</fieldset>
			</form>
		</div>
	</div>

</body>
</html>