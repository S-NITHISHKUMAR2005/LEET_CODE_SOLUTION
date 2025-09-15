# Write your MySQL query statement below
SELECT U.name,COALESCE(SUM(R.DISTANCE),0) AS travelled_distance
FROM
    USERS U
LEFT JOIN
    RIDES R
ON
    U.ID = R.user_id
GROUP BY
    U.ID
ORDER BY
    travelled_distance DESC,U.name