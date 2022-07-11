CREATE DATABASE catcafe_db; /* Crea la base de datos */

SHOW DATABASES;

USE catcafe_db; /* use la base de datos indicada */

SHOW TABLES;
/* permite crear la tabla segun la informacion que necesitamos */
CREATE TABLE catcafe_tabla(
id_mascota INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (8) NOT NULL,
apodo VARCHAR (10) NULL,
edad FLOAT NOT NULL,
peso_kgs FLOAT NOT NULL,
gustos VARCHAR (20) NOT NULL,
color_pelaje VARCHAR (15) NOT NULL,
color_ojos VARCHAR (15) NOT NULL,
acompañado_de VARCHAR (8) NULL,
PRIMARY KEY (id_mascota)
);

SHOW TABLES;

/* describe la tabla indicada */
DESCRIBE catcafe_tabla;

/* muestra todo(*) el contenido de la tabla indicada */
SELECT * FROM catcafe_tabla;

/* inserta un registro en la tabla indicada, PUNTO 1 */
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos, acompañado_de)
 VALUES ("Rocket", "ninguno", 3.0, 3.0, "dormir mucho", "blanco", "celestes", "Sunny");
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos)
 VALUES ("Pinto", "Pin", 5.0, 3.5, "los mimos", "naranja con blanco", "amarillo con verde");
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos, acompañado_de)
 VALUES ("Sunny", "ninguno", 3.0, 3.0, "jugar con pelotitas", "negro", "amarillentos", "Rocket");
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos, acompañado_de)
 VALUES ("Emelia", "Emeli", 5.0, 4.4, "reposar bajo el sol", "gris con negro", "amarillentos", "Seiko");
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos)
 VALUES ("Nikki", "ninguno", 4.0, 4.3, "no se despega de Ricochet", "gris", "verdes claros");
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos)
 VALUES ("Ricochet", "ninguno", 4.0, 4.7, "lugares altos", "blanco con gris", "celestes");
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos)
 VALUES ("Onyx", "ninguno", 7.0, 3.3, "lugares donde hay comida", "naranja con marron", "amarillentos");
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos, acompañado_de)
 VALUES ("Seiko", "ninguno", 2.0, 3.7, "dormir con otros gatos", "blanco con gris", "verdosos", "Emeli");
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos)
 VALUES ("Nathan", "Ninja nate", 7.0, 4.5, "esconderse", "negro", "amarillentos");

/* seleccionar informacion de una tabla */
SELECT * FROM catcafe_tabla;

/* Actualizar el apodo de "ninguno" a NULL */
UPDATE catcafe_tabla SET apodo = NULL WHERE apodo = "ninguno";

/* Modificar el ancho de algunas columnas */
ALTER TABLE catcafe_tabla MODIFY nombre VARCHAR (10);
ALTER TABLE catcafe_tabla MODIFY apodo VARCHAR (12);
ALTER TABLE catcafe_tabla MODIFY gustos VARCHAR (26);
ALTER TABLE catcafe_tabla MODIFY color_pelaje VARCHAR (20);
ALTER TABLE catcafe_tabla MODIFY color_ojos VARCHAR (20);

DESCRIBE catcafe_tabla;

/* Modificar la columna apodo para que por defecto aparezca que no tienen, PUNTO 2 */
ALTER TABLE catcafe_tabla MODIFY apodo VARCHAR (12) DEFAULT "no tienen";

DESCRIBE catcafe_tabla;

SELECT * FROM catcafe_tabla;

/* Asignar el valor por defecto a los gatitos con valores NULL en su apodo, PUNTO 3 */
UPDATE catcafe_tabla SET apodo = DEFAULT WHERE apodo is NULL;

SELECT * FROM catcafe_tabla;

/* Modificar la columna apodo para que por defecto aparezca que no tienen, PUNTO 4 */
ALTER TABLE catcafe_tabla MODIFY acompañado_de VARCHAR (8) DEFAULT "solito";

DESCRIBE catcafe_tabla;

/* Asignar el valor por defecto a los gatitos con valores NULL en su apodo, PUNTO 5 */
UPDATE catcafe_tabla SET acompañado_de = DEFAULT WHERE acompañado_de is NULL;

SELECT * FROM catcafe_tabla;

/* Agregar una nueva columna de dieta de acuerdo a su peso y que aparezca al lado de la columna peso, PUNTO 6 */
ALTER TABLE catcafe_tabla ADD dieta TINYINT AFTER peso_kgs;

ALTER TABLE catcafe_tabla ALTER dieta SET DEFAULT (peso_kgs > 4);
UPDATE catcafe_tabla SET dieta = DEFAULT;

SELECT * FROM catcafe_tabla;

/* Agregar una nueva columna de jubilación que es de 11 años, de acuerdo a la edad y que aparezca al lado de la columna edad, PUNTO 7 */
ALTER TABLE catcafe_tabla ADD a_jubilar_en FLOAT NOT NULL AFTER edad;

ALTER TABLE catcafe_tabla ALTER a_jubilar_en SET DEFAULT (11 - edad);
UPDATE catcafe_tabla SET a_jubilar_en = DEFAULT;

SELECT * FROM catcafe_tabla;

/* Agregamos dos nuevos gatitos, PUNTO 8*/
INSERT INTO catcafe_tabla (nombre, apodo, edad, peso_kgs, gustos, color_pelaje, color_ojos)
 VALUES ("Toffee", "Tofisito", 4.0, 3.4, "jugar y estar solo a veces", "blanco con gris", "verdosos");
INSERT INTO catcafe_tabla (nombre, edad, peso_kgs, gustos, color_pelaje, color_ojos)
 VALUES ("Chucky", 10, 4.3, "dormir y caminar", "naranja con blanco", "amarillentos");


SELECT * FROM catcafe_tabla;






