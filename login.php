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
					  <label class="col-md-4 control-label" for="email">Votre email</label>  
					  <div class="col-md-4">
					  <input id="mail" name="mail" type="text" placeholder="email" class="form-control input-md" required="">
					    
					  </div>
					</div>

					<!-- Password input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="password">Votre mot de passe</label>
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
			
		</div>
	</div>

</body>
</html>