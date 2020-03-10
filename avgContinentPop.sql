#https://www.hackerrank.com/challenges/average-population-of-each-continent/

SELECT CityCountry.Continent, round(avg(CityCountry.Population)-0.5)
FROM 
(SELECT City.Name as Name,City.population as Population, Country.Continent as Continent
FROM City Join Country ON CITY.CountryCode= COUNTRY.CODE) AS CityCountry
GROUP BY CityCountry.Continent