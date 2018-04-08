# 262. Trips and Users
# 9 / 9 test cases passed.
# Status: Accepted
# Runtime: 195 ms

# Write your MySQL query statement below
SELECT request_at AS `Day`, ROUND(COUNT(status <> 'completed' OR NULL) / COUNT(*), 2) AS `Cancellation Rate`
FROM trips INNER JOIN Users ON trips.client_id = Users.users_id AND  Users.banned = 'No'
WHERE trips.request_at >= '2013-10-01' AND trips.request_at <= '2013-10-03'
GROUP BY trips.request_at
