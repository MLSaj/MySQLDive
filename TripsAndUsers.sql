# Write your MySQL query statement below
#https://leetcode.com/problems/trips-and-users/

SELECT Request_At as Day,ROUND(Count(IF(Status != 'completed',TRUE,NULL))
                              /COUNT(*), 2) As 'Cancellation Rate'
FROM Trips
WHERE (Request_at BETWEEN '2013-10-01' AND '2013-10-03') 
AND Client_ID NOT IN (SELECT Users_ID FROM Users where Banned ="Yes")
AND Driver_Id NOT IN (SELECT Users_ID FROM Users where Banned ="Yes")
GROUP BY Request_At