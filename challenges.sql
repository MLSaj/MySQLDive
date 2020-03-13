#https://www.hackerrank.com/challenges/challenges/problem

SELECT C.hacker_id, H.name, count(c.challenge_id) as challenges_created

FROM Challenges AS C INNER JOIN Hackers AS H ON C.hacker_id = H.hacker_id

GROUP BY C.hacker_id,H.name

HAVING 

    challenges_created = 

    (SELECT MAX(HC.count_challenge)
    FROM
    (SELECT hacker_id, count(challenge_id) As count_challenge
    FROM Challenges 
    GROUP BY hacker_id) AS HC)

or challenges_created in
    (select HC1.counter
     FROM
        (select count(hacker_id) as counter
        FROM Challenges
        GROUP BY hacker_id) AS HC1
    GROUP BY HC1.counter
    HAVING count(HC1.counter) = 1)
    
ORDER BY challenges_created DESC, c.hacker_id