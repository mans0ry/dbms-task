INSERT INTO product_type (code) VALUES
('game'),
('console'),
('accessory');

INSERT INTO products (id, type, name, price, description) VALUES
('cef36dbf-25c6-4a82-864f-a881a19a9409', 'game', 'Lara Croft', 100, NULL),
('374e8493-cbd6-4d6b-8d87-19a92a4234fc', 'game', 'Mirrors edge', 70, 'Parkour game'),
('ddf34528-a1a3-4b97-b711-765ec4a86ce2', 'game', 'Minecruft', 120, 'Sandbox'),
('a58c980b-32cf-4920-ad98-d58dc47893f7', 'console', 'Xbox', 1000, 'Microsoft'),
('e6680f48-883d-4eef-b058-c729e1bba2e7', 'console', 'Xbox One', 2000, ''),
('6eeedc50-c263-42e8-84ce-cd8c74233ea9', 'console', 'Play Station 4', 2000, ''),
('ce71b9cb-4c16-42cc-a601-50f8f8249b80', 'console', 'Nintendo 3DS', 500, ''),
('9a8ff2f7-ea89-421e-96a5-8e4ac74a6055', 'accessory', 'Gamepad Xbox', 50, ''),
('becf9c19-09f9-448f-8f15-c82cbdba3d49', 'accessory', 'Cover for Xbox', 30, ''),
('491e3ae1-982c-490c-bf8e-0405b16a476f', 'accessory', 'Headphones', 100, 'Use instead of original one');

INSERT INTO games (id, tech_characters, multiplayer) VALUES
('cef36dbf-25c6-4a82-864f-a881a19a9409', 'high', FALSE),
('374e8493-cbd6-4d6b-8d87-19a92a4234fc', 'medium', FALSE),
('ddf34528-a1a3-4b97-b711-765ec4a86ce2', 'low', TRUE);

INSERT INTO consoles (id, drive_type, weight) VALUES
('a58c980b-32cf-4920-ad98-d58dc47893f7', 'disks', 3.5),
('e6680f48-883d-4eef-b058-c729e1bba2e7', 'disks', 3.6),
('6eeedc50-c263-42e8-84ce-cd8c74233ea9', 'disks', 2.8),
('ce71b9cb-4c16-42cc-a601-50f8f8249b80', 'cartridge', 0.2);

INSERT INTO accessories (id, wireless) VALUES
('9a8ff2f7-ea89-421e-96a5-8e4ac74a6055', TRUE),
('becf9c19-09f9-448f-8f15-c82cbdba3d49', FALSE),
('491e3ae1-982c-490c-bf8e-0405b16a476f', FALSE);

INSERT INTO customers (first_name, last_name, sex, birth_date, address) VALUES
('Bezalel', 'Simmel', 'F', '1985-11-21', 'Voronezh area, Voronezh, Mironova 23'),
('Parto', 'Bamford', 'M', '1986-08-28', 'Voronezh area, Voronezh, Lizukova 2'),
('Chirstian', 'Koblick', 'M', '1986-12-01', 'Voronezh area, Voronezh, Sherevo 6'),
('Kyoichi', 'Maliniak', 'M', '1989-09-12', 'Voronezh area, Voronezh, Kilovo 1'),
('Anneke', 'Preusig', 'F', '1989-06-02', 'Voronezh area, Voronezh, Revolution Prospect 32'),
('Tzvetan', 'Zielinski', 'F', '1989-02-10', 'Voronezh area, Voronezh, Platonova 9'),
('Saniya', 'Kalloufi', 'M', '1994-09-15', 'Voronezh area, Voronezh, Holzunova 44'),
('Sumant', 'Peac', 'F', '1985-02-18', 'Voronezh area, Voronezh, Folova 112'),
('Duangkaew', 'Piveteau', 'F', '1989-08-24', 'Voronezh area, Voronezh, Puzyakovo 55'),
('Mary', 'Sluis', 'F', '1990-01-22', 'Voronezh area, Voronezh, Chebisheva 2');

INSERT INTO orders (customer_id, order_date, total_price, details) VALUES
(1, '2016-12-03', 200, NULL),
(5, '2016-10-03', 1000, NULL),
(3, '2016-07-10', 1100, NULL),
(2, '2016-01-03', 5250, NULL),
(1, '2016-05-15', 200, NULL),
(7, '2016-03-08', 290, NULL),
(9, '2016-12-16', 290, NULL);

INSERT INTO order_products (order_id, id, amount) VALUES
(1, '491e3ae1-982c-490c-bf8e-0405b16a476f', 2),
(2, 'a58c980b-32cf-4920-ad98-d58dc47893f7', 1),
(3, 'e6680f48-883d-4eef-b058-c729e1bba2e7', 1),
(3, 'cef36dbf-25c6-4a82-864f-a881a19a9409', 1),
(4, '9a8ff2f7-ea89-421e-96a5-8e4ac74a6055', 5),
(4, 'a58c980b-32cf-4920-ad98-d58dc47893f7', 5),
(5, 'ddf34528-a1a3-4b97-b711-765ec4a86ce2', 1),
(7, 'cef36dbf-25c6-4a82-864f-a881a19a9409', 1),
(7, '374e8493-cbd6-4d6b-8d87-19a92a4234fc', 1),
(7, 'ddf34528-a1a3-4b97-b711-765ec4a86ce2', 1),
(8, 'cef36dbf-25c6-4a82-864f-a881a19a9409', 1),
(8, '374e8493-cbd6-4d6b-8d87-19a92a4234fc', 1),
(8, 'ddf34528-a1a3-4b97-b711-765ec4a86ce2', 1);
