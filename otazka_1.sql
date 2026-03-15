SELECT 	data_category_inner, data_value, data_year, (data_value - LAG(data_value) OVER (PARTITION BY data_category_inner ORDER BY data_year)) AS difference
FROM t_matej_novotny_project_sql_primary_final WHERE data_category_outer = '0' AND (
data_year = (SELECT MIN(data_year) FROM t_matej_novotny_project_sql_primary_final) OR
data_year = (SELECT MAX(data_year) FROM t_matej_novotny_project_sql_primary_final)
) ORDER BY data_category_inner, data_year;