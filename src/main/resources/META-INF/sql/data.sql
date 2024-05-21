-- Insert CELESTIAL_BODIES data
INSERT INTO CELESTIAL_BODIES (name)
VALUES ('Mercury'),
       ('Venus'),
       ('Earth'),
       ('Mars'),
       ('Jupiter'),
       ('Saturn'),
       ('Uranus'),
       ('Neptune'),
       ('Moon'),
       ('Phobos'),
       ('Deimos'),
       ('Europa'),
       ('Ganymede'),
       ('Titan'),
       ('Rhea'),
       ('Triton');

-- Insert FLIGHTS data
INSERT INTO FLIGHTS (departure_body_id, arrival_body_id, departure_date, departure_time, arrival_time, cost)
VALUES
-- Earth to Mars
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Earth'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Mars'),
 '2024-06-01', '08:00:00', '12:00:00', 450.00),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Mars'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Earth'),
 '2024-06-01', '14:00:00', '18:00:00', 450.00),
-- Earth to Moon
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Earth'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Moon'),
 '2024-06-01', '09:00:00', '09:30:00', 0.77),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Moon'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Earth'),
 '2024-06-01', '11:00:00', '11:30:00', 0.77),
-- Mars to Phobos
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Mars'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Phobos'),
 '2024-06-01', '08:00:00', '08:01:00', 0.02),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Phobos'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Mars'),
 '2024-06-01', '09:00:00', '09:01:00', 0.02),
-- Mars to Deimos
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Mars'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Deimos'),
 '2024-06-01', '10:00:00', '10:02:00', 0.05),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Deimos'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Mars'),
 '2024-06-01', '11:00:00', '11:02:00', 0.05),
-- Jupiter to Europa
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Jupiter'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Europa'),
 '2024-06-01', '08:00:00', '08:20:00', 1.34),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Europa'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Jupiter'),
 '2024-06-01', '10:00:00', '10:20:00', 1.34),
-- Saturn to Titan
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Saturn'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Titan'),
 '2024-06-01', '08:00:00', '08:30:00', 2.44),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Titan'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Saturn'),
 '2024-06-01', '10:00:00', '10:30:00', 2.44),
-- Saturn to Rhea
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Saturn'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Rhea'),
 '2024-06-01', '12:00:00', '12:10:00', 1.05),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Rhea'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Saturn'),
 '2024-06-01', '14:00:00', '14:10:00', 1.05),
-- Neptune to Triton
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Neptune'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Triton'),
 '2024-06-01', '08:00:00', '08:10:00', 0.71),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Triton'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Neptune'),
 '2024-06-01', '10:00:00', '10:10:00', 0.71),
-- Earth to Jupiter
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Earth'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Jupiter'),
 '2024-06-01', '06:00:00', '17:00:00', 1176.00),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Jupiter'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Earth'),
 '2024-06-01', '12:00:00', '23:00:00', 1176.00),
-- Earth to Saturn
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Earth'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Saturn'),
 '2024-06-01', '07:00:00', '19:00:00', 2400.00),
((SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Saturn'),
 (SELECT body_id FROM CELESTIAL_BODIES WHERE name = 'Earth'),
 '2024-06-01', '14:00:00', '02:00:00', 2400.00);

