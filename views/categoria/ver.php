<?php if (isset($categoria)) : ?>
	<h1> <?=$categoria->nombre; ?> </h1>
	<?php if($productos->num_rows == 0) : ?>
		<p> No hay productos para mostrar </p>
	<?php else: ?>
		<?php while ($product = $productos->fetch_object()) : ?>
			<article class="producto">
				<a href="<?=base_url?>producto/ver&id=<?=$product->id;?>">
					<?php if ($product->imagen != null) : ?>
						<img src="<?=base_url?>uploads/images/<?=$product->imagen;?>" alt="producto">
					<?php else: ?>
						<img src="<?=base_url?>assets/img/camiseta.jpg" alt="producto">
					<?php endif; ?>
					<h3> <?=$product->nombre; ?> </h3>
				</a>
				<p> <?=$product->precio; ?> </p>
				<a href="<?=base_url?>carrito/add&id=<?=$product->id?>" class="boton-link"> Comprar </a>
			</article>
		<?php endwhile; ?>
	<?php endif; ?>
<?php else: ?>
	<h1> La categoria no existe </h1>
<?php endif; ?>