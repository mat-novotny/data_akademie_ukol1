WITH data_table AS (
SELECT data_year, data_category_inner, data_value, 
	(data_value - LAG(data_value) OVER (PARTITION BY data_category_inner ORDER BY data_year)) AS difference,
	(LAG(data_value) OVER (PARTITION BY data_category_inner ORDER BY data_year)) AS prev
	FROM t_matej_novotny_project_sql_primary_final WHERE data_category_outer = '1' AND (
	data_year = (SELECT MIN(data_year) FROM t_matej_novotny_project_sql_primary_final) OR
	data_year = (SELECT MAX(data_year) FROM t_matej_novotny_project_sql_primary_final)
	) ORDER BY data_category_inner, data_year
)
SELECT data_year, data_category_inner, data_value, prev, ((100* difference/prev)) AS percentage 
FROM data_table WHERE difference IS NOT NULL;