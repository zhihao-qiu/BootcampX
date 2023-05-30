SELECT  teachers.name AS teacher,
        students.name AS student,
        assignments.name AS assignment,
        (assistance_requests.completed_at) - (assistance_requests.started_at) AS duration
FROM teachers
LEFT OUTER JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
LEFT OUTER JOIN students ON assistance_requests.student_id = students.id
LEFT OUTER JOIN assignments ON assistance_requests.assignment_id = assignments.id
ORDER BY duration;