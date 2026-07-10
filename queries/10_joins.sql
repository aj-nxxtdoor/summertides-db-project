SELECT a.full_name, a.email, t.ticket_type, t.price, t.festival_day
FROM attendees a
JOIN tickets t ON a.id = t.attendee_id
ORDER BY a.full_name;

SELECT p.performance_title, a.name AS artist_name, s.stage_name, p.festival_day
FROM performances p
JOIN artists a ON p.artist_id = a.id
JOIN stages s ON p.stage_id = s.id
ORDER BY p.festival_day, s.stage_name;

SELECT p.performance_title, a.name AS artist_name, s.stage_name, p.performance_date, p.start_time, p.end_time
FROM performances p
JOIN artists a ON p.artist_id = a.id
JOIN stages s ON p.stage_id = s.id
ORDER BY p.performance_date, p.start_time;

SELECT v.vendor_name, a.full_name, s.sale_date, s.amount
FROM sales s
JOIN vendors v ON s.vendor_id = v.id
JOIN attendees a ON s.attendee_id = a.id
ORDER BY v.vendor_name, a.full_name;

SELECT ss.sponsorship_level, s.stage_name, sp.sponsor_name, ss.sponsorship_amount
FROM stage_sponsors ss
JOIN stages s ON ss.stage_id = s.id
JOIN sponsors sp ON ss.sponsor_id = sp.id
ORDER BY s.stage_name;

SELECT a.name AS artist_name
FROM artists a
LEFT JOIN performances p ON a.id = p.artist_id
WHERE p.id IS NULL;

SELECT p.performance_title, a.name AS artist_name, s.stage_name
FROM performances p
JOIN artists a ON p.artist_id = a.id
JOIN stages s ON p.stage_id = s.id
WHERE p.festival_day = 'Saturday'
ORDER BY p.start_time;