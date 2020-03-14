#https://www.hackerrank.com/challenges/weather-observation-station-20/problem
set @rownum = 0;
select round(avg(t1.lat_n), 4) as median_val
from (
    select @rownum := @rownum + 1 as row_number, s.lat_n
    from station s, (select @rownum := 0) r
    order by s.lat_n
) as t1,
(
    select count(*) as total_rows
    from station
) as t2
where t1.row_number in (floor((total_rows + 1) / 2), floor((total_rows + 2) / 2));