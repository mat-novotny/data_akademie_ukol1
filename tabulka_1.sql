CREATE TABLE t_matej_novotny_project_SQL_primary_final AS
(
WITH price_table AS (
SELECT EXTRACT(YEAR from date_from) AS data_year, AVG(value) AS data_value, CAST(category_code AS varchar) AS data_category_inner, '1' AS data_category_outer FROM czechia_price WHERE region_code IS NULL GROUP BY data_year, data_category_inner
)
, payroll_table AS(
SELECT payroll_year AS data_year, AVG(value) AS data_value, industry_branch_code AS data_category_inner, '0' AS data_category_outer from czechia_payroll WHERE value_type_code = '5958' AND industry_branch_code IS NOT NULL AND payroll_year IN (SELECT data_year FROM price_table) GROUP BY data_year, data_category_inner 
)
SELECT * FROM price_table
UNION
SELECT * FROM payroll_table ORDER BY data_year, data_category_outer, data_category_inner
);