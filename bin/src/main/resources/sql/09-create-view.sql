CREATE VIEW BREED_COUNT (id, breed, ct) AS
SELECT c.id, c.breed, SUM(1)
FROM DOG as a
JOIN BREEDLOOKUP as c ON c.id = a.breedId
GROUP BY c.id, c.breed
