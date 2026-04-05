SELECT job_field, average_wage, "year", wage_growth from(
	SELECT 	category_inner AS job_field, ROUND(value::NUMERIC,2) AS average_wage, "year" AS "year", ROUND((value - LAG(value) OVER (PARTITION BY category_inner ORDER BY "year"))::NUMERIC,2) AS wage_growth
	FROM t_matej_novotny_project_sql_primary_final
	WHERE category_outer = 'plat'
	ORDER BY category_inner, "year" 
) WHERE wage_growth < 0