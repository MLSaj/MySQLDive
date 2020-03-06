# Write your MySQL query statement below
#https://leetcode.com/problems/department-highest-salary/submissions/
SELECT  Department.Name as 'Department',Employee.Name AS 'Employee',Salary
FROM Employee
JOIN Department ON Employee.DepartmentID = Department.ID
WHERE 
(Employee.DepartmentID,Salary) IN
(SELECT
    DepartmentId, MAX(Salary)
FROM
    Employee
GROUP BY DepartmentId
)