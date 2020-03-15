#https://www.hackerrank.com/challenges/what-type-of-triangle
SELECT
CASE 
        WHEN A + B > C and A+C > B and A+C > B Then
        CASE WHEN A = B and B=C Then "Equilateral"  
            WHEN A = B or B=C or C=A  Then "Isosceles" 
            WHEN A != B and B != C and A != C Then "Scalene" END
        ELSE "Not A Triangle" END
FROM TRIANGLES