<?php 

include('menu.php');

 ?>
	<title>Voiture</title>
	<script type="text/javascript">
	$(document).ready(function() {
		$('.fancybox').fancybox({
			minWidth : '20%'
		});
	});
	</script>
</head>
<body id="voiture">

<?php 

	if ($_GET['page'] == 'list') {

		$query = ("SELECT c.id, c.model, c.price, c.color, c.image, ct.type FROM CAR c JOIN CAR_TYPE ct ON c.id_CAR_TYPE = ct.id");
		$prep = $bdd->prepare($query);
		$prep->execute();
		$result = $prep->fetchAll(PDO::FETCH_ASSOC);
	
		// print_r($result);

		foreach ($result as $key => $value) {
			
				?>

				<div class="text-center car_container col-sm-12 col-md-12 col-xs-12">
					<h3 class="page-heading"><?php echo strtoupper($value['model']) ?></h3>
					<img class="img-rounded" src="img/<?php echo $value['image'] ?>" alt=""/>
					<br><br>
					<p>Prix de départ : <?php echo $value['price'] ?> €</p>
					<p>Type de véhicule : <?php echo strtoupper($value['type']) ?> </p>
					
					<div class="center-block" style="max-width: 400px;padding:40px;border-radius:20px">
					      <a href="#fancy" class="btn btn-primary btn-md btn-block fancybox">Customiser</a>
					      <button type="button" class="fancybox btn btn-default btn-md btn-block">Acheter sans options</button>
				    </div>
				</div>

					<div id="fancy" style="display:none">
						<form action="voiture.php" method="POST">

							<div class="form-group">
							    <label>Portes</label>
							   <select name="portes" class="form-control">
								  <option>3</option>
								  <option>5</option>
								</select>
							  </div>

							<div class="form-group">
							    <label>Toit ouvrant</label>
							   <select name="toit" class="form-control">
								  <option value="1">Oui</option>
								  <option value="0">Non</option>
								</select>
							  </div>

							<div class="form-group">
							    <label>Peinture</label>
							   <select name="peinture" class="form-control">
								  <option value="métalisée">métalisée</option>
								  <option value="mat">mat</option>
								</select>
							  </div>

							<div class="form-group">
							    <label>GPS</label>
							   <select name="gps" class="form-control">
								  <option>oui</option>
								  <option>non</option>
								</select>
							  </div>

							<div class="form-group">
							    <label>Jantes</label>
							   <select name="gps" class="form-control">
								  <option>bois</option>
								  <option>allu</option>
								  <option>plastique</option>
								  <option>galette</option>
								</select>
							  </div>

							  <button type="submit" class="btn btn-primary btn-md btn-block">Ajouter</button>
							 </div>
						</form>
					</div>

				<?php

		}
	}

 ?>

</body>
</html>