# https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT EmployeeUNI.unique_id,
       Employees.name
FROM   Employees
       LEFT JOIN EmployeeUNI USING (id) 
