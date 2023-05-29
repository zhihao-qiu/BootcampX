SELECT  students.name AS student,
        AVG(duration) AS average_assignment_duration
FROM students
LEFT OUTER JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name, students.end_date
ORDER BY average_assignment_duration DESC;