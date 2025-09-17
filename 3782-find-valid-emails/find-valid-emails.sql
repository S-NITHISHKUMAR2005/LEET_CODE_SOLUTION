# Write your MySQL query statement below
-- SELECT USER_ID,EMAIL
-- FROM
--     USERS
-- WHERE
--     EMAIL REGEXP BINARY '^[A-Za-z0-9]+@[A-Za-z]+\\.com$'
-- ORDER BY
--     EMAIL
SELECT USER_ID, EMAIL
FROM USERS
WHERE REGEXP_LIKE(EMAIL, '^[A-Za-z0-9]+@[A-Za-z]+\\.com$', 'c')
ORDER BY USER_ID;