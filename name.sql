1. Find the country that start with Y

SELECT name FROM world
  WHERE name LIKE 'Y%'

name
Yemen

2. Find the countries that end with y

SELECT name FROM world
  WHERE name LIKE '%y'

name
Turkey
Germany
Hungary
Italy
Norway
Vatican City
Paraguay
Uruguay

3. Find the countries that contain the letter x

SELECT name FROM world
  WHERE name LIKE '%x%'


name
Luxembourg
Mexico

4. Find the countries that end with land

SELECT name FROM world
  WHERE name LIKE '%land'

name
Swaziland
Thailand
Finland
Iceland
Ireland
Poland
Switzerland
New Zealand

5. Find the countries that start with C and end with ia

SELECT name FROM world
  WHERE name LIKE 'C%ia'

name
Cambodia
Colombia
Croatia

6. Find the country that has oo in the name

SELECT name FROM world
  WHERE name LIKE '%oo%'

name
Cameroon

7. Find the countries that have three or more a in the name

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

name
Central African Republic
Equatorial Guinea
Madagascar
Mauritania
Tanzania
Afghanistan
Azerbaijan
Kazakhstan
Malaysia
Saudi Arabia
United Arab Emirates
Antigua and Barbuda
Bahamas
Jamaica
Trinidad and Tobago
Albania
Bosnia and Herzegovina
Canada
Guatemala
Nicaragua
Panama
Australia
Marshall Islands
Micronesia, Federated States of
Papua New Guinea
Paraguay
Saint Vincent and the Grenadines

8. Find the countries that have "t" as the second character.

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

name
Ethiopia
Italy

9. Find the countries that have two "o" characters separated by two others.

SELECT name FROM world
 WHERE name LIKE '%o__o%'


name
Congo, Democratic Republic of
Congo, Republic of
Lesotho
Morocco
Sao Tomé and Príncipe
Mongolia


10. Find the countries that have exactly four characters.

SELECT name FROM world
 WHERE name LIKE '____'

name
Chad
Mali
Togo
Iran
Iraq
Laos
Oman
Cuba
Fiji
Peru

11. Find the country where the name is the capital city.

SELECT name, capital, continent
  FROM world
 WHERE name LIKE capital

name	capital	continent
Djibouti	Djibouti	Africa
Luxembourg	Luxembourg	Europe
San Marino	San Marino	Europe
Singapore	Singapore	Asia

12. Find the country where the capital is the country plus "City".

SELECT name
  FROM world
 WHERE capital LIKE concat(name, ' City')

name
Guatemala
Kuwait
Mexico
Panama

13. Find the capital and the name where the capital includes the name of the country.

SELECT capital, name
  FROM world
 WHERE capital LIKE concat('%',name,'%')

capital	name
Andorra la Vella	Andorra
Djibouti	Djibouti
Guatemala City	Guatemala
Kuwait City	Kuwait
Luxembourg	Luxembourg
Mexico City	Mexico
Monaco-Ville	Monaco
Panama City	Panama
San Marino	San Marino
Singapore	Singapore

14. Find the capital and the name where the capital is an extension of name of the country.

SELECT name, capital
  FROM world
 WHERE capital LIKE concat(name,'_%')

name	capital
Andorra	Andorra la Vella
Guatemala	Guatemala City
Kuwait	Kuwait City
Mexico	Mexico City
Monaco	Monaco-Ville
Panama	Panama City

15. Show the name and the extension where the capital is an extension of name of the country.

SELECT name, REPLACE(capital, name,'')
  FROM world
 WHERE capital LIKE concat(name,'_%')

name	REPLACE(capit..
Andorra	la Vella
Guatemala	City
Kuwait	City
Mexico	City
Monaco	-Ville
Panama	City
