# SQL projekt
## _Průvodní listina_

## Otázka č.1
Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
| Kód odvětví | Nárůst v rozmezí let 2006-2018 (Kč) |
| ------ | ------ |
|A|	10671.625|
|B|	11948.75|
|C|	13388.625|
|D|	17334.375|
|E|	10008.0|
F|	10247.125|
|G|	11539.625|
|H|	10172.375|
|I|	7379.875|
|J|	20733.75|
|K|	14421.25|
|L|	9187.875|
|M|	14198.5|
|N|	6630.5|
|O|	12945.25|
|P|	10631.5|
|Q|	14238.875|
|R|	11427.875|
|S|	6753.625|

Jak je vidět, všechna období během let 2006-2018 zaznamenala pozitivní nárůst v platech.

## Otázka č.2
Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
| Rok | Potravina | Množství (zadané jednotky)|
| ------ | ------ | ------ |
2006	|chleba|	1287.18
2006  |	mléko|		1437.44
2018|	chleba|	1342.33
2018|	mléko	|	1641.64

Množství chleba a mléka, které je možné zakoupit za průměrnou roční mzdu, během srovnatelného období vzrostlo.

## Otázka č.3
Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)? 

| Kód kategorie| Nárůst 2006-2018 (%) |
| ------ | ------ |
111101 |	69.93
111201|	54.40
111301|	50.33
111303|	13.57
111602|	83.46
112101|	34.22
112201|	11.10
112401|	46.00
112704|	24.07
114201|	37.27
114401|	57.35
114501|	28.40
114701|	63.41
115101|	98.38
115201|	43.12
116101|	47.57
116103|	7.39
116104|	17.78
117101|	-23.07
117103|	71.29
117106|	55.83
117401|	24.88
118101|	-27.51
122102|	12.46
2000001|	34.77
213201	|39.79

Nejpomaleji zdražují banány (kód 116103) - během let 2006-2018 vzrostla o 7,39%. Za stejné období další dvě potraviny dokonce výrazně zlevnily - krystalový cukr (118101) a rajčata (117101)


## Otázka č.4
Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?

|Rok| Rozdíl růstu cen potravin a mezd v procentech |
| ------ | ------ |
2007|	-0.075
2008|	-1.69
2009|	-9.57
2010|	-0.01
2011|	1.05
2012|	3.70
2013|	6.65
2014|	-1.82
2015|	0.77
2016|	-4.84
2017|	3.34
2018|	-5.46

Procentuální nárůst cen potravin nebyl v žádném roce o 10% vyšší než nárůst mezd. V nadpoloviční většině zkoumaných let byl nárůst cen nižší než nárůst mezd - s výjimkou období 2011-2013 a roků 2015 a 2017. Ani v těchto letech však rozdíl nepřesáhl 10%.

## Otázka č.5
Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?

Vliv růstu a poklesu HDP ČR na růst a pokles cen potravin a mezd se dá nejnázorněji ukázat na následujícím grafu.

![graf.png](https://www.dropbox.com/scl/fi/ftqmlk0zqp4393fugmhpy/graf.png?rlkey=roeigqtjxcoktad5224651tl1&dl=0&raw=1)

Z grafu je vidět, že změny v růstu/poklesu HDP se projeví na růstu/poklesu cen a mezd.

- Výraznější změny HDP se projeví výrazněji a rychleji
- Ceny a mzdy reagují s určitou "setrvačností" - např. po rychlém nárůstu HDP dále stoupají, i když HDP už začíná klesat.
- Ceny reagují mnohem výrazněji než mzdy