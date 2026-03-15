WITH data_table AS(
	SELECT food.data_year, food.data_category_inner, food.data_value, wages.data_value AS data_wages
	FROM t_matej_novotny_project_sql_primary_final AS food 
	JOIN
	(
		SELECT data_year, AVG(data_value) AS data_value FROM t_matej_novotny_project_sql_primary_final WHERE data_category_outer = '0' GROUP BY data_year
	) AS wages
	ON (food.data_year = wages.data_year)
	WHERE (food.data_category_inner = '114201' OR food.data_category_inner = '111301') AND (
	food.data_year = (SELECT MIN(data_year) FROM t_matej_novotny_project_sql_primary_final) OR
	food.data_year = (SELECT MAX(data_year) FROM t_matej_novotny_project_sql_primary_final))
)
SELECT data_year, CASE WHEN data_category_inner = '114201' THEN 'mleko' ELSE 'chleba' END AS product, data_value, data_wages, (data_wages/data_value) AS quantity
FROM data_table