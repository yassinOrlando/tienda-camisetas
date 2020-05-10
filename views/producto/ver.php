<?php if (isset($product)) : ?>
	<h1> <?=$product->nombre; ?> </h1>
	<hr>
	<br>
	<div id="detail-product">
		<div class="image">
			<?php if ($product->imagen != null) : ?>
				<img src="<?=base_url?>uploads/images/<?=$product->imagen;?>" alt="producto">
			<?php else: ?>
				<img src="<?=base_url?>assets/img/camiseta.jpg" alt="producto">
			<?php endif; ?>
		</div>
		<div class="data">
			<h3> <?=$product->nombre; ?> </h3>
			<p class="description"><?=$product->descripcion;?></p>
			<p class="price"> $ <?=$product->precio; ?> </p>
			<a href="<?=base_url?>carrito/add&id=<?=$product->id?>" class="boton-link"> Comprar </a>
		</div>
	</div>
<?php else: ?>
	<h1> El producto no existe no existe </h1>
<?php endif; ?>