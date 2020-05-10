<h1> Gestionar categorias </h1>

<a href="<?=base_url?>categoria/crear" class="boton-link small">Crear categoria</a>

<table>
	<tr>
		<th> Id </th>
		<th> Nombre </th>
	</tr>
<?php while ($categoria = $categorias->fetch_object()) : ?>
	
	<tr>
		<td><?=$categoria->id; ?></td>
		<td><?=$categoria->nombre; ?></td>
	</tr>
<?php endwhile; ?>
</table>