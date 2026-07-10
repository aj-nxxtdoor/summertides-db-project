PRAGMA foreign_keys = ON;

INSERT INTO attendees (full_name, email, phone, city, age, registration_date) VALUES
('Asha Njeri', 'asha.njeri@summertides.test', '+254700111001', 'Nairobi', 24, '2026-05-10'),
('Brian Otieno', 'brian.otieno@summertides.test', '+254700111002', 'Mombasa', 31, '2026-05-11'),
('Cynthia Wambui', 'cynthia.wambui@summertides.test', '+254700111003', 'Nakuru', 27, '2026-05-12'),
('Daniel Kibet', 'daniel.kibet@summertides.test', '+254700111004', 'Kisumu', 29, '2026-05-13'),
('Esther Akinyi', 'esther.akinyi@summertides.test', '+254700111005', 'Nairobi', 22, '2026-05-14'),

INSERT INTO tickets (ticket_type, price, purchase_date, festival_day, attendee_id) VALUES
('General', 3000, '2026-06-01', 'Friday', 1),
('VIP', 8000, '2026-06-02', 'Friday', 2),
('Student', 1800, '2026-06-03', 'Friday', 3),
('Weekend', 12000, '2026-06-04', 'Friday', 4),
('General', 3000, '2026-06-05', 'Saturday', 5),


INSERT INTO artists (name, genre, country, contact_email) VALUES
('Amani & The Tides', 'Afro-pop', 'Kenya', 'amani@summertides.test'),
('Bantu Echo', 'Afro-fusion', 'Kenya', 'bantu@summertides.test'),
('Cedar Roots', 'Reggae', 'Kenya', 'cedar@summertides.test'),
('Dhow Sound', 'Electronic', 'Tanzania', 'dhow@summertides.test'),
('Eclipse Lane', 'House', 'South Africa', 'eclipse@summertides.test'),


INSERT INTO stages (stage_name, location, capacity) VALUES
('Sunset Bay', 'North Beach', 5000),
('Coral Arena', 'Main Plaza', 3500),
('Tide Deck', 'Boardwalk', 2500),
('Dune Lounge', 'Lagoon', 2000),
('Moonlight Stage', 'Garden', 1800),


INSERT INTO performances (performance_title, artist_id, stage_id, festival_day, start_time, end_time, performance_date) VALUES
('Opening Sunset Set', 1, 1, 'Friday', '18:00:00', '19:00:00', '2026-07-10'),
('Neon Beach Mix', 4, 2, 'Friday', '20:00:00', '21:30:00', '2026-07-10'),
('Golden Hour', 2, 3, 'Friday', '19:30:00', '20:45:00', '2026-07-10'),
('Rhythm of the Dunes', 8, 4, 'Friday', '21:00:00', '22:00:00', '2026-07-10'),
('Palm Breeze', 10, 6, 'Friday', '17:30:00', '18:30:00', '2026-07-10'),


INSERT INTO vendors (vendor_name, category, rating, contact_email) VALUES
('Tropical Bites', 'Food', 4.8, 'tropicalbites@summertides.test'),
('Sandy Sips', 'Beverage', 4.6, 'sandysips@summertides.test'),
('Glow Crafts', 'Art', 4.4, 'glowcrafts@summertides.test'),
('Wave Wear', 'Merchandise', 4.2, 'wavewear@summertides.test'),
('Sunset Grill', 'Food', 4.7, 'sunsetgrill@summertides.test'),

INSERT INTO sales (sale_date, amount, payment_method, vendor_id, attendee_id) VALUES
('2026-07-10', 2500, 'Card', 1, 1),
('2026-07-10', 1200, 'Mobile Money', 2, 2),
('2026-07-10', 3500, 'Cash', 3, 3),
('2026-07-10', 1800, 'Card', 4, 4),
('2026-07-10', 2200, 'Bank Transfer', 5, 5),


INSERT INTO sponsors (sponsor_name, sector, contact_email) VALUES
('BrightWave', 'Technology', 'brightwave@summertides.test'),
('Coastal Bank', 'Finance', 'coastalbank@summertides.test'),
('EcoSip', 'Beverage', 'ecosip@summertides.test'),
('Mara Motors', 'Automotive', 'maramotors@summertides.test'),
('Nile Energy', 'Energy', 'nileenergy@summertides.test'),


INSERT INTO stage_sponsors (stage_id, sponsor_id, sponsorship_amount, sponsorship_level, sponsor_start_date, sponsor_end_date) VALUES
(1, 1, 5000000, 'Platinum', '2026-01-01', '2026-12-31'),
(1, 2, 2500000, 'Gold', '2026-01-01', '2026-12-31'),
(2, 3, 1800000, 'Gold', '2026-02-01', '2026-12-31'),
(2, 4, 1200000, 'Silver', '2026-02-01', '2026-12-31'),
(3, 5, 1500000, 'Gold', '2026-03-01', '2026-12-31'),
