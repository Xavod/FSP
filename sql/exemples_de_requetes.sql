/* TABLE GLOSSAIRE
+----+--------------------+---------------------------------------
| id | abreviation        | description
+----+--------------------+---------------------------------------
|  1 | G                  | contient du gluten
|  2 | L                  | contient des produits laitiers
|  3 | V                  | convient aux végétariens
|  4 | C                  | contient des crustacés
|  5 | A                  | contient des arachides
|  6 | S                  | contient du soja
|  7 | F                  | contient des fruits à coques
|  8 | M                  | contient de la moutarde
|  9 | O                  | contient de l'oeuf
| 10 | Se                 | contient du sésame
*/


-- Retourne la liste des ingredients pour la Recette d'id 33
select * from Ingredient where id in (select I_id from Recette where P_id = 33);

/*
+-----+-------------------+---------+--------------------+--------+
| id  | I_nom             | I_unite | I_groupe           | I_kcal |
+-----+-------------------+---------+--------------------+--------+
|  15 | brocoli           | g       | Legume             |   NULL |
|  78 | huile de noix     | cs      | Matiere Grasse     |   NULL |
|  95 | noisettes         | cs      | Fruit et Fruit sec |   NULL |
| 147 | tomates confites  | NULL    | Legume             |   NULL |
| 154 | vinaigre de cidre | cs      | Sauce et condiment |   NULL |
+-----+-------------------+---------+--------------------+--------+
*/

-- Retourne les plats non vegetarien et sans gluten
select * from NomDePlat where regime not like "%v%" and regime not like "%g%";

/*
+----+------------------------------------------+--------+
| id | nom_du_plat                              | regime |
+----+------------------------------------------+--------+
|  2 | aiguillettes de poulet aux legumes       | O,L    |
|  3 | aubergines farcies aux legumes           | L      |
|  9 | carottes au curry et aux petites lardons | L      |
| 10 | clafouti brocoli et tomates cerises      | L,O    |
| 14 | courgettes farcies                       | L      |
| 20 | gratin de potimarron                     | L,O    |
| 21 | loup au fenouil                          | P      |
| 22 | omelette a la salicorne                  | O,L    |
| 23 | papillotte de poisson a l'avocat         | P      |
| 25 | parmentier de patate douce au poisson    | L,P    |
| 36 | salade tomate thon basilique             | O,P    |
| 37 | salade tomates feta poivrons             | L      |
| 46 | thon au fenouil et aux tomates           | P      |
+----+------------------------------------------+--------+
*/

-- Retourne les plats non vegetariens et sans poisson ni fruits de mer
select * from NomDePlat 
where id in (
	select P_id from Recette
	where I_id in (
		select id from Ingredient 
		where I_groupe like "%VB%" or I_groupe like "%VR%"
		)
	)
	and regime not like "%V%" 
	and regime not like "%G%";
	
/* avec gluten
+----+------------------------------------------+----------+
| id | nom_du_plat                              | regime   |
+----+------------------------------------------+----------+
|  1 | agneau a l'anglaise                      | G,S,Se,P |
|  2 | aiguillettes de poulet aux legumes       | O,L      |
|  3 | aubergines farcies aux legumes           | L        |
|  4 | baked potatoes au four                   | L,V      |
|  9 | carottes au curry et aux petites lardons | L        |
| 10 | clafouti brocoli et tomates cerises      | L,O      |
| 13 | cotes de veau au riz et aux aubergines   | G        |
| 14 | courgettes farcies                       | L        |
| 18 | Endives au jambon                        | L,G      |
| 20 | gratin de potimarron                     | L,O      |
| 21 | loup au fenouil                          | P        |
| 22 | omelette a la salicorne                  | O,L      |
| 23 | papillotte de poisson a l'avocat         | P        |
| 25 | parmentier de patate douce au poisson    | L,P      |
| 28 | quiche lorraine                          | G,L,O    |
| 30 | ragout boeuf carottes                    | G        |
| 31 | risotto aux legume et jambon             | S,G      |
| 32 | salade de betteraves                     | V        |
| 33 | salade de brocolis aux tomates cerises   | V,F      |
| 36 | salade tomate thon basilique             | O,P      |
| 37 | salade tomates feta poivrons             | L        |
| 39 | spaghetti aux blettes                    | G,L      |
| 40 | spaghetti carbonara                      | L,G,O    |
| 43 | tagliatelles au poulet                   | G,A,S    |
| 45 | tarte au poulet fenouil et poireau       | G,O,L    |
| 46 | thon au fenouil et aux tomates           | P        |
| 47 | tian aux legumes                         | V,L      |
| 48 | tourte a la choucroute                   | L,G      |
+----+------------------------------------------+----------+

sans gluten
+----+------------------------------------------+--------+
| id | nom_du_plat                              | regime |
+----+------------------------------------------+--------+
|  2 | aiguillettes de poulet aux legumes       | O,L    |
|  3 | aubergines farcies aux legumes           | L      |
|  9 | carottes au curry et aux petites lardons | L      |
| 10 | clafouti brocoli et tomates cerises      | L,O    |
| 14 | courgettes farcies                       | L      |
| 20 | gratin de potimarron                     | L,O    |
| 37 | salade tomates feta poivrons             | L      |
+----+------------------------------------------+--------+
*/	

-- Creer une vue globale des ingredients et des noms de plat
drop view if exists  v_globale;
CREATE VIEW `v_globale` AS 
select 
    `nomdeplat`.`id` AS `R_id`,
    `nomdeplat`.`nom_du_plat` AS `Recettes`,
    `nomdeplat`.`regime` AS `Regimes`,
    `ingredient`.`id` AS `I_id`,
    `ingredient`.`I_nom` AS `Ingredients`,
    `recette`.`R_ingr_qtt` AS `Qtt`,
    `ingredient`.`I_unite` AS `Unites`,
    `ingredient`.`I_groupe` AS `Groupes`,
    `recette`.`R_nbr_pers` AS `Pers`,
    `recette`.`R_tps_prepa` AS `Prepa`,
    `recette`.`R_tps_cuisson` AS `Cuisson`,
    `ingredient`.`I_kcal` AS `kcal` 
from `nomdeplat`, `ingredient`, `recette` 
where 
    `ingredient`.`id` = `recette`.`I_id` and
    `nomdeplat`.`id` = `recette`.`P_id`;

select * from  v_globale limit 20;
	

-- Retourne les plats non vegetariens et sans poisson ni fruits de mer via la vue cette fois:
select 
	R_id, Recettes, Regimes_speciaux 
from 
	v_globale 
where 
	Regimes_speciaux not like "%v%" 
and Groupes like "%VB%" 
or  Groupes like "%VR%" 
group by R_id;

/* Resultat plus probant: pas de 'Tian aux legumes' dans ce resultat-ci
+------------------------------------------+
| Recettes                                 |
+------------------------------------------+
| agneau a l'anglaise                      |
| aiguillettes de poulet aux legumes       |
| aubergines farcies aux legumes           |
| boeuf bourgignon                         |
| boeuf braise aux carottes                |
| boeuf braise aux carottes                |
| boeuf carottes                           |
| boeuf carottes                           |
| boeuf carottes                           |
| carottes au curry et aux petites lardons |
| carottes au curry et aux petites lardons |
| clafouti brocoli et tomates cerises      |
| cotes de boeuf et aubergines grillees    |
| cotes de veau au riz et aux aubergines   |
| courgettes farcies                       |
| couscous poulet merguez                  |
| couscous poulet merguez                  |
| Endives au jambon                        |
| gratin de potimarron                     |
| quiche lorraine                          |
| quiche lorraine                          |
| ragout boeuf carottes                    |
| ragout boeuf carottes                    |
| risotto aux legume et jambon             |
| salade tomates feta poivrons             |
| spaghetti aux blettes                    |
| spaghetti carbonara                      |
| tagliatelles au poulet                   |
| tagliatelles au poulet                   |
| tarte au poulet fenouil et poireau       |
| tourte a la choucroute                   |
+------------------------------------------+
*/


-- sortir les ingredients: nom, qtt et unite
select 
	ingredient.id, 
	ingredient.I_nom as nom, 
	recette.R_ingr_qtt,
	ingredient.I_unite as unit 
from 
	recette, ingredient 
where 
	recette.I_id = ingredient.id 
group by nom;

/*
+-----+--------------------------+----------+------------+
| id  | nom                      | unit     | R_ingr_qtt |
+-----+--------------------------+----------+------------+
|   1 | aubergine                | NULL     |       1.00 |
|   2 | aubergines               | NULL     |       1.00 |
|   3 | avocats                  | NULL     |       2.00 |
|   4 | basilic                  | cs       |       2.00 |
|   6 | betteraves cuites        | g        |     250.00 |
*/	
	
	