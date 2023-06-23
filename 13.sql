SELECT DISTINCT p.name
FROM movies m
JOIN stars s1 ON m.id = s1.movie_id
JOIN stars s2 ON m.id = s2.movie_id
JOIN people p ON s2.person_id = p.id
JOIN people kevin ON s1.person_id = kevin.id
WHERE kevin.name = 'Kevin Bacon' AND kevin.birth = 1958
AND p.name != 'Kevin Bacon';
