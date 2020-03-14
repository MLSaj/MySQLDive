#https://www.hackerrank.com/challenges/weather-observation-station-18/problem
SELECT
ROUND(ABS(P.a - P.c) + Abs(P.b-P.d),4)
FROM
(select min(LAT_N) as a ,min(LONG_W) as b, max(LAT_N) as c, max(LONG_W) as d
FROM STATION) AS P