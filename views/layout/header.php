<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Mi tieda virtual</title>
	<link rel="stylesheet" type="text/css" href="<?=base_url?>assets/css/style.css">
</head>
<body>
	<!-- Header -->
	<header>
		<div id="logo">
			<a href="<?=base_url ;?>">
				<img src="<?=base_url?>assets/img/camiseta.png" alt="logo">
				<h1> Tienda de camisetas </h1>
			</a>
		</div>
		<img id="menu-icon" src="<?=base_url?>assets/img/menu.png" onclick="alternate()">
		<!-- Nav -->
		<?php $categorias = Utils::showCategorias(); ?>
		<nav>
			<ul id="resp-list">
				<li><a href="<?=base_url ;?>"> Inicio </a></li>
			<?php while($categoria = $categorias->fetch_object()) : ?>
				<li><a href="<?=base_url?>categoria/ver&id=<?=$categoria->id?>"> <?=$categoria->nombre; ?> </a></li>
			<?php endwhile; ?>
			</ul>
		</nav>
	</header>
	
	<section id="container">
		