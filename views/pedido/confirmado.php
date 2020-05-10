<?php if(isset($_SESSION['pedido']) && $_SESSION['pedido'] == 'complete' ) : ?>
	<h1> Tu pedido se ha confirmado </h1>
	<p> Tu pedido ha sido guardado con exito.
	Esta es una web de prueba creada por Yassín Orlando Vázquez Paz utilizando PHP MVC para adquirir y mejorar habilidades en el lenguaje. </p>
	<br>
	<?php if(isset($pedido)) : ?>
		<h3> Datos del pedido </h3>
		
		Número de pedido: <?=$pedido->id ?> <br>
		Total a pagar: $<?=$pedido->coste ?> <br>
		Productos: <br>
		<table>
			<tr>
				<th> Imagen </th>
				<th> Nombre </th>
				<th> Precio </th>
				<th> Unidades </th>
			</tr>
			<?php while ($producto = $productos->fetch_object()) : ?>
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
						<?= $producto->unidades ?>
					</td>

				</tr>

			<?php endwhile; ?>
		</table>
		
	<?php endif; ?>
<?php else: ?>
	<h1> Tu pedido no ha podido ser procesado </h1>
<?php endif; ?>