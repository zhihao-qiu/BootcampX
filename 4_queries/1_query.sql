SELECT  count(assistance_requests.id) AS total_assistances, name
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
GROUP BY name
HAVING name = 'Waylon Boehm';