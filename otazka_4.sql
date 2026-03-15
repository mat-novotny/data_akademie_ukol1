WITH data_table AS (SELECT food.data_year, food.data_value AS food_value, wages.data_value AS wages_value,
(100*(food.data_value - LAG(food.data_value) OVER (ORDER BY food.data_year))/LAG(food.data_value) OVER (ORDER BY food.data_year)) AS food_increase,
(100*(wages.data_value - LAG(wages.data_value) OVER (ORDER BY food.data_year))/LAG(wages.data_value) OVER (ORDER BY food.data_year)) AS wages_increase
FROM 
(
	SELECT data_year, SUM(data_value) AS data_value FROM t_matej_novotny_project_sql_primary_final WHERE data_category_outer = '1' GROUP BY data_year
) AS food
JOIN 
(
	SELECT data_year, SUM(data_value) AS data_value FROM t_matej_novotny_project_sql_primary_final WHERE data_category_outer = '0' GROUP BY data_year
) 
AS wages
ON (food.data_year = wages.data_year))
SELECT data_year, food_value, wages_value, food_increase, wages_increase, (food_increase-wages_increase) AS food_over_wages FROM data_table