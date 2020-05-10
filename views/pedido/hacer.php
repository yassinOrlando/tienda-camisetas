<?php if (isset($_SESSION['identity'])) : ?>
	<h1> Hacer pedido </h1>
	<a style="margin-left: 5%;" href="<?=base_url?>carrito/index"> Ver los productos y el precio del pedido </a>

	<form action="<?=base_url.'pedido/add'?>" method="POST" class="generalForm">
		<h3> Direccion para el envío </h3>

		<label for="provincia"> Provincia: </label><br>
		<input type="text" name="provincia" required>

		<label for="localidad"> Localidad: </label><br>
		<input type="text" name="localidad" required>

		<label for="direccion"> Direccion: </label><br>
		<input type="text" name="direccion" required>

		<input type="submit" value="Enviar" class="boton">

	</form>

<?php else : ?>
	<h1> Necesitas estar identificado </h1>
	<p> Antes de ver el carrito necesitas estar logueado en la web para poder realizar tu pedido </p>

<?php endif; ?>