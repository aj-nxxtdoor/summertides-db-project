-- List attendees who purchased at least one VIP ticket.
DROP VIEW IF EXISTS vip_attendees;
CREATE VIEW vip_attendees AS
SELECT DISTINCT a.id AS attendee_id,
       a.full_name,
       a.email,
       a.phone,
       a.city
FROM attendees AS a
JOIN tickets AS t ON t.attendee_id = a.id
WHERE t.ticket_type = 'VIP';

-- Show the full performance timetable with artist and stage details.
DROP VIEW IF EXISTS artist_schedule;
CREATE VIEW artist_schedule AS
SELECT p.id,
       p.performance_title,
       a.name AS artist_name,
       s.stage_name,
       p.festival_day,
       p.performance_date,
       p.start_time,
       p.end_time
FROM performances p
JOIN artists a ON p.artist_id = a.id
JOIN stages s ON p.stage_id = s.id;

-- Summarise sales performance for every vendor, including vendors without sales.
DROP VIEW IF EXISTS vendor_sales_summary;
CREATE VIEW vendor_sales_summary AS
SELECT v.id AS vendor_id,
       v.vendor_name,
       v.category,
       ROUND(COALESCE(SUM(s.amount), 0), 2) AS total_sales,
       ROUND(COALESCE(AVG(s.amount), 0), 2) AS average_sale_value,
       COUNT(s.id) AS transaction_count
FROM vendors v
LEFT JOIN sales s ON s.vendor_id = v.id
GROUP BY v.id, v.vendor_name, v.category;

SELECT * FROM vip_attendees ORDER BY full_name;
SELECT * FROM artist_schedule ORDER BY performance_date, start_time LIMIT 10;
SELECT * FROM vendor_sales_summary ORDER BY total_sales DESC;
