INSERT INTO users ( name, email, password )
VALUES (
  'Bill', 'bill@google.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
),
(
  'Curious George', 'gorge@monke', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
),
(
  'Sarah Connor', 'sar@gc.bc.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
);

INSERT INTO properties ( owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (
  1, 'Beach House', 'House on the beach', 'link_url_thumb', 'link_url_cover', 329, 6, 5, 6, 'Canada', '52 Beach Ave', 'Montauk', 'Some State', '34567', TRUE
),
( 3, 'Main apartment', 'small flat in the big city', 'link_url_thumb', 'link_url_cover', 349, 0, 1, 1, 'Canada', '220B Baker Street', 'London', 'Some State', '77237', FALSE),
( 2, 'Tree House', 'Way up in a big tree', 'link_url_thumb', 'link_url_cover', 2, 0, 0, 0, 'Brazil', 'What is an address', 'Not a city', 'Some State', '71237', FALSE);


INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-09-11', '2018-09-26', 1, 1),
('2019-01-04', '2019-02-01', 2, 2),
('2021-10-01', '2021-10-14', 3, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (
  1, 1, 1, 5, 'This is my great getaway from the hustle and bustle of the city.'
),
( 2, 2, 2, 1, 'no trees'),
( 3, 3, 3, 0, 'no walls');