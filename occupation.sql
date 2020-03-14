/*
Enter your query here.
*/
#https://www.hackerrank.com/challenges/occupations/problem
set @row1 = 0,@row2 = 0, @row3=0, @row4 =0;
Select min(Doctor), min(Professor),min(Singer),min(Actor)
FROM
(SELECT case when Occupation = 'Doctor' then (@row1 := @row1 + 1)
       when Occupation = 'Professor' then (@row2 := @row2 + 1)
       when Occupation = 'Actor' then (@row3 := @row3 + 1)
       when Occupation = 'Singer' then (@row4 :=@row4 + 1)
       end as row_number,
      
    case when Occupation='Doctor' then Name end as Doctor,
    case when Occupation='Professor' then Name end as Professor,
    case when Occupation='Singer' then Name end as Singer,
    case when Occupation='Actor' then Name end as Actor

FROM Occupations
ORDER BY name ASC) temp
Group By row_number