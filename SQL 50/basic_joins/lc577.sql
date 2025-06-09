# https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select Employee.name, 
 Bonus.bonus 
from Employee 
left join Bonus 
on Employee.empId = Bonus.empId
where Bonus.bonus < 1000 or Bonus.bonus is null
