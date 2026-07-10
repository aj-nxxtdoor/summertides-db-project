-- Views to simplify common dataset patterns and result sets

DROP VIEW IF EXISTS attendee_ticket_summary;
CREATE VIEW attendee_ticket_summary AS
SELECT a.id AS attendee_id,
       a.full_name,
       a.email,
       t.ticket_type,
       t.price,
       t.festival_day
FROM attendees a
JOIN tickets t ON a.id = t.attendee_id;

DROP VIEW IF EXISTS performance_schedule;
CREATE VIEW performance_schedule AS
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

DROP VIEW IF EXISTS vendor_sales_summary;
CREATE VIEW vendor_sales_summary AS
SELECT v.id AS vendor_id,
       v.vendor_name,
       v.category,
       ROUND(SUM(s.amount), 2) AS total_sales
FROM vendors v
LEFT JOIN sales s ON s.vendor_id = v.id
GROUP BY v.id, v.vendor_name, v.category;

SELECT * FROM attendee_ticket_summary LIMIT 10;
SELECT * FROM performance_schedule ORDER BY festival_day, start_time LIMIT 10;
SELECT * FROM vendor_sales_summary ORDER BY total_sales DESC;
