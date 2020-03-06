# Write your MySQL query statement below
#https://leetcode.com/problems/duplicate-emails/
SELECT DISTINCT v1.email as email  
From Person as v1,Person as v2
WHERE v1.id != v2.id and v1.email = v2.email