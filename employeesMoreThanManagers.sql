# Write your MySQL query statement below
# https://leetcode.com/problems/employees-earning-more-than-their-managers/submissions/
SELECT v1.name as Employee
FROM Employee as v1
Join Employee as V2
ON v1.ManagerID = v2.ID
WHERE v1.Salary > v2.Salary