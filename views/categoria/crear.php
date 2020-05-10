<h1> Crear nueva categoria </h1>

<form action="<?=base_url;?>categoria/save" method="POST" required>
	<label for="nombre"> Nombre: </label>
	<input type="text" name="nombre"><br>
	
	<input type="submit" value="Guardar" class="boton">

</form>