# Write your MySQL query statement below
SELECT
    class
FROM
    (SELECT 
     class, COUNT(DISTINCT student) as num
    FROM
        courses
    GROUP BY class) as temp_table
WHERE
    num >= 5