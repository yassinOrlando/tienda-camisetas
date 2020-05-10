<!-- aside -->
		<aside id="lateral">

			<div id="carrito" class="aside-info">
				<h3> Mi carrito </h3>
				<ul>
					<?php $stats = Utils::statsCarrito(); ?>
					<li><a href="<?=base_url;?>carrito/index"> Productos (<?=$stats['count'] ?>) </a> </li>
					<li> <a href="<?=base_url;?>carrito/index"> Total : <?=$stats['total'] ?> </a></li>
					<li><a href="<?=base_url;?>carrito/index"> Ver mi carrito </a></li>
				</ul>
			</div>

		<?php if (!isset($_SESSION['identity'])) : ?>
			<form action="<?=base_url?>usuario/login" method="POST" id="login">
				<h3> Login </h3>
				<label for="email"> Email: </label>
				<input type="text" name="email">

				<label for="password"> Password: </label>
				<input type="password" name="password">

				<input type="submit" value="Enviar"  class="boton">

			</form>
		<?php else: ?>
			<div class="aside-info">
				<h3 style="text-align: center"> 
					<?=$_SESSION['identity']->nombre; ?> 
			 		<?=$_SESSION['identity']->apellidos; ?>
			 			
			 	</h3>
		 	</div>

		<?php endif; ?>

			<div id="links">
				<ul>
				<?php if (isset($_SESSION['admin'])) : ?>
					<li><a href="<?=base_url;?>categoria/index"> Gestionar categorias </a></li>
					<li><a href="<?=base_url;?>producto/gestion"> Gestionar productos </a></li>
					<li><a href="<?=base_url?>pedido/gestion"> Gestionar pedidos </a></li>
				<?php endif; ?>
				<?php if (isset($_SESSION['identity'])) : ?>
					<li><a href="<?=base_url?>pedido/mis_pedidos"> Mis pedidos </a></li>
					<li><a href="<?=base_url?>usuario/logout"> Cerrar sesion </a></li>
				<?php else: ?>
					<li><a href="<?=base_url?>usuario/registro"> Registrate Aqui </a></li>
				<?php endif; ?>
				</ul>
			</div>

		</aside>
		<!-- Main -->
		<section id="main">