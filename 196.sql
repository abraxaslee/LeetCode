-- 196. Delete Duplicate Emails
-- 22 / 22 test cases passed.
-- Status: Accepted
-- Runtime: 504 ms

# Write your MySQL query statement below
DELETE FROM Person 
WHERE id NOT IN (
    SELECT id FROM (
        SELECT MIN(id) AS id FROM Person GROUP BY email
    ) AS t
)
