# https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/?envType=study-plan-v2&envId=top-sql-50
# 2356. Number of Unique Subjects Taught by Each Teacher
# Table: Teacher
# +-------------+------+
# | Column Name | Type |
# +-------------+------+
# | teacher_id  | int  |
# | subject_id  | int  |
# | dept_id     | int  |
# +-------------+------+
# (subject_id, dept_id) is the primary key (combinations of columns with unique values) of this table.
# Each row in this table indicates that the teacher with teacher_id teaches the subject subject_id in the department dept_id.
# Write a solution to calculate the number of unique subjects each teacher teaches in the university.
# Return the result table in any order.  
  
# Write your MySQL query statement below
SELECT teacher_id,
       Count(DISTINCT subject_id) AS cnt
FROM   teacher
GROUP  BY teacher_id 
