CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N=N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT
    IFNULL(
    (SELECT DISTINCT Salary
    FROM Employee
    ORDER BY Salary DESC
    LIMIT 1 OFFSET N),
    NULL) 
      
  );
END
#https://leetcode.com/problems/nth-highest-salary/submissions/