<h1> Gestion de productos </h1>

<!--  Elemento creado  -->
<a href="<?=base_url?>producto/crear" class="boton-link small">Crear producto</a>

<?php if (isset($_SESSION['producto']) && $_SESSION['producto'] == 'Completado') : ?>
	<strong class="alert_green"> El producto se ha creado correctamente </strong>
<?php elseif (isset($_SESSION['producto']) && $_SESSION['producto'] == 'Failed') : ?>
	<strong class="alert_red"> El producto no se guardo correctamente </strong>
<?php endif; ?>
<?php Utils::deleteSession('producto'); ?>

<!--  Borrar algun elemento  -->
<?php if (isset($_SESSION['delete']) && $_SESSION['delete'] == 'complete') : ?>
	<strong class="alert_green"> El producto se ha borrado </strong>
<?php elseif (isset($_SESSION['delete']) && $_SESSION['delete'] == 'failed') : ?>
	<strong class="alert_red"> El producto no se ha borrado </strong>
<?php endif; ?>
<?php Utils::deleteSession('delete'); ?>

<!--  Estructura  -->
<table>
	<tr>
		<th> Id </th>
		<th> Nombre </th>
		<th> Precio </th>
		<th> Stock </th>
		<th> Acciones </th>
	</tr>
<?php while ($producto = $productos->fetch_object()) : ?>
	
	<tr>
		<td><?=$producto->id; ?></td>
		<td><?=$producto->nombre; ?></td>
		<td><?=$producto->precio; ?></td>
		<td><?=$producto->stock; ?></td>
		<td> 
			<a href="<?=base_url;?>producto/editar&id=<?=$producto->id;?>" class="boton-link"> Editar </a>
			<a href="<?=base_url;?>producto/eliminar&id=<?=$producto->id;?>" class="boton-link" style="background-color: red;"> Eliminar </a> 
		</td>
	</tr>
<?php endwhile; ?>
</table>

