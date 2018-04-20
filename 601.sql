-- 601. Human Traffic of Stadium
-- 14 / 14 test cases passed.
-- Status: Accepted
-- Runtime: 292 ms

# Write your MySQL query statement below
SELECT s0.* FROM stadium s0
LEFT JOIN stadium sp2 ON sp2.id = s0.id - 2
LEFT JOIN stadium sp1 ON sp1.id = s0.id - 1
LEFT JOIN stadium sn1 ON sn1.id = s0.id + 1
LEFT JOIN stadium sn2 ON sn2.id = s0.id + 2
WHERE (sp2.people >= 100 AND sp1.people >= 100 AND s0.people >= 100)
OR (sp1.people >= 100 AND s0.people >= 100 AND sn1.people >= 100)
OR (s0.people >= 100 AND sn1.people >= 100 AND sn2.people >= 100)
ORDER BY s0.id
