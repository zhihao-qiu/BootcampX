SELECT  count(assistance_requests.id) AS total_assistances, name
FROM students
JOIN assistance_requests ON student_id = students.id
GROUP BY name
HAVING name = 'Elliot Dickinson';