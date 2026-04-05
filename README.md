# SQL projekt

## _Popis_
Tento projekt se zabývá vývojem platů a cen v České Republice v období let 2006-2018. Klade si za cíl vytvořit tabulku vhodně reprezentující tato data a zodpovědět na zadané otázky.


## _Popis dat_

### Primární tabulka
Primární tabulka obsahuje záznamy o hodnotách platů v různých průmyslových odvětví a cenách různých potravin v rozmezí let 2006 - 2018.
##### Struktura
Tabulka obsahuje data organizovaná v následujících sloupcích
- **year** - rok, ze kterého data pocházejí
- **value** - číselná hodnota záznamu
- **category_outer** - hodnota určuje, jestli se jedná o záznam o platech nebo cenách potravin
- **category_inner** - hodnota dále dělí data do dalších kategorií - kterou konkrétní potravinu nebo pracovní odvětví záznam reprezentuje

##### Jednotky - platy
Číselná hodnota záznamu je vždy uváděna v korunách českých.

##### Jednotky - ceny
| Kód kategorie | jednotka |
| ------ | ------ |
Rýže loupaná dlouhozrnná |	1.0	kg
Pšeničná mouka hladká |	1.0	kg
Chléb konzumní kmínový|	1.0	kg
Pečivo pšeničné bílé|	1.0	kg
Těstoviny vaječné|	1.0	kg
Hovězí maso zadní bez kosti|	1.0	kg
Vepřová pečeně s kostí|	1.0	kg
Kuřata kuchaná celá	|1.0	kg
Šunkový salám|	1.0	kg
Mléko polotučné pasterované	|1.0	l
Jogurt bílý netučný|	150.0	g
Eidamská cihla|	1.0	kg
Vejce slepičí čerstvá|	10.0	ks
Máslo|	1.0	kg
Rostlinný roztíratelný tuk|	1.0	kg
Pomeranče|	1.0	kg
Banány žluté|	1.0	kg
Jablka konzumní|	1.0	kg
Rajská jablka červená kulatá|	1.0	kg
Papriky|	1.0	kg
Mrkev|	1.0	kg
Konzumní brambory|	1.0	kg
Cukr krystalový|	1.0	kg
Přírodní minerální voda uhličitá|	1.0	l
Jakostní víno bílé|	0.75	l
Pivo výčepní, světlé, lahvové|	0.5	l
Kapr živý|	1.0	kg


### Sekundární tabulka
Sekundární tabulka obsahuje informace o hrubém domácím produktu, populaci a GINI koeficientu pro evropské státy v rozmezí let 2006-2018.
##### Struktura
Tabulka obsahuje data organizovaná v následujících sloupcích
- **year** - rok, ze kterého data pocházejí
- **country** - stát, ke kterému se data vztahují
- **gdp** - Hrubý domácí produkt
- **gdp_growth** - pomocný sloupec určující nárůst HDP oproti předchozímu roku v procentech
- **population** - populace
- **gini** - GINI koeficient

##### Chybějící hodnoty
Dataset, ze kterého tabulka vychází, bohužel obsahuje chybějící hodnoty - nejčastěji GINI koeficienty, ale v některých případech i hodnoty HDP. Pro účely zodpovězení zadaných otázek ale data dostačují, protože záznamy týkající se České Republiky jsou kompletní.

## _Otázky_

## Otázka č.1
Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

Není pravidlem, že mzdy ve všech odvětvích z roku na rok pouze rostou. V datech se vyskytuje celkem 23 případů, že mzda oproti předchozímu roku klesla.
Nejčastější je pokles mzdy u odvětví "Těžba a dobývání". Stalo se tak v letech 2009, 2013, 2014 a 2016.
Rok se největším počtem odvětví, která zaznamenala pokles mzdy, je rok 2013 - celkem 11 odvětví, u ostatních let se hodnoty pohybují v rámci jednotek.

## Otázka č.2
Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
| Rok | produkt | množství |
| ------ | ------ | ------ |
2006	|Chléb|	1287.18
2006|	Mléko|	1437.44
2018|	Chléb|	1342.33
2018|	Mléko |	1641.64

Množství chleba a mléka, které je možné zakoupit za průměrnou roční mzdu, během srovnatelného období vzrostlo - mléko i chleba tedy zdražují pomaleji než rostou platy.

## Otázka č.3
Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)? 

Nejpomaleji zdražují banány - během let 2006-2018 jejich cena vzrostla o 7,39%.
Čistě pro porovnání, druhou nejpomaleji zdražující potravinou v datasetu je vepřová pečeně - zdražila o 11,1%
Nejvíce naopak zdražuje máslo - nárůst o 98,38%, cena se tedy téměř zdvojnásobila.
Dvě potraviny za měřené období naopak výrazně zlevnily - krystalový cukr (-27,51%) a rajčata (-23,07%)


## Otázka č.4
Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?

Procentuální nárůst cen potravin nebyl v žádném roce o 10% vyšší než nárůst mezd. V nadpoloviční většině zkoumaných let byl nárůst cen nižší než nárůst mezd - s výjimkou období 2011-2013 a roků 2015 a 2017. Ani v těchto letech však rozdíl nepřesáhl 10%.
Extrémy se nachází v letech 2009, kde průměr cen klesl a nárůst cen je tedy o 9,57% nižší než růst mezd, a 2013, kde naopak průměrná mzda klesla a nárůst cen je byl o 6,65% vyšší než růst mezd. Toto odpovídá datům k první otázce, podle kterých byl rok 2013 rokem s nejvyšším počtem odvětví, která zaznamenala pokles v průměrné mzdě.

## Otázka č.5
Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?

Vliv růstu a poklesu HDP ČR na růst a pokles cen potravin a mezd se dá nejnázorněji ukázat na následujícím grafu.

![graf.png](https://www.dropbox.com/scl/fi/ftqmlk0zqp4393fugmhpy/graf.png?rlkey=roeigqtjxcoktad5224651tl1&dl=0&raw=1)

Z grafu je vidět, že změny v růstu/poklesu HDP se projeví na růstu/poklesu cen a mezd.

- Výraznější změny HDP se projeví výrazněji a rychleji
- Ceny a mzdy reagují s určitou "setrvačností" - např. po rychlém nárůstu HDP dále stoupají, i když HDP už začíná klesat.
- Ceny reagují mnohem výrazněji než mzdy


## _Závěr_

Výsledkem projektu jsou dvě tabulky znározňující vývoj platů a cen v ČR, a vývoj GDP v rámci evropských států, pro období 2006-2018, sada SQL dotazů a odpovědi na zadané otázky.
