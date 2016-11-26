
USE recetario;
DROP TABLE IF EXISTS receta;
CREATE TABLE receta (
  id int AUTO_INCREMENT,
  nombre text NOT NULL,
  preparacion longtext DEFAULT NULL,
  dificultad text NOT NULL,
  enfermedad text NOT NULL,
  etapa text NOT NULL,
  imagen longtext NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS producto;
CREATE TABLE producto (
  id int AUTO_INCREMENT,
  nombre text NOT NULL,
  unidadDeMedida text NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS productoPorReceta;
CREATE TABLE productoPorReceta (
  recet int NOT NULL,
  product int NOT NULL,
  cantidadProducto text,
  PRIMARY KEY(recet,product)
);
ALTER TABLE productoPorReceta ADD FOREIGN KEY (recet) REFERENCES receta(id);
ALTER TABLE productoPorReceta  ADD FOREIGN KEY (product) REFERENCES producto(id);

insert into receta(nombre,preparacion,dificultad,enfermedad,etapa) values ('Arroz con pollo','
    Corta los pimientos en tiras pero no demasiado largas, pica la cebolla muy fina y pela los ajos.
    Echa en una paellera, o una cazuela, cinco cucharadas de aceite de oliva y pon a calentar. Cuando esté el aceite añade los pimientos y los dos ajos enteros. Si no tienes el pollo cortado a trocitos ve cortándolo mientras se van haciendo las verduras. Saltea durante 3 minutos y añade la cebolla.
    Pasado ese tiempo apartamos la paellera del fuego y la tapamos con una paño de cocina limpio. Dejamos reposar el arroz con pollo durante cinco minutos y servimos acompañado de unas rodajas de limón (ver fotografía)
','Media','ninguna','desde los 3 años');



insert into receta(nombre,preparacion,dificultad,enfermedad,etapa,imagen) values ('Receta de Albóndigas ','
    Para las albóndigas, pon el pan a remojo con la leche. Mezcla en un bol la carne picada con la mostaza, cilantro y ajo picado. Agrega también el pimentón, el huevo, el pan y una pizca de sal. Mézclalo hasta que todos los ingredientes estén bien integrados.Haz las albóndigas ayudándote con un poco de harina y fríelas en una sartén con aceite.Coloca la salsa de tomate en el fondo de una fuente para horno. Encima las albóndigas y napa con la bechamel. Espolvorea un poco de queso rallado y gratina en el horno.
    Sirve y decora con un poco de perejil y tomillo.
','Media','ninguna','desde los 3 años','http://www.quinoarecetas.es/wp-content/uploads/2014/10/quinoa-albondigas.jpg');






insert into producto(nombre,unidadDeMedida) values ('pollo','gramos');
insert into producto(nombre,unidadDeMedida) values ('Arroz','gramos');
insert into producto(nombre,unidadDeMedida) values ('caldo de pollo','mililitro');
insert into producto(nombre,unidadDeMedida) values ('vino blanco','mililitro');
insert into producto(nombre,unidadDeMedida) values ('cebolla','gramos');
insert into producto(nombre,unidadDeMedida) values ('ajo','diente');
insert into producto(nombre,unidadDeMedida) values ('limon','cucharada');
insert into producto(nombre,unidadDeMedida) values ('tomate','gramos');
insert into producto(nombre,unidadDeMedida) values ('colorante','al gusto');
insert into producto(nombre,unidadDeMedida) values ('sal','al gusto');
insert into producto(nombre,unidadDeMedida) values ('pimienta','al gusto');
insert into producto(nombre,unidadDeMedida) values ('pimenton','unidad');
insert into producto(nombre,unidadDeMedida) values ('carne de ternera','gramos');
insert into producto(nombre,unidadDeMedida) values ('huevos','unidad');
insert into producto(nombre,unidadDeMedida) values ('caldo de pollo','mililitro');
insert into producto(nombre,unidadDeMedida) values ('pan en migas','rebanadas');
insert into producto(nombre,unidadDeMedida) values ('queso emmental para rallar','unidad');
insert into producto(nombre,unidadDeMedida) values ('harina','gramos');
insert into producto(nombre,unidadDeMedida) values ('leche','mililitro');
insert into producto(nombre,unidadDeMedida) values ('aceite de oliva','mililitro');
insert into producto(nombre,unidadDeMedida) values ('cilantro','rama');
insert into producto(nombre,unidadDeMedida) values ('pimenton Molido','');
insert into producto(nombre,unidadDeMedida) values ('mostaza','cucharada');
insert into producto(nombre,unidadDeMedida) values ('perejil','rama');
insert into producto(nombre,unidadDeMedida) values ('tomillo','rama');



insert into productoPorReceta(recet,product,cantidadProducto) values (1,1,'2000');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,2,'200');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,3,'1000');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,4,'250');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,5,'100');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,6,'2');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,7,'1');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,8,'2');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,9,'1 sobre alimenticio');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,10,'');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,11,'');
insert into productoPorReceta(recet,product,cantidadProducto) values (1,12,'media');




insert into productoPorReceta(recet,product,cantidadProducto) values (2,13,'300');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,14,'1');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,15,'4');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,16,'1');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,17,'100');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,18,'500');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,19,'1000');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,20,'al gusto');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,21,'1');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,22,'1 pizca');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,23,'1');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,24,'1');
insert into productoPorReceta(recet,product,cantidadProducto) values (2,25,'1');


select r.nombre as receta, p.nombre as  producto,pp.cantidadProducto as cantidad,p.unidadDeMedida from productoPorReceta as pp, producto as p, receta as r  where pp.recet=r.id and pp.product=p.id;
