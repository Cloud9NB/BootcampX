SELECT assignments.id AS name,
assignments.name AS name,
assignments.day AS day,
assignments.chapter AS chapter,
count(assistance_requests.*) AS total_request
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_request DESC;