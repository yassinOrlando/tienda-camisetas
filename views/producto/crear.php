<?php if (isset($edit) && isset($pro) && is_object($pro) ) : ?>
	<h1> Editar producto: <?= $pro->nombre;?></h1>
	<?php 
		$url_action = base_url.'producto/save&id='.$pro->id;
	?>
<?php else : ?>
	<h1> Crear producto </h1>
	<?php 
		$url_action = base_url.'producto/save';
	?>
<?php endif; ?>



<form action="<?=$url_action;?>" method="POST" class="generalForm" enctype="multipart/form-data">
	<label for="nombre"> Nombre: </label><br>
	<input type="text" name="nombre" value="<?= (isset($pro) && is_object($pro)) ? $pro->nombre:'';?>"><br>

	<label for="descripcion"> Descripcion: </label><br>
	<textarea name="descripcion"> <?= (isset($pro) && is_object($pro)) ? $pro->descripcion:'';?> </textarea><br>

	<label for="precio"> Precio: </label><br>
	<input type="text" name="precio" value="<?= (isset($pro) && is_object($pro)) ? $pro->precio:'';?>"><br>

	<label for="stock"> Stock: </label><br>
	<input type="number" name="stock" value="<?= (isset($pro) && is_object($pro)) ? $pro->stock:'';?>"><br>

	<label for="categoria"> Categoria: </label><br>
	<?php $categorias = Utils::showCategorias(); ?>
	<select name="categoria" >
	<?php while ($categoria = $categorias->fetch_object()) : ?>
		<option value="<?=$categoria->id; ?>" <?= (isset($pro) && $categoria->id == $pro->categoria_id  && is_object($pro)) ? 'selected':'';?> > <?=$categoria->nombre; ?> </option>
	<?php endwhile; ?>
	</select><br>

	<label for="imagen"> Imagen: </label><br>
	<?php if(isset($pro) && is_object($pro) && !empty($pro->imagen)) : ?>
		<img src="<?=base_url?>/uploads/images/<?=$pro->imagen;?>" class="thumb">
	<?php endif; ?>
	<input type="file" name="imagen" value="<?= (isset($pro) && is_object($pro)) ? $pro->imagen:'';?>"><br>

	<input type="submit" value="Guardar" class="boton">

</form>