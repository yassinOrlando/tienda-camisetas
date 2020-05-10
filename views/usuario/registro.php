<h1> Registrarse </h1>
<?php if (isset($_SESSION['register']) && $_SESSION['register']=='Completo') :?>
	<strong class="alert_green"> Registro completado correctamente </strong>
<?php elseif(isset($_SESSION['register']) && $_SESSION['register']=='Fallo'): ?>
	<strong class="alert_red"> Registro fallido </strong>
<?php endif; 
	Utils::deleteSession('register');
?>

<form action="<?=base_url?>usuario/save" method="POST" id="login">
	<label for="nombre"> Nombre: </label><br>
	<input type="text" name="nombre" required><br>

	<label for="apellidos"> Apellidos: </label><br>
	<input type="text" name="apellidos" required><br>

	<label for="email"> Email: </label><br>
	<input type="email" name="email" required><br>

	<label for="password"> Password: </label><br>
	<input type="password" name="password" required><br>

	<input type="submit" value="Registrarse" class="boton">

</form>