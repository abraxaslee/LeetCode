-- 181. Employees Earning More Than Their Managers
-- 14 / 14 test cases passed.
-- Status: Accepted
-- Runtime: 300 ms

SELECT e1.Name as Employee
FROM Employee e1 INNER JOIN Employee e2 ON e1.`ManagerId` = e2.Id 
WHERE e1.Salary > e2.Salary