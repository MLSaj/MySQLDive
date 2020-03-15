/*
Enter your query here.
*/
#https://www.hackerrank.com/challenges/binary-search-tree-1/problem
SELECT N,
    case 
        when N in (SELECT P FROM BST) and P IS NOT NULL then "Inner"  
        when P IS NULL then "Root" 
        else "Leaf" end as node_type
    
FROM BST
ORDER BY N