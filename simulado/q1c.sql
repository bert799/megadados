# Construa uma tabela temporária que liste todas as pizzas 
# e a quantidade de ingredientes veganos nela (ou seja, onde o tipo é “vegana”)

USE XPTO;

DROP TABLE IF EXISTS QtdeVegano;

CREATE TEMPORARY TABLE QtdeVegano
	SELECT
		pizza, COUNT(ingrediente) as qtde_vegano
	FROM
		IngredientePizza
		INNER JOIN IngredienteTipo USING (ingrediente)
	WHERE
		tipo = "vegana"
	GROUP BY
		pizza;

SELECT * FROM QtdeVegano;