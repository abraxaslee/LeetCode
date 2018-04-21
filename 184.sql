-- 184. Department Highest Salary
-- 15 / 15 test cases passed.
-- Status: Accepted
-- Runtime: 308 ms

# Write your MySQL query statement below
SELECT d.name AS Department, e.name AS Employee, salary AS Salary
FROM Employee e
INNER JOIN Department d ON e.departmentId = d.id
WHERE
(e.salary, e.departmentId) IN
(
  SELECT MAX(salary) AS highest_salary, departmentId FROM Employee
  GROUP BY departmentId
)