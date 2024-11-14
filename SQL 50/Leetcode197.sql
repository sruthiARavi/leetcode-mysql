# https://leetcode.com/problems/rising-temperature/editorial/?envType=study-plan-v2&envId=top-sql-50
# The DATEDIFF() function returns the number of days between two date values  
# Write your MySQL query statement below
SELECT w1.id
FROM   weather w1
       JOIN weather w2
         ON DATEDIFF(w1.recorddate, w2.recorddate) = 1
WHERE  w1.temperature > w2.temperature 
