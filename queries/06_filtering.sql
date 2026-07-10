-- Filtering queries demonstrating WHERE conditions and pattern matching

SELECT * FROM attendees WHERE age > 25;

SELECT * FROM attendees WHERE city = 'Nairobi';

SELECT * FROM tickets WHERE ticket_type = 'VIP';

SELECT * FROM tickets WHERE price > 5000;

SELECT * FROM artists WHERE country = 'Kenya';

SELECT * FROM vendors WHERE rating > 4;

SELECT * FROM attendees WHERE full_name LIKE 'A%';

SELECT * FROM performances WHERE start_time BETWEEN '18:00:00' AND '22:00:00';

SELECT * FROM tickets WHERE purchase_date = '2026-06-10';

SELECT * FROM attendees WHERE phone IS NULL OR phone = '';

SELECT stage_id, COUNT(*) AS total_performances
FROM performances
GROUP BY stage_id
ORDER BY total_performances DESC;

SELECT a.full_name, a.email, t.ticket_type, t.price
FROM attendees a
JOIN tickets t ON a.id = t.attendee_id
WHERE t.ticket_type = 'VIP';

SELECT SUM(price) AS total_ticket_revenue
FROM tickets;

SELECT performance_title, start_time, end_time
FROM performances
WHERE start_time >= '20:00:00'
ORDER BY start_time ASC;