DROP TABLE IF EXISTS creador;
DROP TABLE IF EXISTS persona;



CREATE TABLE persona (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  nacimiento DATE
);

DELIMITER //

DROP PROCEDURE IF EXISTS insertar_registros //

CREATE PROCEDURE insertar_registros()
BEGIN
    DECLARE contador INT DEFAULT 1;

    WHILE contador <= 100 DO
        INSERT INTO persona (id, nombre, apellido, nacimiento)
        VALUES (contador, CONCAT('Nombre', contador), CONCAT('Apellido', contador), CURDATE() - INTERVAL FLOOR(RAND() * 365) DAY);
        SET contador = contador + 1;
    END WHILE;
END //

DELIMITER ;


CREATE INDEX idx_nombre ON persona(nombre);



CREATE TABLE creador (
  id INT PRIMARY KEY,
  id_persona INT,
  genero VARCHAR(10),
  FOREIGN KEY (id_persona) REFERENCES persona(id)
);

CREATE INDEX idx_nombre_apellido ON persona(nombre, apellido);


DELIMITER //
CREATE TRIGGER after_insert_persona
AFTER INSERT ON persona
FOR EACH ROW
BEGIN
    DECLARE mensaje VARCHAR(255);
    SET mensaje = CONCAT('Se ha insertado una nueva persona con ID: ', NEW.id);
    SELECT mensaje;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER after_insert_creador
AFTER INSERT ON creador
FOR EACH ROW
BEGIN
    DECLARE mensaje VARCHAR(255);
    SET mensaje = CONCAT('Se ha insertado un nuevo creador con ID: ', NEW.id);
    SELECT mensaje;
END //
DELIMITER ;




mysql> select * from persona;
+----+-------------+-----------+------------+
| id | nombre      | apellido  | nacimiento |
+----+-------------+-----------+------------+
|  1 | John        | Doe       | 1990-01-01 |
|  2 | Jane        | Smith     | 1992-03-15 |
|  3 | Michael     | Johnson   | 1988-07-10 |
|  4 | Emily       | Davis     | 1995-05-20 |
|  5 | David       | Miller    | 1991-11-30 |
|  6 | Sarah       | Wilson    | 1987-04-25 |
|  7 | Daniel      | Taylor    | 1993-09-05 |
|  8 | Olivia      | Anderson  | 1994-02-18 |
|  9 | Matthew     | Thomas    | 1996-08-08 |
| 10 | Sophia      | Roberts   | 1997-12-12 |
| 11 | Christopher | Brown     | 1998-06-02 |
| 12 | Ava         | Garcia    | 1999-10-22 |
| 13 | Andrew      | Martinez  | 1991-03-11 |
| 14 | Isabella    | Hernandez | 1993-07-27 |
| 15 | James       | Lopez     | 1994-05-09 |
| 16 | Mia         | Gonzalez  | 1989-09-14 |
| 17 | Joseph      | Clark     | 1988-11-08 |
| 18 | Abigail     | Lewis     | 1992-01-28 |
| 19 | Benjamin    | Lee       | 1997-04-03 |
| 20 | Victoria    | King      | 1996-12-06 |
+----+-------------+-----------+------------+
20 rows in set (0,00 sec)


CREATE INDEX idx_id_persona ON creador(id_persona);


mysql> select * from creador ;
+----+------------+-----------+
| id | id_persona | genero    |
+----+------------+-----------+
|  1 |          1 | Masculino |
|  2 |          2 | Femenino  |
|  3 |          3 | Masculino |
|  4 |          4 | Femenino  |
|  5 |          5 | Masculino |
|  6 |          6 | Femenino  |
|  7 |          7 | Masculino |
|  8 |          8 | Femenino  |
|  9 |          9 | Masculino |
| 10 |         10 | Femenino  |
| 11 |         11 | Masculino |
| 12 |         12 | Femenino  |
| 13 |         13 | Masculino |
| 14 |         14 | Femenino  |
| 15 |         15 | Masculino |
| 16 |         16 | Femenino  |
| 17 |         17 | Masculino |
| 18 |         18 | Femenino  |
| 19 |         19 | Masculino |
| 20 |         20 | Femenino  |
+----+------------+-----------+select * from usuario;


CREATE TABLE usuario (
  id INT PRIMARY KEY,
  id_Persona INT,
  FOREIGN KEY (id_Persona) REFERENCES persona(id)
);

CREATE INDEX idx_id_Persona ON usuario(id_Persona);


DELIMITER //
CREATE TRIGGER after_insert_usuario
AFTER INSERT ON usuario
FOR EACH ROW
BEGIN
    DECLARE mensaje VARCHAR(255);
    SET mensaje = CONCAT('Se ha insertado un nuevo usuario con ID: ', NEW.id);
    SELECT mensaje;
END //
DELIMITER ;


select * from usuario;
+----+------------+
| id | id_Persona |
+----+------------+
|  1 |          1 |
|  2 |          2 |
|  3 |          3 |
|  4 |          4 |
|  5 |          5 |
|  6 |          6 |
|  7 |          7 |
|  8 |          8 |
|  9 |          9 |
| 10 |         10 |
| 11 |         11 |
| 12 |         12 |
| 13 |         13 |
| 14 |         14 |
| 15 |         15 |
| 16 |         16 |
| 17 |         17 |
| 18 |         18 |
| 19 |         19 |
| 20 |         20 |
+----+------------+
|

CREATE TABLE tiene (
  subscripcion INT,
  usuario INT,
  PRIMARY KEY (subscripcion, usuario),
  FOREIGN KEY (usuario) REFERENCES usuario(id)
);


CREATE VIEW vista_tiene AS
SELECT t.subscripcion, t.usuario, u.id_Persona
FROM tiene t
INNER JOIN usuario u ON t.usuario = u.id;



mysql> select * from tiene;
+--------------+---------+
| subscripcion | usuario |
+--------------+---------+
|            1 |       1 |
|            2 |       2 |
|            3 |       3 |
|            4 |       4 |
|            5 |       5 |
|            6 |       6 |
|            7 |       7 |
|            8 |       8 |
|            9 |       9 |
|           10 |      10 |
|           11 |      11 |
|           12 |      12 |
|           13 |      13 |
|           14 |      14 |
|           15 |      15 |
|           16 |      16 |
|           17 |      17 |
|           18 |      18 |
|           19 |      19 |
|           20 |      20 |
+--------------+---------+
20 rows in set (0,00 sec)

CREATE TABLE consume (
  usuario INT PRIMARY KEY,
  contenido VARCHAR(50),
  FOREIGN KEY (usuario) REFERENCES usuario(id)
);


CREATE VIEW vista_consume AS
SELECT c.usuario, c.contenido, u.id_Persona
FROM consume c
INNER JOIN usuario u ON c.usuario = u.id;


select * from consume;
+---------+--------------+
| usuario | contenido    |
+---------+--------------+
|       1 | Contenido 1  |
|       2 | Contenido 2  |
|       3 | Contenido 3  |
|       4 | Contenido 4  |
|       5 | Contenido 5  |
|       6 | Contenido 6  |
|       7 | Contenido 7  |
|       8 | Contenido 8  |
|       9 | Contenido 9  |
|      10 | Contenido 10 |
|      11 | Contenido 11 |
|      12 | Contenido 12 |
|      13 | Contenido 13 |
|      14 | Contenido 14 |
|      15 | Contenido 15 |
|      16 | Contenido 16 |
|      17 | Contenido 17 |
|      18 | Contenido 18 |
|      19 | Contenido 19 |CREATE TABLE contenido (
  id_contenido INT PRIMARY KEY,
  visualizaciones INT
);
|      20 | Contenido 20 |
+---------+--------------+

CREATE TABLE subcripcion (
  id_subcripcion INT PRIMARY KEY,
  FOREIGN KEY (id_subcripcion) REFERENCES tiene(PK)
);

select * from subcripcion;
+----------------+
| id_subcripcion |
+----------------+
|              1 |
|              2 |
|              3 |
|              4 |
|              5 |
|              6 |
|              7 |
|              8 |
|              9 |
|             10 |
|             11 |
|             12 |
|             13 |
|             14 |
|             15 |
|             16 |
|             17 |
|             18 |
|             19 |
|             20 |
+----------------+


CREATE TABLE contenido (
  id_contenido INT PRIMARY KEY,
  visualizaciones INT
);

CREATE VIEW vista_contenido AS
SELECT id_contenido, visualizaciones
FROM contenido;


select * from contenido ;
+--------------+-----------------+
| id_contenido | visualizaciones |
+--------------+-----------------+
|            1 |              10 |
|            2 |               5 |
|            3 |               8 |
|            4 |              15 |
|            5 |              20 |
|            6 |              12 |
|            7 |               7 |
|            8 |               9 |
|            9 |               3 |
|           10 |              18 |
|           11 |              14 |
|           12 |               6 |
|           13 |              11 |
|           14 |              16 |
|           15 |               4 |
|           16 |              13 |
|           17 |               2 |CREATE TABLE contenido (
  id_contenido INT PRIMARY KEY,
  visualizaciones INT
);
|           18 |              19 |
|           19 |              17 |
|           20 |               1 |
+--------------+-----------------+

CREATE TABLE post (
  id_post INT PRIMARY KEY,
  id_persona INT,
  FOREIGN KEY (id_persona) REFERENCES contenido(id_contenido)
);

mysql> select * from post;
+---------+------------+
| id_post | id_persona |
+---------+------------+
|       1 |          1 |
|       2 |          2 |
|       3 |          3 |
|       4 |          4 |
|       5 |          5 |
|       6 |          6 |
|       7 |          7 |
|       8 |          8 |
|       9 |          9 |
|      10 |         10 |
|      11 |         11 |
|      12 |         12 |
|      13 |         13 |
|      14 |         14 |
|      15 |         15 |
|      16 |         16 |
|      17 |         17 |
|      18 |         18 |
|      19 |         19 |
|      20 |         20 |
+---------+------------+
20 rows in set (0,00 sec)


CREATE TABLE clips (
  id_clips INT PRIMARY KEY,
  id_persona INT,
  FOREIGN KEY (id_persona) REFERENCES contenido(id_contenido)
);

 select * from clips;
+----------+------------+
| id_clips | id_persona |
+----------+------------+
|        1 |          1 |
|        2 |          2 |
|        3 |          3 |
|        4 |          4 |
|        5 |          5 |
|        6 |          6 |
|        7 |          7 |
|        8 |          8 |
|        9 |          9 |
|       10 |         10 |
|       11 |         11 |
|       12 |         12 |
|       13 |         13 |
|       14 |         14 |
|       15 |         15 |
|       16 |         16 |
|       17 |         17 |
|       18 |         18 |
|       19 |         19 |
|       20 |         20 |
+----------+------------+
20 rows in set (0,00 sec)


CREATE TABLE video (
  id_video INT PRIMARY KEY,
  id_persona INT,
  FOREIGN KEY (id_persona) REFERENCES contenido(id_contenido)
);
select * from video;
+----------+------------+
| id_video | id_persona |
+----------+------------+
|        1 |          1 |
|        2 |          2 |
|        3 |          3 |
|        4 |          4 |
|        5 |          5 |
|        6 |          6 |
|        7 |          7 |
|        8 |          8 |
|        9 |          9 |
|       10 |         10 |
|       11 |         11 |
|       12 |         12 |
|       13 |         13 |
|       14 |         14 |
|       15 |         15 |
|       16 |         16 |
|       17 |         17 |
|       18 |         18 |
|       19 |         19 |
|       20 |         20 |
+----------+------------+


CREATE TABLE guarda (
  favorito INT PRIMARY KEY,
  contenido INT,
  FOREIGN KEY (contenido) REFERENCES contenido(id_contenido)
);
select * from guarda;
+----------+-----------+
| favorito | contenido |
+----------+-----------+
|        1 |         1 |
|        2 |         2 |
|        3 |         3 |
|        4 |         4 |
|        5 |         5 |
|        6 |         6 |
|        7 |         7 |
|        8 |         8 |
|        9 |         9 |
|       10 |        10 |
|       11 |        11 |
|       12 |        12 |
|       13 |        13 |
|       14 |        14 |
|       15 |        15 |
|       16 |        16 |
|       17 |        17 |
|       18 |        18 |
|       19 |        19 |
|       20 |        20 |
+----------+-----------+
20 rows in set (0,01 sec)


CREATE TABLE favorito (
  id_favorito INT,
  FOREIGN KEY (id_favorito) REFERENCES guarda(favorito)
);

select * from favorito ;
+-------------+
| id_favorito |
+-------------+
|           1 |
|           2 |
|           3 |
|           4 |
|           5 |
|           6 |
|           7 |
|           8 |
|           9 |
|          10 |
|          11 |
|          12 |
|          13 |
|          14 |
|          15 |
|          16 |
|          17 |
|          18 |
|          19 |
|          20 |
+-------------+
20 rows in set (0,00 sec)


CREATE TABLE produce (
  perfil INT PRIMARY KEY,
  contenido INT,
  FOREIGN KEY (contenido) REFERENCES contenido(id_contenido)
);

select * from produce ;
+--------+-----------+
| perfil | contenido |
+--------+-----------+
|      1 |         1 |
|      2 |         2 |
|      3 |         3 |
|      4 |         4 |
|      5 |         5 |
|      6 |         6 |
|      7 |         7 |
|      8 |         8 |
|      9 |         9 |
|     10 |        10 |
|     11 |        11 |
|     12 |        12 |
|     13 |        13 |
|     14 |        14 |
|     15 |        15 |
|     16 |        16 |
|     17 |        17 |
|     18 |        18 |
|     19 |        19 |
|     20 |        20 |
+--------+-----------+
20 rows in set (0,00 sec)

CREATE TABLE perfil (
  id_perfil INT PRIMARY KEY,
  FOREIGN KEY (id_perfil) REFERENCES produce(perfil)
);

select * from perfil;
+-----------+
| id_perfil |
+-----------+
|         1 |
|         2 |
|         3 |
|         4 |
|         5 |
|         6 |
|         7 |
|         8 |
|         9 |
|        10 |
|        11 |
|        12 |
|        13 |
|        14 |
|        15 |
|        16 |
|        17 |
|        18 |
|        19 |
|        20 |
+-----------+
20 rows in set (0,00 sec)

CREATE TABLE hacer (
  publicacion INT PRIMARY KEY,
  perfil INT,
  FOREIGN KEY (perfil) REFERENCES perfil(id_perfil)
);


 select * from hacer;
+-------------+--------+
| publicacion | perfil |
+-------------+--------+
|           1 |      1 |
|           2 |      2 |
|           3 |      3 |
|           4 |      4 |
|           5 |      5 |
|           6 |      6 |
|           7 |      7 |
|           8 |      8 |
|           9 |      9 |
|          10 |     10 |
|          11 |     11 |
|          12 |     12 |
|          13 |     13 |
|          14 |     14 |
|          15 |     15 |
|          16 |     16 |
|          17 |     17 |
|          18 |     18 |
|          19 |     19 |
|          20 |     20 |
+-------------+--------+
20 rows in set (0,00 sec)


CREATE TABLE publicacion (
  id_publicacion INT PRIMARY KEY,
  publicacion INT,
  reciente VARCHAR(50),
  FOREIGN KEY (publicacion) REFERENCES hacer(publicacion)
);

select * from publicacion;
+----------------+-------------+-------------+
| id_publicacion | publicacion | reciente    |
+----------------+-------------+-------------+
|              1 |           1 | Reciente 1  |
|              2 |           2 | Reciente 2  |
|              3 |           3 | Reciente 3  |
|              4 |           4 | Reciente 4  |
|              5 |           5 | Reciente 5  |
|              6 |           6 | Reciente 6  |
|              7 |           7 | Reciente 7  |
|              8 |           8 | Reciente 8  |
|              9 |           9 | Reciente 9  |
|             10 |          10 | Reciente 10 |
|             11 |          11 | Reciente 11 |
|             12 |          12 | Reciente 12 |
|             13 |          13 | Reciente 13 |
|             14 |          14 | Reciente 14 |
|             15 |          15 | Reciente 15 |
|             16 |          16 | Reciente 16 |
|             17 |          17 | Reciente 17 |
|             18 |          18 | Reciente 18 |
|             19 |          19 | Reciente 19 |
|             20 |          20 | Reciente 20 |
+----------------+-------------+-------------+


DROP PROCEDURE IF EXISTS InsertarRegistroPersona;

DELIMITER //

CREATE PROCEDURE InsertarRegistroPersona(
  IN p_id INT,
  IN p_nombre VARCHAR(50),
  IN p_apellido VARCHAR(50),
  IN p_nacimiento DATE
)
BEGIN
  INSERT INTO persona (id, nombre, apellido, nacimiento)
  VALUES (p_id, p_nombre, p_apellido, p_nacimiento);
END //

DELIMITER ;

CALL InsertarRegistroPersona(1, 'John', 'Doe', '2000-01-01');

