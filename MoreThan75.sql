#https://www.hackerrank.com/challenges/more-than-75-marks/problem
SELECT NAME
FROM STUDENTS
WHERE Marks > 75
ORDER BY SUBSTRING(NAME,LENGTH(NAME) - 2, LENGTH(NAME)) ASC, ID ASC