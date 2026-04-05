CREATE TABLE t_matej_novotny_project_SQL_primary_final AS
(
WITH price_table AS (
SELECT EXTRACT("year" from date_from) AS "year", AVG(value) AS value, name AS category_inner, 'cena' AS category_outer FROM czechia_price cpr INNER JOIN czechia_price_category cpc ON cpr.category_code = cpc.code  WHERE region_code IS NULL GROUP BY "year", category_inner
)
, payroll_table AS(
SELECT payroll_year AS "year", AVG(value) AS value, name AS category_inner, 'plat' AS category_outer from czechia_payroll cpa INNER JOIN czechia_payroll_industry_branch cpib ON cpa.industry_branch_code = cpib.code  WHERE value_type_code = '5958' AND industry_branch_code IS NOT NULL AND payroll_year IN (SELECT "year" FROM price_table) GROUP BY "year", category_inner 
)
SELECT * FROM price_table
UNION
SELECT * FROM payroll_table ORDER BY "year", category_outer, category_inner
);