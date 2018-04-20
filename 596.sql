-- 596. Classes More Than 5 Students
-- 9 / 9 test cases passed.
-- Status: Accepted
-- Runtime: 1395 ms

# Write your MySQL query statement below
SELECT class FROM courses
GROUP BY class HAVING count(distinct student) >= 5