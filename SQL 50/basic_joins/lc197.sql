# https://leetcode.com/problems/rising-temperature/submissions/1452283849/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select w1.id from Weather w1 join weather w2 on datediff(w1.recordDate, w2.recordDate) = 1 where w1.temperature > w2.temperature
