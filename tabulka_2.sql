CREATE TABLE t_matej_novotny_project_SQL_secondary_final AS
(
SELECT "year", country, GDP as gdp_value, (100*(GDP-LAG(GDP) OVER (PARTITION BY country ORDER BY "year"))/LAG(GDP) OVER (PARTITION BY country ORDER BY "year")) AS gdp_growth, population, gini FROM economies WHERE "year" IN (
SELECT DISTINCT "year" FROM t_matej_novotny_project_sql_primary_final 
) AND country IN (
SELECT country FROM countries WHERE continent = 'Europe'
) ORDER BY country, "year"
);
