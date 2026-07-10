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