# Popis dat

### Primární tabulka
Primární tabulka obsahuje záznamy o hodnotách platů v různých průmyslových odvětví a cenách různých potravin v rozmezí let 2006 - 2018.
##### Struktura
Tabulka obsahuje data organizovaná v následujících sloupcích
- **data_year** - rok, ze kterého data pocházejí
- **data_value** - číselná hodnota záznamu
- **data_category_outer** - hodnota určuje, jestli se jedná o záznam o platech nebo cenách potravin
- **data_category_inner** - hodnota dále dělí data do dalších kategorií - kterou konkrétní potravinu nebo pracovní odvětví záznam reprezentuje

##### Jednotky - platy
Číselná hodnota záznamu je vždy uváděna v korunách českých.

##### Jednotky - ceny
| Kód kategorie | jednotka |
| ------ | ------ |
111101|	1.0	kg
111201|	1.0	kg
111301|	1.0	kg
111303|	1.0	kg
111602|	1.0	kg
112101|	1.0	kg
112201|	1.0	kg
112401|	1.0	kg
112704|	1.0	kg
114201|	1.0	l
114401|	150.0	g
114501|	1.0	kg
114701|	10.0	ks
115101|	1.0	kg
115201|	1.0	kg
116101|	1.0	kg
116103|	1.0	kg
116104|	1.0	kg
117101|	1.0	kg
117103|	1.0	kg
117106|	1.0	kg
117401|	1.0	kg
118101|	1.0	kg
122102|	1.0	l
212101|	0.75	l
213201|	0.5	l
2000001|	1.0	kg


##### Zástupné hodnoty
**data_category_outer**
| Kód kategorie | kategorie |
| ------ | ------ |
|0|Platy
|1|Ceny

**data_category_inner** - platy
| Kód kategorie | kategorie |
| ------ | ------ |
A|	Zemědělství, lesnictví, rybářství
B|	Těžba a dobývání
C|	Zpracovatelský průmysl
D|	Výroba a rozvod elektřiny, plynu, tepla a klimatiz. vzduchu
E|	Zásobování vodou; činnosti související s odpady a sanacemi
F|	Stavebnictví
G|	Velkoobchod a maloobchod; opravy a údržba motorových vozidel
H|	Doprava a skladování
I|	Ubytování, stravování a pohostinství
J|	Informační a komunikační činnosti
K|	Peněžnictví a pojišťovnictví
L|	Činnosti v oblasti nemovitostí
M|	Profesní, vědecké a technické činnosti
N|	Administrativní a podpůrné činnosti
O|	Veřejná správa a obrana; povinné sociální zabezpečení
P|	Vzdělávání
Q|	Zdravotní a sociální péče
R|	Kulturní, zábavní a rekreační činnosti
S|	Ostatní činnosti

**data_category_inner** - ceny
| Kód kategorie | kategorie |
| ------ | ------ |
111101|	Rýže loupaná dlouhozrnná
111201|	Pšeničná mouka hladká
111301|	Chléb konzumní kmínový
111303|	Pečivo pšeničné bílé
111602|	Těstoviny vaječné
112101|	Hovězí maso zadní bez kosti
112201|	Vepřová pečeně s kostí
112401|	Kuřata kuchaná celá
112704|	Šunkový salám
114201|	Mléko polotučné pasterované
114401|	Jogurt bílý netučný
114501|	Eidamská cihla
114701|	Vejce slepičí čerstvá
115101|	Máslo
115201|	Rostlinný roztíratelný tuk
116101|	Pomeranče
116103|	Banány žluté
116104|	Jablka konzumní
117101|	Rajská jablka červená kulatá
117103|	Papriky
117106|	Mrkev
117401|	Konzumní brambory
118101|	Cukr krystalový
122102|	Přírodní minerální voda uhličitá
212101|	Jakostní víno bílé
213201|	Pivo výčepní, světlé, lahvové
2000001|	Kapr živý


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
Dataset, ze kterého tabulka vychází, bohužel obsahuje chybějící hodnoty - nejčastěji GINI koeficienty, ale v některých případech i hodnoty HDP.
