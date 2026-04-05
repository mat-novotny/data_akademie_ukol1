WITH data_table AS(
	SELECT product."year", product.category_inner, product.value AS product_price, wages.value AS average_wage
	FROM t_matej_novotny_project_sql_primary_final AS product 
	JOIN
	(
		SELECT "year", AVG(value) AS value
		FROM t_matej_novotny_project_sql_primary_final
		WHERE category_outer = 'plat'
		GROUP BY "year"
	) AS wages
	ON (product."year" = wages."year")
	WHERE
	(
		product.category_inner = 'Mléko polotučné pasterované'
		OR
		product.category_inner = 'Chléb konzumní kmínový'
	)
	AND
	(
		product."year" = (SELECT MIN("year")	FROM t_matej_novotny_project_sql_primary_final)
		OR
		product."year" = (SELECT MAX("year") FROM t_matej_novotny_project_sql_primary_final)
	)
)
SELECT "year", category_inner as product, ROUND(product_price::numeric,2) AS product_price, ROUND(average_wage::numeric,2) AS average_wage, ROUND((average_wage / product_price)::numeric,2) AS product_quantity
FROM data_table