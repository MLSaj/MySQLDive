#https://www.hackerrank.com/challenges/the-company/problem

select c.company_code, c.founder, (select count(*) from lead_manager l where l.company_code = c.company_code),
(select count(*) from senior_manager s where s.company_code = c.company_code),
(select count(*) from manager m where m.company_code = c.company_code),
(select count(*) from employee e where e.company_code = c.company_code)
from company c
order by c.company_code,founder;
