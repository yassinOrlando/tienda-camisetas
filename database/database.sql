CREATE DATABASE tienda_master;
use tienda_master;

CREATE TABLE usuarios(
	id int(255) auto_increment not null,
	nombre varchar(100) not null,
	apellidos varchar(255),
	email varchar(255) not null,
	password varchar(255) not null,
	rol varchar(20),
	imagen varchar(255),
	CONSTRAINT pk_usuarios PRIMARY KEY(id),
	CONSTRAINT uq_mail UNIQUE(email)
)ENGINE=InnoDb;

INSERT INTO usuarios VALUES(null, 'admin', 'admin', 'admin@admin.com', '1234567890', 'admin', null);

CREATE TABLE categorias(
	id int(255) auto_increment not null,
	nombre varchar(100) not null,
	CONSTRAINT pk_categorias PRIMARY KEY(id)
)ENGINE=InnoDb;

INSERT INTO categorias VALUES(null, 'manga corta');
INSERT INTO categorias VALUES(null, 'manga larga');
INSERT INTO categorias VALUES(null, 'tirantes');
INSERT INTO categorias VALUES(null, 'sudaderas');

CREATE TABLE pedidos(
	id int(255) auto_increment not null,
	usuario_id int(255) not null,
	provincia varchar(100) not null,
	localidad varchar(100) not null,
	direccion varchar(255) not null,
	coste float(200,2) not null,
	estado varchar(20) not null,
	fecha date,
	hora time,
	CONSTRAINT pk_pedidos PRIMARY KEY(id),
	CONSTRAINT fk_pedido_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
)ENGINE=InnoDb;

CREATE TABLE lineas_pedidos(
	id int(255) auto_increment not null,
	pedido_id int(255) not null,
	producto_id int(255) not null,
	unidades int(255) not null,
	CONSTRAINT pk_lineas_pedidos PRIMARY KEY(id),
	CONSTRAINT fk_linea_pedido FOREIGN KEY(pedido_id) REFERENCES pedidos(id),
	CONSTRAINT fk_linea_producto FOREIGN KEY(producto_id) REFERENCES productos(id)
)ENGINE=InnoDb;

