USE XPTO;

SELECT
	pizza, preco - SUM(preco_unitario * quantidade) as lucro
FROM
	Pizza
	INNER JOIN IngredientePizza USING (pizza)
    INNER JOIN Ingrediente USING (ingrediente)
GROUP BY 
	pizza
ORDER BY 
	lucro DESC
LIMIT 3;
