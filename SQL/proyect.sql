DROP TABLE IF EXISTS creador;
DROP TABLE IF EXISTS persona;

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


CREATE TABLE persona (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  nacimiento DATE
);

INSERT INTO persona VALUES (1, 'John', 'Pacheco', 1990-01-01)
INSERT INTO persona VALUES (2, 'Maria', 'Rodríguez', 1992-03-15)
INSERT INTO persona VALUES (3, 'Michael', 'Gómez', 1988-07-10)
INSERT INTO persona VALUES (4, 'Andrea', 'Díaz', 1995-05-20)
INSERT INTO persona VALUES (5, 'David', 'López', 1991-11-30)
INSERT INTO persona VALUES (6, 'Sara', 'Gutiérrez', 1987-04-25)
INSERT INTO persona VALUES (7, 'Daniel', 'Ríos', 1993-09-05)
INSERT INTO persona VALUES (8, 'Olivia', 'Vázquez', 1994-02-18)
INSERT INTO persona VALUES (9, 'Milio', 'Martínes', 1996-08-08)
INSERT INTO persona VALUES (10, 'Sofia', 'Muñoz', 1997-12-12)
INSERT INTO persona VALUES (11 'Cristian', 'Gómez', 1998-06-02)
INSERT INTO persona VALUES (12, 'Aurora', 'Garcia', 1999-10-22)
INSERT INTO persona VALUES (13, 'Andres', 'Martinez', 1991-03-11)
INSERT INTO persona VALUES (14, 'Isabel', 'Hernandez', 1993-07-27)
INSERT INTO persona VALUES (15, 'Yamila', 'Lopez', 1994-05-09)
INSERT INTO persona VALUES (16, 'Mia', 'Gonzalez', 1989-09-14)
INSERT INTO persona VALUES (17, 'Jose', 'Farrais', 1988-11-08)
INSERT INTO persona VALUES (18, 'Javier', 'Pérez', 1992-01-28)
INSERT INTO persona VALUES (19, 'Antonio', 'Luis', 1997-04-03)
INSERT INTO persona VALUES (20, 'Victoria', 'Fernández', 1996-12-06)


mysql> select * from persona;

| id | nombre      | apellido  | nacimiento |
+----+-------------+-----------+------------+
|  1 | John        | Pacheco   | 1990-01-01 |
|  2 | Maria       | Rodríguez | 1992-03-15 |
|  3 | Michael     | Gómez     | 1988-07-10 |
|  4 | Andrea      | Díaz      | 1995-05-20 |
|  5 | David       | López     | 1991-11-30 |
|  6 | Sara        | Gutiérrez | 1987-04-25 |
|  7 | Daniel      | Ríos      | 1993-09-05 |
|  8 | Olivia      | Vázquez   | 1994-02-18 |
|  9 | Milio       | Martínes  | 1996-08-08 |
| 10 | Sofia       | Muñoz     | 1997-12-12 |
| 11 | Cristian    | Gómez     | 1998-06-02 |
| 12 | Aurora      | Garcia    | 1999-10-22 |
| 13 | Andres      | Martinez  | 1991-03-11 |
| 14 | Isabel      | Hernandez | 1993-07-27 |
| 15 | Yamila      | Lopez     | 1994-05-09 |
| 16 | Mia         | Gonzalez  | 1989-09-14 |
| 17 | Jose        | Farrais   | 1988-11-08 |
| 18 | Javier      | Pérez     | 1992-01-28 |
| 19 | Antonio     | Luis      | 1997-04-03 |
| 20 | Victoria    | Fernández | 1996-12-06 |

20 rows in set (0,00 sec)

CREATE TABLE creador (
  id INT PRIMARY KEY,
  id_persona INT,
  genero VARCHAR(10),
  FOREIGN KEY (id_persona) REFERENCES persona(id)
);

INSERT INTO creador VALUES (1, 1, 'Masculino')
INSERT INTO creador VALUES (2, 2, 'Femenino')
INSERT INTO creador VALUES (3, 3, 'Masculino')
INSERT INTO creador VALUES (4, 4, 'Femenino')
INSERT INTO creador VALUES (5, 5, 'Masculino')
INSERT INTO creador VALUES (6, 6, 'Femenino')
INSERT INTO creador VALUES (7, 7, 'Masculino')
INSERT INTO creador VALUES (8, 8, 'Femenino')
INSERT INTO creador VALUES (9, 9, 'Masculino')
INSERT INTO creador VALUES (10, 10, 'Femenino')
INSERT INTO creador VALUES (11, 11, 'Masculino')
INSERT INTO creador VALUES (12, 12, 'Femenino')
INSERT INTO creador VALUES (13, 13, 'Masculino')
INSERT INTO creador VALUES (14, 14, 'Femenino')
INSERT INTO creador VALUES (15, 15, 'Masculino')
INSERT INTO creador VALUES (16, 16, 'Femenino')
INSERT INTO creador VALUES (17, 17, 'Masculino')
INSERT INTO creador VALUES (18, 18, 'Femenino')
INSERT INTO creador VALUES (19, 19, 'Masculino')
INSERT INTO creador VALUES (20, 20, 'Femenino')


mysql> select * from creador ;

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

CREATE TABLE usuario (
  id INT PRIMARY KEY,
  id_Persona INT,
  FOREIGN KEY (id_Persona) REFERENCES persona(id)
);

INSERT INTO usuario VALUES (1, 1)
INSERT INTO usuario VALUES (2, 2)
INSERT INTO usuario VALUES (3, 3)
INSERT INTO usuario VALUES (4, 4)
INSERT INTO usuario VALUES (5, 5)
INSERT INTO usuario VALUES (6, 6)
INSERT INTO usuario VALUES (7, 7)
INSERT INTO usuario VALUES (8, 8)
INSERT INTO usuario VALUES (9, 9)
INSERT INTO usuario VALUES (10, 10)
INSERT INTO usuario VALUES (11, 11)
INSERT INTO usuario VALUES (12, 12)
INSERT INTO usuario VALUES (13, 13)
INSERT INTO usuario VALUES (14, 14)
INSERT INTO usuario VALUES (15, 15)
INSERT INTO usuario VALUES (16, 16)
INSERT INTO usuario VALUES (17, 17)
INSERT INTO usuario VALUES (18, 18)
INSERT INTO usuario VALUES (19, 19)
INSERT INTO usuario VALUES (20, 20)


select * from usuario;

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


CREATE TABLE tiene (
  subscripcion INT,
  usuario INT,
  PRIMARY KEY (subscripcion, usuario),
  FOREIGN KEY (usuario) REFERENCES usuario(id)
);

INSERT INTO tiene VALUES (1, 1)
INSERT INTO tiene VALUES (2, 2)
INSERT INTO tiene VALUES (3, 3)
INSERT INTO tiene VALUES (4, 4)
INSERT INTO tiene VALUES (5, 5)
INSERT INTO tiene VALUES (6, 6)
INSERT INTO tiene VALUES (7, 7)
INSERT INTO tiene VALUES (8, 8)
INSERT INTO tiene VALUES (9, 9)
INSERT INTO tiene VALUES (10, 10)
INSERT INTO tiene VALUES (11, 11)
INSERT INTO tiene VALUES (12, 12)
INSERT INTO tiene VALUES (13, 13)
INSERT INTO tiene VALUES (14, 14)
INSERT INTO tiene VALUES (15, 15)
INSERT INTO tiene VALUES (16, 16)
INSERT INTO tiene VALUES (17, 17)
INSERT INTO tiene VALUES (18, 18)
INSERT INTO tiene VALUES (19, 19)
INSERT INTO tiene VALUES (20, 20)

mysql> select * from tiene;

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

20 rows in set (0,00 sec)

CREATE TABLE consume (
  usuario INT PRIMARY KEY,
  contenido VARCHAR(50),
  FOREIGN KEY (usuario) REFERENCES usuario(id)
);

INSERT INTO consume VALUES (1, 'contenido 1')
INSERT INTO consume VALUES (2, 'contenido 2')
INSERT INTO consume VALUES (3, 'contenido 3')
INSERT INTO consume VALUES (4, 'contenido 4')
INSERT INTO consume VALUES (5, 'contenido 5')
INSERT INTO consume VALUES (6, 'contenido 6')
INSERT INTO consume VALUES (7, 'contenido 7')
INSERT INTO consume VALUES (8, 'contenido 8')
INSERT INTO consume VALUES (9, 'contenido 9')
INSERT INTO consume VALUES (10, 'contenido 10')
INSERT INTO consume VALUES (11, 'contenido 11')
INSERT INTO consume VALUES (12, 'contenido 12')
INSERT INTO consume VALUES (13, 'contenido 13')
INSERT INTO consume VALUES (14, 'contenido 14')
INSERT INTO consume VALUES (15, 'contenido 15')
INSERT INTO consume VALUES (16, 'contenido 16')
INSERT INTO consume VALUES (17, 'contenido 17')
INSERT INTO consume VALUES (18, 'contenido 18')
INSERT INTO consume VALUES (19, 'contenido 19')
INSERT INTO consume VALUES (20, 'contenido 20')

select * from consume;

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
|      19 | Contenido 19 |
|      20 | Contenido 20 |

CREATE TABLE contenido (
  id_contenido INT PRIMARY KEY,
  visualizaciones INT
);

INSERT INTO contenido VALUES (1, 10)
INSERT INTO contenido VALUES (2, 5)
INSERT INTO contenido VALUES (3, 8)
INSERT INTO contenido VALUES (4, 15)
INSERT INTO contenido VALUES (5, 20)
INSERT INTO contenido VALUES (6, 12)
INSERT INTO contenido VALUES (7, 7)
INSERT INTO contenido VALUES (8, 9)
INSERT INTO contenido VALUES (9, 3)
INSERT INTO contenido VALUES (10, 18)
INSERT INTO contenido VALUES (11, 14)
INSERT INTO contenido VALUES (12, 6)
INSERT INTO contenido VALUES (13, 11)
INSERT INTO contenido VALUES (14, 16)
INSERT INTO contenido VALUES (15, 4)
INSERT INTO contenido VALUES (16, 13)
INSERT INTO contenido VALUES (17, 2)
INSERT INTO contenido VALUES (18, 19)
INSERT INTO contenido VALUES (19, 17)
INSERT INTO contenido VALUES (20, 1)

select * from contenido ;

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
|           17 |               2 |
|           18 |              19 |
|           19 |              17 |
|           20 |               1 |


CREATE TABLE guarda (
  favorito INT PRIMARY KEY,
  contenido INT,
  FOREIGN KEY (contenido) REFERENCES contenido(id_contenido)
);

INSERT INTO guarda VALUES (1, 1)
INSERT INTO guarda VALUES (2, 2)
INSERT INTO guarda VALUES (3, 3)
INSERT INTO guarda VALUES (4, 4)
INSERT INTO guarda VALUES (5, 5)
INSERT INTO guarda VALUES (6, 6)
INSERT INTO guarda VALUES (7, 7)
INSERT INTO guarda VALUES (8, 8)
INSERT INTO guarda VALUES (9, 9)
INSERT INTO guarda VALUES (10, 10)
INSERT INTO guarda VALUES (11, 11)
INSERT INTO guarda VALUES (12, 12)
INSERT INTO guarda VALUES (13, 13)
INSERT INTO guarda VALUES (14, 14)
INSERT INTO guarda VALUES (15, 15)
INSERT INTO guarda VALUES (16, 16)
INSERT INTO guarda VALUES (17, 17)
INSERT INTO guarda VALUES (18, 18)
INSERT INTO guarda VALUES (19, 19)
INSERT INTO guarda VALUES (20, 20)

select * from guarda;

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

20 rows in set (0,01 sec)

CREATE TABLE subcripcion (
  id_subcripcion INT PRIMARY KEY,
  FOREIGN KEY (id_subcripcion) REFERENCES tiene(PK)
);

INSERT INTO subcripcion VALUES (1)
INSERT INTO subcripcion VALUES (2)
INSERT INTO subcripcion VALUES (3)
INSERT INTO subcripcion VALUES (4)
INSERT INTO subcripcion VALUES (5)
INSERT INTO subcripcion VALUES (6)
INSERT INTO subcripcion VALUES (7)
INSERT INTO subcripcion VALUES (8)
INSERT INTO subcripcion VALUES (9)
INSERT INTO subcripcion VALUES (10)
INSERT INTO subcripcion VALUES (11)
INSERT INTO subcripcion VALUES (12)
INSERT INTO subcripcion VALUES (13)
INSERT INTO subcripcion VALUES (14)
INSERT INTO subcripcion VALUES (15)
INSERT INTO subcripcion VALUES (16)
INSERT INTO subcripcion VALUES (17)
INSERT INTO subcripcion VALUES (18)
INSERT INTO subcripcion VALUES (19)
INSERT INTO subcripcion VALUES (20)

select * from subcripcion;

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


CREATE TABLE post (
  id_post INT PRIMARY KEY,
  id_persona INT,
  FOREIGN KEY (id_persona) REFERENCES contenido(id_contenido)
);

INSERT INTO post VALUES (1, 1)
INSERT INTO post VALUES (2, 2)
INSERT INTO post VALUES (3, 3)
INSERT INTO post VALUES (4, 4)
INSERT INTO post VALUES (5, 5)
INSERT INTO post VALUES (6, 6)
INSERT INTO post VALUES (7, 7)
INSERT INTO post VALUES (8, 8)
INSERT INTO post VALUES (9, 9)
INSERT INTO post VALUES (10, 10)
INSERT INTO post VALUES (11, 11)
INSERT INTO post VALUES (12, 12)
INSERT INTO post VALUES (13, 13)
INSERT INTO post VALUES (14, 14)
INSERT INTO post VALUES (15, 15)
INSERT INTO post VALUES (16, 16)
INSERT INTO post VALUES (17, 17)
INSERT INTO post VALUES (18, 18)
INSERT INTO post VALUES (19, 19)
INSERT INTO post VALUES (20, 20)

mysql> select * from post;

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

20 rows in set (0,00 sec)

CREATE TABLE clips (
  id_clips INT PRIMARY KEY,
  id_persona INT,
  FOREIGN KEY (id_persona) REFERENCES contenido(id_contenido)
);

INSERT INTO clips VALUES (1, 1)
INSERT INTO clips VALUES (2, 2)
INSERT INTO clips VALUES (3, 3)
INSERT INTO clips VALUES (4, 4)
INSERT INTO clips VALUES (5, 5)
INSERT INTO clips VALUES (6, 6)
INSERT INTO clips VALUES (7, 7)
INSERT INTO clips VALUES (8, 8)
INSERT INTO clips VALUES (9, 9)
INSERT INTO clips VALUES (10, 10)
INSERT INTO clips VALUES (11, 11)
INSERT INTO clips VALUES (12, 12)
INSERT INTO clips VALUES (13, 13)
INSERT INTO clips VALUES (14, 14)
INSERT INTO clips VALUES (15, 15)
INSERT INTO clips VALUES (16, 16)
INSERT INTO clips VALUES (17, 17)
INSERT INTO clips VALUES (18, 18)
INSERT INTO clips VALUES (19, 19)
INSERT INTO clips VALUES (20, 20)

 select * from clips;

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

20 rows in set (0,00 sec)


CREATE TABLE video (
  id_video INT PRIMARY KEY,
  id_persona INT,
  FOREIGN KEY (id_persona) REFERENCES contenido(id_contenido)
);

INSERT INTO video VALUES (1, 1)
INSERT INTO video VALUES (2, 2)
INSERT INTO video VALUES (3, 3)
INSERT INTO video VALUES (4, 4)
INSERT INTO video VALUES (5, 5)
INSERT INTO video VALUES (6, 6)
INSERT INTO video VALUES (7, 7)
INSERT INTO video VALUES (8, 8)
INSERT INTO video VALUES (9, 9)
INSERT INTO video VALUES (10, 10)
INSERT INTO video VALUES (11, 11)
INSERT INTO video VALUES (12, 12)
INSERT INTO video VALUES (13, 13)
INSERT INTO video VALUES (14, 14)
INSERT INTO video VALUES (15, 15)
INSERT INTO video VALUES (16, 16)
INSERT INTO video VALUES (17, 17)
INSERT INTO video VALUES (18, 18)
INSERT INTO video VALUES (19, 19)
INSERT INTO video VALUES (20, 20)

select * from video;

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

CREATE TABLE favorito (
  id_favorito INT,
  FOREIGN KEY (id_favorito) REFERENCES guarda(favorito)
);

INSERT INTO subcripcion VALUES (1)
INSERT INTO subcripcion VALUES (2)
INSERT INTO subcripcion VALUES (3)
INSERT INTO subcripcion VALUES (4)
INSERT INTO subcripcion VALUES (5)
INSERT INTO subcripcion VALUES (6)
INSERT INTO subcripcion VALUES (7)
INSERT INTO subcripcion VALUES (8)
INSERT INTO subcripcion VALUES (9)
INSERT INTO subcripcion VALUES (10)
INSERT INTO subcripcion VALUES (11)
INSERT INTO subcripcion VALUES (12)
INSERT INTO subcripcion VALUES (13)
INSERT INTO subcripcion VALUES (14)
INSERT INTO subcripcion VALUES (15)
INSERT INTO subcripcion VALUES (16)
INSERT INTO subcripcion VALUES (17)
INSERT INTO subcripcion VALUES (18)
INSERT INTO subcripcion VALUES (19)
INSERT INTO subcripcion VALUES (20)

select * from favorito ;

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

20 rows in set (0,00 sec)


CREATE TABLE produce (
  perfil INT PRIMARY KEY,
  contenido INT,
  FOREIGN KEY (contenido) REFERENCES contenido(id_contenido)
);

INSERT INTO produce VALUES (1, 1)
INSERT INTO produce VALUES (2, 2)
INSERT INTO produce VALUES (3, 3)
INSERT INTO produce VALUES (4, 4)
INSERT INTO produce VALUES (5, 5)
INSERT INTO produce VALUES (6, 6)
INSERT INTO produce VALUES (7, 7)
INSERT INTO produce VALUES (8, 8)
INSERT INTO produce VALUES (9, 9)
INSERT INTO produce VALUES (10, 10)
INSERT INTO produce VALUES (11, 11)
INSERT INTO produce VALUES (12, 12)
INSERT INTO produce VALUES (13, 13)
INSERT INTO produce VALUES (14, 14)
INSERT INTO produce VALUES (15, 15)
INSERT INTO produce VALUES (16, 16)
INSERT INTO produce VALUES (17, 17)
INSERT INTO produce VALUES (18, 18)
INSERT INTO produce VALUES (19, 19)
INSERT INTO produce VALUES (20, 20)

select * from produce;

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

20 rows in set (0,00 sec)

CREATE TABLE perfil (
  id_perfil INT PRIMARY KEY,
  FOREIGN KEY (id_perfil) REFERENCES produce(perfil)
);

INSERT INTO perfil VALUES (1)
INSERT INTO perfil VALUES (2)
INSERT INTO perfil VALUES (3)
INSERT INTO perfil VALUES (4)
INSERT INTO perfil VALUES (5)
INSERT INTO perfil VALUES (6)
INSERT INTO perfil VALUES (7)
INSERT INTO perfil VALUES (8)
INSERT INTO perfil VALUES (9)
INSERT INTO perfil VALUES (10)
INSERT INTO perfil VALUES (11)
INSERT INTO perfil VALUES (12)
INSERT INTO perfil VALUES (13)
INSERT INTO perfil VALUES (14)
INSERT INTO perfil VALUES (15)
INSERT INTO perfil VALUES (16)
INSERT INTO perfil VALUES (17)
INSERT INTO perfil VALUES (18)
INSERT INTO perfil VALUES (19)
INSERT INTO perfil VALUES (20)

select * from perfil;

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

20 rows in set (0,00 sec)

CREATE TABLE hacer (
  publicacion INT PRIMARY KEY,
  perfil INT,
  FOREIGN KEY (perfil) REFERENCES perfil(id_perfil)
);

INSERT INTO hacer VALUES (1, 1)
INSERT INTO hacer VALUES (2, 2)
INSERT INTO hacer VALUES (3, 3)
INSERT INTO hacer VALUES (4, 4)
INSERT INTO hacer VALUES (5, 5)
INSERT INTO hacer VALUES (6, 6)
INSERT INTO hacer VALUES (7, 7)
INSERT INTO hacer VALUES (8, 8)
INSERT INTO hacer VALUES (9, 9)
INSERT INTO hacer VALUES (10, 10)
INSERT INTO hacer VALUES (11, 11)
INSERT INTO hacer VALUES (12, 12)
INSERT INTO hacer VALUES (13, 13)
INSERT INTO hacer VALUES (14, 14)
INSERT INTO hacer VALUES (15, 15)
INSERT INTO hacer VALUES (16, 16)
INSERT INTO hacer VALUES (17, 17)
INSERT INTO hacer VALUES (18, 18)
INSERT INTO hacer VALUES (19, 19)
INSERT INTO hacer VALUES (20, 20)

select * from hacer;

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

20 rows in set (0,00 sec)


CREATE TABLE publicacion (
  id_publicacion INT PRIMARY KEY,
  publicacion INT,
  reciente VARCHAR(50),
  FOREIGN KEY (publicacion) REFERENCES hacer(publicacion)
);

INSERT INTO publicacion VALUES (1, 1, 'Reciente 1')
INSERT INTO publicacion VALUES (2, 2, 'Reciente 2')
INSERT INTO publicacion VALUES (3, 3, 'Reciente 3')
INSERT INTO publicacion VALUES (4, 4, 'Reciente 4')
INSERT INTO publicacion VALUES (5, 5, 'Reciente 5')
INSERT INTO publicacion VALUES (6, 6, 'Reciente 6')
INSERT INTO publicacion VALUES (7, 7, 'Reciente 7')
INSERT INTO publicacion VALUES (8, 8, 'Reciente 8')
INSERT INTO publicacion VALUES (9, 9, 'Reciente 9')
INSERT INTO publicacion VALUES (10, 10, 'Reciente 10')
INSERT INTO publicacion VALUES (11, 11, 'Reciente 11')
INSERT INTO publicacion VALUES (12, 12, 'Reciente 12')
INSERT INTO publicacion VALUES (13, 13, 'Reciente 13')
INSERT INTO publicacion VALUES (14, 14, 'Reciente 14')
INSERT INTO publicacion VALUES (15, 15, 'Reciente 15')
INSERT INTO publicacion VALUES (16, 16, 'Reciente 16')
INSERT INTO publicacion VALUES (17, 17, 'Reciente 17')
INSERT INTO publicacion VALUES (18, 18, 'Reciente 18')
INSERT INTO publicacion VALUES (19, 19, 'Reciente 19')
INSERT INTO publicacion VALUES (20, 20, 'Reciente 20')

select * from publicacion;

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

CREATE INDEX idx_nombre_apellido ON persona(nombre, apellido);

CREATE INDEX idx_id_persona ON creador(id_persona);

CREATE INDEX idx_id_Persona ON usuario(id_Persona);

CREATE INDEX persona_index ON persona(nombre);

CREATE UNIQUE INDEX index_contenido ON contenido(visualizaciones);

CREATE UNIQUE INDEX index_produce ON produce(contenido);

CREATE INDEX persona_publicacion ON publicacion(reciente);

ALTER TABLE perfil  ADD PRIMARY KEY(id_perfil)

CREATE UNIQUE INDEX index_video ON contenido(id_persona);

ALTER TABLE post  ADD PRIMARY KEY(id_post)

CREATE UNIQUE INDEX index_consume ON consume(contenido);

CREATE UNIQUE INDEX index_creador ON creador(genero);


CREATE VIEW vista_tiene AS
SELECT t.subscripcion, t.usuario, u.id_Persona
FROM tiene t
INNER JOIN usuario u ON t.usuario = u.id;


CREATE VIEW vista_consume AS
SELECT c.usuario, c.contenido, u.id_Persona
FROM consume c
INNER JOIN usuario u ON c.usuario = u.id;


CREATE VIEW vista_contenido AS
SELECT id_contenido, visualizaciones
FROM contenido;


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
