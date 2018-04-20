-- 626. Exchange Seats
-- 12 / 12 test cases passed.
-- Status: Accepted
-- Runtime: 269 ms

# Write your MySQL query statement below
SELECT IFNULL(s2.id, s1.id) AS id, s1.student FROM seat s1
LEFT JOIN seat s2 ON s2.id = IF((s1.id+1)%2 = 0, s1.id+1, s1.id-1)
