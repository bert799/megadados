USE XPTO;

DROP TABLE IF EXISTS QtdeTotal;

CREATE TEMPORARY TABLE QtdeTotal
	SELECT
		pizza, COUNT(ingrediente) as qtde_total
	FROM
		IngredientePizza
	GROUP BY
		pizza;

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

SELECT 
	pizza
FROM
	QtdeTotal
    INNER JOIN QtdeVegano USING (pizza)
WHERE
	qtde_total = qtde_vegano;