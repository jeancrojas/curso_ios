BEGIN TRANSACTION;
CREATE TABLE `TipoPlato` (
	`idTipoPlato`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`nombre`	TEXT NOT NULL
);
CREATE TABLE `TipoBebida` (
	`idTipoBebida`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`nombre`	TEXT NOT NULL,
	`alcohol`	INTEGER NOT NULL
);
INSERT INTO `TipoBebida` (idTipoBebida,nombre,alcohol) VALUES (1,'Cervezas',1),
 (2,'Licores',1),
 (3,'vinos',1),
 (4,'Cafés',0),
 (5,'Zumos de frutas',0),
 (6,'Batidos',0),
 (7,'Refrescos',0);
CREATE TABLE "Plato" (
	`idPlato`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`nombre`	TEXT NOT NULL,
	`precio`	REAL NOT NULL,
	`descripcion`	TEXT,
	`idTipoPlato`	INTEGER NOT NULL,
	FOREIGN KEY(`idTipoPlato`) REFERENCES TipoPlato(idTipoPlato)
);
CREATE TABLE `PedidoPlato` (
	`idPedido`	INTEGER NOT NULL,
	`idPlato`	INTEGER NOT NULL,
	`cantidad`	INTEGER NOT NULL,
	PRIMARY KEY(`idPedido`,`idPlato`)
);
CREATE TABLE `PedidoBebida` (
	`idPedidoBebida`	INTEGER NOT NULL,
	`idBebida`	INTEGER NOT NULL,
	`cantidad`	INTEGER NOT NULL,
	PRIMARY KEY(`idPedidoBebida`,`idBebida`)
);
CREATE TABLE `Pedido` (
	`idPedido`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`fecha`	TEXT NOT NULL,
	`idPedidoBebida`	INTEGER,
	`idPedidoPlato`	INTEGER,
	`precio`	REAL NOT NULL
);
CREATE TABLE "Bebida" (
	`idBebida`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`nombre`	TEXT NOT NULL,
	`precio`	REAL NOT NULL,
	`descripcion`	INTEGER,
	`idTipoBebida`	INTEGER,
	FOREIGN KEY(`idTipoBebida`) REFERENCES `TipoBebida`(`idTipoBebida`)
);
INSERT INTO `Bebida` (idBebida,nombre,precio,descripcion,idTipoBebida) VALUES (1,'Caña',1.5,NULL,1),
 (2,'Jarra',2.5,NULL,1),
 (3,'1/5 Mahou',1.5,NULL,1),
 (4,'Manzana',4.0,NULL,2),
 (5,'Mora',4.0,NULL,2),
 (6,'Melocotón',4.0,NULL,2),
 (7,'Rioja(tinto)',2.5,NULL,3),
 (8,'Rueda(blanco)',2.5,NULL,3),
 (9,'Tinto de Verano',3.0,NULL,3),
 (10,'Solo',1.3,NULL,4),
 (11,'Con leche',1.5,NULL,4),
 (12,'Cappuchino',2.5,NULL,4),
 (13,'Frappuchino con helado de café',3.5,NULL,4),
 (14,'Mango y melocotón',4.5,NULL,5),
 (15,'Fresa y plátano',4.5,NULL,5),
 (16,'Fresa y piña',4.5,NULL,5),
 (17,'Fresa',4.0,NULL,6),
 (18,'Vainilla',4.0,NULL,6),
 (19,'Chocolate',4.0,NULL,6),
 (20,'Pepsi',1.8,NULL,7),
 (21,'Coca cola',1.8,NULL,7),
 (22,'Cola light',1.8,NULL,7),
 (23,'Aquarius',1.8,NULL,7),
 (24,'Agua',2.0,NULL,7),
 (25,'Fanta',1.8,NULL,7);
COMMIT;
