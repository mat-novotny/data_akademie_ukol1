WITH data_table AS (
	SELECT product."year", product.value AS price_value, wages.value AS wage_value,
	(100 * (product.value - LAG(product.value) OVER (ORDER BY product."year"))/LAG(product.value) OVER (ORDER BY product."year")) AS price_growth,
	(100 * (wages.value - LAG(wages.value) OVER (ORDER BY product."year"))/LAG(wages.value) OVER (ORDER BY product."year")) AS wage_growth
	FROM 
	(
		SELECT "year", SUM(value) AS value FROM t_matej_novotny_project_sql_primary_final WHERE category_outer = 'cena' GROUP BY "year"
	) AS product
	JOIN 
	(
		SELECT "year", SUM(value) AS value FROM t_matej_novotny_project_sql_primary_final WHERE category_outer = 'plat' GROUP BY "year"
	) AS wages
	ON (product."year" = wages."year")
)
SELECT "year", ROUND(price_growth::NUMERIC,2) AS price_growth, ROUND(wage_growth::NUMERIC,2) AS wage_growth, ROUND((price_growth-wage_growth)::NUMERIC,2) AS product_over_wages FROM data_table