<?php 

include('menu.php');

 ?>
	<title>Voiture</title>
	<script type="text/javascript">
	$(document).ready(function() {
		$('.fancybox').fancybox({
			minWidth : '20%'
		});

		$('#customiser_button').on('click', function() {
			$.fancybox.close();
			$('#fancy input[type="checkbox"]').each(function(i) {
				console.log($(this).is(':checked'));
			});

		});

		data = {param1: 'value1'};

		$('#fancy').on('submit',function(event) {
			event.preventDefault();
			$.ajax({
				url: 'achat.php',
				type: 'POST',
				dataType: 'json',
				data: data,
			})
			.done(function() {
				console.log("success");
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
			
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
	
		$query = ("SELECT a.id_CAR, co.price, co.name, co.id  FROM AVOIR a JOIN CAR_OPTIONS co ON a.id_CAR_OPTIONS = co.id");
		$prep2 = $bdd->prepare($query);
		$prep2->execute();
		$options = $prep2->fetchAll(PDO::FETCH_ASSOC);

		foreach ($result as $key => &$value) {
			foreach ($options as $k => $v) {
				if ($value['id'] == $v['id_CAR']) {
					
					$value['options'][$k] = $v;

				}
			}				
		}	

		$i = 0;
		foreach ($result as $key => $value) { // affichage de chaque voiture		

			?>
				<div class="text-center car_container col-sm-12 col-md-12 col-xs-12">
					<form id="<?php $i ?>" action="voiture.php" method="POST">
						<h3 class="page-heading"><?php echo strtoupper($value['model']) ?></h3>
						<img class="img-rounded" src="img/<?php echo $value['image'] ?>" alt=""/>
						<br><br>
						<p>Prix de départ : <?php echo $value['price'] ?> €</p>
						<p>Type de véhicule : <?php echo strtoupper($value['type']) ?> </p>
						
						<div class="center-block" style="max-width: 400px;padding:40px;border-radius:20px">

						    <?php if ( isset($value['options']) ){ ?>
						     	<a href="#fancy<?php echo $i ?>" class="btn btn-primary btn-md btn-block fancybox">Customiser</a>	
						    <?php } ?>
						      
						      <button type="submit" class="fancybox btn btn-default btn-md btn-block">Acheter</button>
					    </div>

						<input type="hidden" name="id_car" value="<?php echo $value['id'] ?>"/>					
					</form>
				</div>
				
					<?php if (isset($value['options'])){ ?>
						<div class="fancybox_container" id="fancy<?php echo $i?>" style="display:none">
							<h3>Ajouter des options</h3>
							<span></span>
								<?php foreach ($value['options'] as $id => $option) {?>

								<div class="form-group">
								   <label><?php echo $option['name']?></label>
									<input type="checkbox"	 />
									<input type="hidden" value="<?php echo $option['price'] ?>" />
								</div>

								<?php } ?>

								  <button type="button" id="customiser_button" class="btn btn-primary btn-md btn-block">Ajouter</button>
								 </div>
						</div>

				<?php
			}
		$i++;
		}
	}

 ?>

</body>
</html>