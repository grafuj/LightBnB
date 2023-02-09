-- reservations per user
SELECT reservations.id as id, properties.title, cost_per_night, start_date, avg(rating) as avg_rating
FROM users
JOIN properties ON users.id = properties.owner_id
JOIN property_reviews ON properties.id = property_reviews.property_id
JOIN reservations ON reservations.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY properties.title, reservations.id, properties.cost_per_night, users.email
ORDER BY start_date
LIMIT 10;
