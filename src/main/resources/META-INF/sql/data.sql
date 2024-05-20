CREATE TABLE FLIGHTS (
                         flight_id INT PRIMARY KEY AUTO_INCREMENT,
                         departure_body_id INT NOT NULL,
                         arrival_body_id INT NOT NULL,
                         departure_date DATE NOT NULL,
                         departure_time TIME NOT NULL,
                         arrival_time TIME NOT NULL,
                         cost DECIMAL(10, 2) NOT NULL,
                         FOREIGN KEY (departure_body_id) REFERENCES CELESTIAL_BODIES(body_id),
                         FOREIGN KEY (arrival_body_id) REFERENCES CELESTIAL_BODIES(body_id)
);