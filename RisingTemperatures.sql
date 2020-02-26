SELECT wt1.Id 
FROM Weather AS wt1, Weather AS wt2
WHERE wt1.Temperature > wt2.Temperature AND 
      TO_DAYS(wt1.RECORDDATE)-TO_DAYS(wt2.RECORDDATE)=1;