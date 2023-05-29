SELECT sum(duration)
FROM assignment_submissions
JOIN students
ON students.id = student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';