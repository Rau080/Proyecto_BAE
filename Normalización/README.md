# Diagrama Normalizada

Persona

| id | nombre      | apellido  | nacimiento |
|----|-------------|-----------|------------|
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

Usuario

| id | id_Persona |
|----|------------|
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

Creador

| id | id_persona | genero    |
|----|------------|-----------|
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

tiene

| subscription | usuario |
|--------------|---------|
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

suscripción

| id_subcripcion |
|----------------|
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

perfil 

| id_perfil |
|-----------|
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

publicación

| id_publicacion | publicacion | reciente    |
|----------------|-------------|-------------|
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

contenido 

| id_contenido | visualizaciones |
|--------------|-----------------|
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

pots

| id_post | id_persona |
|---------|------------|
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

clips

| id_clips | id_persona |
|----------|------------|
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

video

| id_video | id_persona |
|----------|------------|
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

guarda

| favorito | contenido |
|----------|-----------|
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

consume

| usuario | contenido    |
|---------|--------------|
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

produce

| perfil | contenido |
|--------|-----------|
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

hacer

| publicacion | perfil |
|-------------|--------|
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