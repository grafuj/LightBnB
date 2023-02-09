SELECT properties.id as id, title, cost_per_night, avg(property_reviews.rating) as avg_rating
FROM properties
JOIN property_reviews ON property_reviews.property_id = properties.id
GROUP BY properties.id
HAVING properties.city = 'Vancouver'
ORDER BY avg_rating;