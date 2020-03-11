/*
Enter your query here.
*/

#https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

SELECT w.id, wp.age, w.coins_needed, w.power
FROM Wands AS w JOIN Wands_Property AS wp on (w.code = wp.code)
WHERE wp.is_evil=0 AND w.coins_needed = (SELECT min(coins_needed) 
                                         FROM Wands AS w1 JOIN Wands_Property AS wp1 ON (w1.code = wp1.code)
                                         GROUP BY w1.power, wp1.age
                                         HAVING w1.power = w.power AND wp1.age = wp.age) 
ORDER BY w.power DESC, wp.age DESC