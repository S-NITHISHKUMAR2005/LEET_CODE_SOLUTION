# Write your MySQL query statement below
SELECT S.student_id,S.student_name,C.subject_name,COUNT(E.subject_name) AS attended_exams 
FROM
    Students S
CROSS JOIN
    Subjects C
LEFT JOIN
    Examinations E
ON
    E.student_id = S.student_id
AND
    c.subject_name = E.subject_name
GROUP BY
    S.student_id,S.student_name,c.subject_name  
ORDER BY
    S.student_id,C.subject_name