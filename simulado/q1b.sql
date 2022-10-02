# Construa uma tabela temporária que liste todas as pizzas 
# e a quantidade de ingredientes nela.

USE XPTO;

DROP TABLE IF EXISTS QtdeTotal;

CREATE TEMPORARY TABLE QtdeTotal
	SELECT
		pizza, COUNT(ingrediente) as qtde_total
	FROM
		IngredientePizza
	GROUP BY
		pizza;

SELECT * FROM QtdeTotal;