WITH data_table AS
(
	SELECT product."year", product.value AS price_value, wages.value AS wage_value,
	(100 * (product.value - LAG(product.value) OVER (ORDER BY product."year"))/LAG(product.value) OVER (ORDER BY product."year")) AS price_growth,
	(100 * (wages.value - LAG(wages.value) OVER (ORDER BY product."year"))/LAG(wages.value) OVER (ORDER BY product."year")) AS wage_growth
	FROM 
	(
		SELECT "year", AVG(value) AS value FROM t_matej_novotny_project_sql_primary_final WHERE category_outer = 'cena' GROUP BY "year"
	) AS product
	JOIN 
	(
		SELECT "year", AVG(value) AS value FROM t_matej_novotny_project_sql_primary_final WHERE category_outer = 'plat' GROUP BY "year"
	) AS wages
	ON (product."year" = wages."year")
)
SELECT data_table."year", ROUND(data_table.price_growth::NUMERIC,2) AS price_growth, ROUND(data_table.wage_growth::NUMERIC,2) AS wage_growth, ROUND(gdp_table.gdp_growth::NUMERIC,2) AS gdp_growth
FROM data_table 
JOIN t_matej_novotny_project_sql_secondary_final gdp_table 
ON data_table."year" = gdp_table."year" 
WHERE gdp_table.country = 'Czech Republic';
