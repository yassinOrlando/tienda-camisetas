<h1> Carrito de compra </h1>

<?php if(isset($_SESSION['carrito']) && count($_SESSION['carrito']) >= 1 ) : ?>
	<table class="table"> 

		<tr>
			<th> Imagen </th>
			<th> Nombre </th>
			<th> Precio </th>
			<th> Unidades </th>
			<th> Eliminar </th>
		</tr>
	<?php foreach ( $carrito as $indice => $elemento) : 
		$producto = $elemento['producto'];
		?>
		<tr>
			<td> 
				<?php if ($producto->imagen != null) : ?>
					<img src="<?=base_url?>uploads/images/<?=$producto->imagen;?>" alt="producto" class="img-carrito">
				<?php else: ?>
					<img src="<?=base_url?>assets/img/camiseta.jpg" alt="producto" class="img-carrito">
				<?php endif; ?> 
			</td>
			<td>
				<a href="<?=base_url?>producto/ver&id=<?=$producto->id?>">
					<?= $producto->nombre ?>
				</a>
			</td>
			<td>
				<?= $producto->precio ?>
			</td>
			<td>
				<div class="up-down">
					<a href="<?=base_url?>carrito/up&index=<?=$indice?>" class="boton-link"> + </a>
					<?= $elemento['unidades'] ?> 
					<a href="<?=base_url?>carrito/down&index=<?=$indice?>" class="boton-link"> - </a>
				</div>
			</td>
			<td>
				<a href="<?=base_url?>carrito/delete&index=<?=$indice?>" class="boton-link red quitar"> Quitar producto </a>
			</td>

		</tr>
	<?php endforeach; ?>

	</table>

	<br>
	 
	<?php $stats = Utils::statsCarrito(); ?>
	<div id="seguir-carrito">
		 <h3 > Precio total: $<?=$stats['total'] ?> </h3>
		 <a href="<?=base_url?>pedido/hacer" class="boton-link "> Hacer pedido </a>
		 <a href="<?=base_url?>carrito/delete_all" class="boton-link red"> Vaciar carrito </a>
	</div>
<?php else: ?>
	<p> El carrito está vacío, añade algún producto </p>
<?php endif; ?>