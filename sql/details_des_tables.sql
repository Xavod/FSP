desc Glossaire;
/*
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | int(11)      | NO   | PRI | NULL    | auto_increment |
| abreviation | varchar(150) | YES  |     | NULL    |                |
| description | varchar(150) | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
*/

select * from Glossaire limit 5;
/*
+----+-------------+--------------------------------+
| id | abreviation | description                    |
+----+-------------+--------------------------------+
|  1 | G           | contient du gluten             |
|  2 | L           | contient des produits laitiers |
|  3 | V           | convient aux v‚g‚tariens       |
|  4 | C           | contient des crustac‚s         |
|  5 | A           | contient des arachides         |
+----+-------------+--------------------------------+
*/


desc Ingredient;
/*
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int(11)      | NO   | PRI | NULL    | auto_increment |
| I_nom    | varchar(250) | YES  |     | NULL    |                |
| I_unite  | varchar(25)  | YES  |     | NULL    |                |
| I_groupe | varchar(100) | YES  |     | NULL    |                |
| I_kcal   | int(11)      | YES  |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
*/

select * from Ingredient limit 5;
/*
+----+------------+---------+--------------------+--------+
| id | I_nom      | I_unite | I_groupe           | I_kcal |
+----+------------+---------+--------------------+--------+
|  1 | aubergine  | NULL    | Legume             |   NULL |
|  2 | aubergines | NULL    | Legume             |   NULL |
|  3 | avocats    | NULL    | Legume             |   NULL |
|  4 | basilic    | cs      | Sauce et condiment |   NULL |
|  5 | blette     | g       | Legume             |   NULL |
+----+------------+---------+--------------------+--------+
*/


desc NomDePlat;
/*
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | int(11)      | NO   | PRI | NULL    | auto_increment |
| nom_du_plat | varchar(250) | YES  |     | NULL    |                |
| regime      | varchar(250) | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
*/

select * from NomDePlat limit 5;
/*
+----+------------------------------------+----------+
| id | nom_du_plat                        | regime   |
+----+------------------------------------+----------+
|  1 | agneau a l'anglaise                | G,S,Se,P |
|  2 | aiguillettes de poulet aux legumes | O,L      |
|  3 | aubergines farcies aux legumes     | L        |
|  4 | baked potatoes au four             | L,V      |
|  5 | boeuf bourgignon                   | NULL     |
+----+------------------------------------+----------+
*/


desc Recette;
/*
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| R_id          | int(11)       | NO   | PRI | NULL    | auto_increment |
| P_id          | int(11)       | YES  | MUL | NULL    |                |
| R_nbr_pers    | int(11)       | YES  |     | NULL    |                |
| R_tps_prepa   | int(11)       | YES  |     | NULL    |                |
| R_tps_cuisson | int(11)       | YES  |     | NULL    |                |
| I_id          | int(11)       | YES  | MUL | NULL    |                |
| R_ingr_qtt    | decimal(10,2) | YES  |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+
*/

select * from Recette limit 5;
/*
+------+------+------------+-------------+---------------+------+------------+
| R_id | P_id | R_nbr_pers | R_tps_prepa | R_tps_cuisson | I_id | R_ingr_qtt |
+------+------+------------+-------------+---------------+------+------------+
|    1 |    1 |          4 |          35 |            50 |  156 |       6.00 |
|    2 |    1 |          4 |          35 |            50 |  143 |       2.00 |
|    3 |    1 |          4 |          35 |            50 |   22 |     200.00 |
|    4 |    1 |          4 |          35 |            50 |   58 |      20.00 |
|    5 |    1 |          4 |          35 |            50 |   77 |       3.00 |
+------+------+------------+-------------+---------------+------+------------+
*/


desc Utilisateur;
/*
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| U_id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| U_pseudo | varchar(50)  | YES  |     | NULL    |                |
| U_mdp    | varchar(255) | YES  |     | NULL    |                |
| U_fav01  | int(11)      | YES  |     | NULL    |                |
| U_fav02  | int(11)      | YES  |     | NULL    |                |
| U_fav03  | int(11)      | YES  |     | NULL    |                |
| U_fav04  | int(11)      | YES  |     | NULL    |                |
| U_fav05  | int(11)      | YES  |     | NULL    |                |
| U_fav06  | int(11)      | YES  |     | NULL    |                |
| U_fav07  | int(11)      | YES  |     | NULL    |                |
| U_fav08  | int(11)      | YES  |     | NULL    |                |
| U_fav09  | int(11)      | YES  |     | NULL    |                |
| U_fav10  | int(11)      | YES  |     | NULL    |                |
| U_fav11  | int(11)      | YES  |     | NULL    |                |
| U_fav12  | int(11)      | YES  |     | NULL    |                |
| U_fav13  | int(11)      | YES  |     | NULL    |                |
| U_fav14  | int(11)      | YES  |     | NULL    |                |
| U_fav15  | int(11)      | YES  |     | NULL    |                |
| U_fav16  | int(11)      | YES  |     | NULL    |                |
| U_fav17  | int(11)      | YES  |     | NULL    |                |
| U_fav18  | int(11)      | YES  |     | NULL    |                |
| U_fav19  | int(11)      | YES  |     | NULL    |                |
| U_fav20  | int(11)      | YES  |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
*/

select * from Utilisateur limit 5;
/*
Empty set (0.00 sec)
*/


desc v_globale;
/*
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| R_id             | int(11)      | NO   |     | 0       |       |
| Recettes         | varchar(250) | YES  |     | NULL    |       |
| Regimes_speciaux | varchar(250) | YES  |     | NULL    |       |
| I_id             | int(11)      | NO   |     | 0       |       |
| Ingredients      | varchar(250) | YES  |     | NULL    |       |
| Unites           | varchar(25)  | YES  |     | NULL    |       |
| Groupes          | varchar(100) | YES  |     | NULL    |       |
| kcal             | int(11)      | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
*/

select * from v_globale limit 5;
/*
+------+---------------------+------------------+------+----------------------+--------+--------------------+------+
| R_id | Recettes            | Regimes_speciaux | I_id | Ingredients          | Unites | Groupes            | kcal |
+------+---------------------+------------------+------+----------------------+--------+--------------------+------+
|    1 | agneau a l'anglaise | G,S,Se,P         |  156 | Worcestershire sauce | cs     | Sauce et condiment | NULL |
|    1 | agneau a l'anglaise | G,S,Se,P         |  143 | thym                 | brins  | Sauce et condiment | NULL |
|    1 | agneau a l'anglaise | G,S,Se,P         |   22 | champignons de Paris | g      | Legume             | NULL |
|    1 | agneau a l'anglaise | G,S,Se,P         |   58 | farine               | g      | Cereale            | NULL |
|    1 | agneau a l'anglaise | G,S,Se,P         |   77 | huile d'olive        | cs     | Legume             | NULL |
+------+---------------------+------------------+------+----------------------+--------+--------------------+------+
*/
