BEGIN TRANSACTION;
CREATE TABLE `TipoPlato` (
	`idTipoPlato`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`nombre`	TEXT NOT NULL
);
INSERT INTO `TipoPlato` (idTipoPlato,nombre) VALUES (1,'Pescados'),
 (2,'Carnes'),
 (3,'Arroces');
CREATE TABLE `TipoBebida` (
	`idTipoBebida`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`nombre`	TEXT NOT NULL,
	`alcohol`	INTEGER NOT NULL CHECK(alcohol>= 0 AND alcohol<=1)
);
INSERT INTO `TipoBebida` (idTipoBebida,nombre,alcohol) VALUES (1,'cervezas',1),
 (2,'licores',1),
 (3,'vinos',1),
 (4,'cafés',0),
 (5,'zumos de frutas',0),
 (6,'batidos',0),
 (7,'refrescos',0);
CREATE TABLE "Restaurante" (
	`idRestaurante`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`email`	TEXT NOT NULL,
	`nif`	TEXT NOT NULL,
	`descripcion`	TEXT,
	`ciudad`	TEXT NOT NULL,
	`telefono`	INTEGER NOT NULL,
	`idBebidaRestaurante`	INTEGER NOT NULL,
	`idPlatoRestaurante`	INTEGER NOT NULL,
	FOREIGN KEY(`idBebidaRestaurante`) REFERENCES `BebidaRestaurante`(`idBebida`),
	FOREIGN KEY(`idPlatoRestaurante`) REFERENCES PlatoRestaurante(idPlato)
);
INSERT INTO `Restaurante` (idRestaurante,email,nif,descripcion,ciudad,telefono,idBebidaRestaurante,idPlatoRestaurante) VALUES (1,'info@lapepica.es','123456',NULL,'Valencia','902 214 858',0,0);
CREATE TABLE "PlatoRestaurante" (
	`idPlato`	INTEGER NOT NULL,
	`idRestaurante`	INTEGER NOT NULL,
	PRIMARY KEY(`idPlato`,`idRestaurante`),
	FOREIGN KEY(`idPlato`) REFERENCES `Plato`(`idPlato`),
	FOREIGN KEY(`idRestaurante`) REFERENCES Restaurante(idRestaurante)
);
CREATE TABLE "PlatoPedido" (
	`idPedido`	INTEGER NOT NULL,
	`cantidad`	INTEGER NOT NULL,
	`idPlato`	INTEGER NOT NULL,
	PRIMARY KEY(`idPedido`,`idPlato`),
	FOREIGN KEY(`idPedido`) REFERENCES Pedido(idPedido),
	FOREIGN KEY(`idPlato`) REFERENCES `Plato`(`idPlato`)
);
INSERT INTO `PlatoPedido` (idPedido,cantidad,idPlato) VALUES (1,1,11),
 (2,1,6);
CREATE TABLE "Plato" (
	`idPlato`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`nombre`	TEXT NOT NULL,
	`precio`	REAL NOT NULL,
	`descripcion`	TEXT,
	`idTipoPlato`	INTEGER NOT NULL,
	FOREIGN KEY(`idTipoPlato`) REFERENCES `TipoPlato`(`idTipoPlato`)
);
INSERT INTO `Plato` (idPlato,nombre,precio,descripcion,idTipoPlato) VALUES (1,'Emperador',18.23,'',1),
 (2,'Cigalas plancha',17.32,'',1),
 (3,'Mariscada',40.85,'',1),
 (4,'Langosta fresca (500grs)',64.24,'',1),
 (5,'Pollo asado',8.01,'',2),
 (6,'Entrecot',21.21,'',2),
 (7,'Lomo de cerdo',8.36,'',2),
 (8,'Solomillo',21.21,'',2),
 (9,'Chuletas de cordero',15.24,'',2),
 (10,'Paella marinera',14.4,'',3),
 (11,'Paella de langosta',27.18,'',3),
 (12,'Arroz negro',14.4,'',3),
 (13,'Paella de Bogavante',24.1,'',3),
 (14,'Entrecot a la brasa',20.1,' ',2);
CREATE TABLE "Pedido" (
	`idPedido`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`fechaPedido`	TEXT NOT NULL DEFAULT 'now()',
	`idPlatoPedido`	INTEGER,
	`idBebidaPedido`	INTEGER,
	`idFactura`	REAL NOT NULL,
	FOREIGN KEY(`idPlatoPedido`) REFERENCES `PlatoPedido`(`idPedido`),
	FOREIGN KEY(`idBebidaPedido`) REFERENCES `BebidaPedido`(`idPedido`),
	FOREIGN KEY(`idFactura`) REFERENCES `Factura`(`idFactura`)
);
INSERT INTO `Pedido` (idPedido,fechaPedido,idPlatoPedido,idBebidaPedido,idFactura) VALUES (1,'now()',1,1,1.0);
CREATE TABLE "Mesa" (
	`idMesa`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`esInterior`	INTEGER NOT NULL
);
INSERT INTO `Mesa` (idMesa,esInterior) VALUES (1,1),
 (2,1),
 (3,1),
 (4,1),
 (5,1),
 (6,1),
 (7,1),
 (8,0),
 (9,0),
 (10,0);
CREATE TABLE "Factura" (
	`idFactura`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`iva`	INTEGER,
	`subTotal`	REAL,
	`total`	REAL NOT NULL
);
INSERT INTO `Factura` (idFactura,iva,subTotal,total) VALUES (1,21,'27,04','34,18');
CREATE TABLE `Cliente` (
	`email`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`fechaNac`	TEXT,
	`nombre`	TEXT,
	`movil`	TEXT,
	`observacion`	TEXT
);
CREATE TABLE "BebidaRestaurante" (
	`idBebida`	INTEGER NOT NULL,
	`idRestaurante`	INTEGER NOT NULL,
	PRIMARY KEY(`idBebida`,`idRestaurante`),
	FOREIGN KEY(`idBebida`) REFERENCES Bebida(idBebida),
	FOREIGN KEY(`idRestaurante`) REFERENCES `Restaurante`(`idRestaurante`)
);
CREATE TABLE "BebidaPedido" (
	`idPedido`	INTEGER NOT NULL,
	`cantidad`	INTEGER NOT NULL,
	`idBebida`	INTEGER NOT NULL,
	PRIMARY KEY(`idPedido`,`idBebida`),
	FOREIGN KEY(`idPedido`) REFERENCES `Pedido`(`idPedido`),
	FOREIGN KEY(`idBebida`) REFERENCES `Bebida`(`idBebida`)
);
INSERT INTO `BebidaPedido` (idPedido,cantidad,idBebida) VALUES (1,1,21),
 (2,1,24),
 (3,0,25),
 (4,0,10);
CREATE TABLE "Bebida" (
	`idBebida`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`nombre`	TEXT NOT NULL,
	`precio`	REAL NOT NULL,
	`descripcion`	TEXT,
	`idTipoBebida`	INTEGER NOT NULL,
	FOREIGN KEY(`idTipoBebida`) REFERENCES TipoBebida(`idTipoBebida`)
);
INSERT INTO `Bebida` (idBebida,nombre,precio,descripcion,idTipoBebida) VALUES (1,'Caña',1.5,'',1),
 (2,'Jarra',2.5,'',1),
 (3,'1/5 Mahou',1.5,'',1),
 (4,'Manzana',4.0,'',2),
 (5,'Mora',4.0,'',2),
 (6,'Melocotón',4.0,'',2),
 (7,'Rioja(tinto)',2.5,'',3),
 (8,'Rueda(blanco)',2.5,'',3),
 (9,'Tinto de verano',3.0,'',3),
 (10,'Solo',1.3,'',4),
 (11,'Con leche',1.5,'',4),
 (12,'Cappuchino',2.5,'',4),
 (13,'Frappuchino con helado de café',3.5,'',4),
 (14,'Mango y melocotón',4.5,'',5),
 (15,'Fresa y plátano',4.5,'',5),
 (16,'Fresa y piña',4.5,'',5),
 (17,'Fresa',4.0,'',6),
 (18,'Vainilla',4.0,'',6),
 (19,'Chocolate',4.0,'',6),
 (20,'Pepsi',1.8,'',7),
 (21,'Coca cola',1.8,'',7),
 (22,'Cola light',1.8,'',7),
 (23,'Aquarius',1.8,'',7),
 (24,'Agua',2.0,'',7),
 (25,'Fanta',1.8,NULL,7);
COMMIT;
