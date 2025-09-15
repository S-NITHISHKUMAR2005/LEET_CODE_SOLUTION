# Write your MySQL query statement below
SELECT R.contest_id,ROUND((COUNT(R.user_id ))/(SELECT COUNT(*) FROM USERS)*100,2) AS percentage
FROM 
    REGISTER R
LEFT JOIN 
    USERS U
ON
    U.user_id = R.user_id 
GROUP BY
    R.contest_id
ORDER BY
    percentage DESC, R.contest_id ASC