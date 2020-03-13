#https://www.hackerrank.com/challenges/contest-leaderboard/problem
Select HSF.hacker_id,H.name, HSF.final_score
FROM 

(Select HS.hacker_id, sum(HS.max_score) as final_score
FROM
(SELECT hacker_id, challenge_id,max(score) as max_score
FROM Submissions 
GROUP BY hacker_id,challenge_id
HAVING max(score) > 0) AS HS

GROUP BY hacker_id
ORDER BY final_score desc,HS.hacker_id asc) AS HSF

JOIN Hackers as H ON HSF.hacker_id = H.hacker_id
ORDER BY HSF.final_score desc, HSF.hacker_id asc