WITH data_table AS (
	SELECT "year" AS "year", category_inner AS "product", value AS "product_quantity",
	(value - LAG(value) OVER (PARTITION BY category_inner ORDER BY "year")) AS difference,
	(LAG(value) OVER (PARTITION BY category_inner ORDER BY "year")) AS prev
	FROM t_matej_novotny_project_sql_primary_final WHERE category_outer = 'cena'
	AND
	(
		"year" = (SELECT MIN("year") FROM t_matej_novotny_project_sql_primary_final) OR
		"year" = (SELECT MAX("year") FROM t_matej_novotny_project_sql_primary_final)
	)
	ORDER BY category_inner, "year"
)
SELECT "year", product, ROUND(product_quantity::NUMERIC,2) AS quantity, ROUND((100 * difference/prev)::NUMERIC,2) AS percentage 
FROM data_table WHERE difference IS NOT NULL;