1. 

SELECT name, continent, population FROM world


name	continent	population
Afghanistan	Asia	25500100
Albania	Europe	2821977
Algeria	Africa	38700000
Andorra	Europe	76098
Angola	Africa	19183590
Antigua and Barbuda	Caribbean	86295
Argentina	South America	42669500
Armenia	Eurasia	3017400
Australia	Oceania	23545500
Austria	Europe	8504850
Azerbaijan	Asia	9477100
Bahamas	Caribbean	351461
Bahrain	Asia	1234571
Bangladesh	Asia	156557000
Barbados	Caribbean	285000
Belarus	Europe	9467000
Belgium	Europe	11198638
Belize	North America	349728
Benin	Africa	9988068
Bhutan	Asia	749090
Bolivia	South America	10027254
Bosnia and Herzegovina	Europe	3791622
Botswana	Africa	2024904
Brazil	South America	202794000
Brunei	Asia	393162
Bulgaria	Europe	7245677
Burkina Faso	Africa	17322796
Burundi	Africa	9420248
Cambodia	Asia	15184116
Cameroon	Africa	20386799
Canada	North America	35427524
Cape Verde	Africa	491875
Central African Republic	Africa	4709000
Chad	Africa	13211000
Chile	South America	17773000
China	Asia	1365370000
Colombia	South America	47662000
Comoros	Africa	743798
Congo, Democratic Republic of	Africa	69360000
Congo, Republic of	Africa	4559000
Costa Rica	North America	4667096
Côte d'Ivoire	Africa	null
Croatia	Europe	4290612
Cuba	Caribbean	11167325
Cyprus	Asia	865878
Czech Republic	Europe	10517400
Denmark	Europe	5634437
Djibouti	Africa	886000
Dominica	Caribbean	71293
Dominican Republic	Caribbean	9445281
Results truncated. Only the first 50 rows have been shown.

2.

SELECT name FROM world
WHERE population>200000000

name
Brazil
China
India
Indonesia
United States

3. Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population FROM world
WHERE population>200000000

name	gdp/population
Brazil	11115.2648
China	6121.7106
India	1504.7931
Indonesia	3482.0205
United States	51032.2945

4. Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

SELECT name, population/1000000 FROM world
WHERE continent = 'South America'

name	population/10..
Argentina	42.6695
Bolivia		10.0273
Brazil		202.7940
Chile		17.7730
Colombia	47.6620
Ecuador		15.7742
Guyana		0.7849
Paraguay	6.7834
Peru		30.4751
Saint Vincent and the Grenadines	0.1090
Suriname	0.5342
Uruguay	3.2863
Venezuela	28.9461

5. Show the name and population for France, Germany, Italy

SELECT name, population FROM world
WHERE name = 'France' OR name = 'Germany' OR name = 'Italy'

name	population
France	65906000
Germany	80716000
Italy	60782668

6. Show the countries which have a name that includes the word 'United'

SELECT name FROM world
WHERE name LIKE '%United%'

name
United Arab Emirates
United Kingdom
United States

7. Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population, area FROM world
WHERE Population>250000000 OR area>3000000

name		population	area
Australia	23545500	7692024
Brazil		202794000	8515767
Canada		35427524	9984670
China		1365370000	9596961
India		1246160000	3166414
Indonesia	252164800	1904569
Russia		146000000	17125242
United States	318320000	9826675

8. Exclusive OR (XOR). Show the countries that are big by area or big by population but not both. Show name, population and area.

SELECT name, population, area FROM world
WHERE Population>250000000 XOR area>3000000

name		population	area
Australia	23545500	7692024
Brazil		202794000	8515767
Canada		35427524	9984670
Indonesia	252164800	1904569
Russia		146000000	17125242

9. For South America show population in millions and GDP in billions both to 2 decimal places.

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world
WHERE continent LIKE 'South America'

name				ROUND(populat..	ROUND(gdp/100..
Argentina			42.67		477.03
Bolivia				10.03		27.04
Brazil				202.79		2254.11
Chile				17.77		268.31
Colombia			47.66		369.81
Ecuador				15.77		87.50
Guyana				0.78		2.85
Paraguay			6.78		25.94
Peru				30.48		204.68
Saint Vincent and the Grenadine	0.11		0.69
Suriname			0.53		5.01
Uruguay				3.29		49.92
Venezuela			28.95		382.42

10. Show per-capita GDP for the trillion dollar countries to the nearest $1000.

SELECT name, ROUND(gdp/population, -3) FROM world
WHERE gdp > 1000000000000

name		ROUND(gdp/pop..
Australia	66000
Brazil		11000
Canada		45000
China		6000
France		40000
Germany		42000
India		2000
Italy		33000
Japan		47000
Mexico		10000
Russia		14000
South Korea	22000
Spain		28000
United Kingdom	39000
United States	51000

11. Show the name - but substitute Australasia for Oceania - for countries beginning with N.

SELECT name, 
       CASE WHEN continent='Oceania' THEN 'Australasia'
            ELSE continent END
  FROM world
 WHERE name LIKE 'N%'

name		CASE WHEN con..
Namibia		Africa
Nauru		Australasia
Nepal		Asia
Netherlands	Europe
New Zealand	Australasia
Nicaragua	North America
Niger		Africa
Nigeria		Africa
North Korea	Asia
Norway		Europe

12. Show the name and the continent - but substitute Eurasia for Europe and Asia; substitute America - for each country in North America or South America or Caribbean. Show countries beginning with A or B

SELECT name, 
       CASE WHEN continent='Europe' THEN 'Eurasia'
            WHEN continent='Asia' THEN 'Eurasia'
            WHEN continent='North America' THEN 'America'
            WHEN continent='South America' THEN 'America'
            WHEN continent='Caribbean' THEN 'America'
            ELSE continent END
  FROM world
 WHERE name LIKE 'A%' OR name LIKE 'B%'

name	CASE WHEN con..
Afghanistan	Eurasia
Albania	Eurasia
Algeria	Africa
Andorra	Eurasia
Angola	Africa
Antigua and Barbuda	America
Argentina	America
Armenia	Eurasia
Australia	Oceania
Austria	Eurasia
Azerbaijan	Eurasia
Bahamas	America
Bahrain	Eurasia
Bangladesh	Eurasia
Barbados	America
Belarus	Eurasia
Belgium	Eurasia
Belize	America
Benin	Africa
Bhutan	Eurasia
Bolivia	America
Bosnia and Herzegovina	Eurasia
Botswana	Africa
Brazil	America
Brunei	Eurasia
Bulgaria	Eurasia
Burkina Faso	Africa
Burundi	Africa

13. Show the name, the original continent and the new continent of all countries.

Initial Test, Syntax error. 
SELECT name, continent,tld
CASE WHEN continent='Europe' THEN 'Eurasia'
            WHEN continent='Asia' THEN 'Eurasia'
            WHEN continent='North America' THEN 'America'
            WHEN continent='South America' THEN 'America'
            WHEN continent='Caribbean' THEN 'America'
            ELSE continent END
  FROM world

WHERE tld IN ('.ag','.ba','.bb','.ca','.cn','.nz','.ru','.tr','.uk')