SELECT COUNT(*) AS total_attendees FROM attendees;

SELECT AVG(price) AS average_ticket_price FROM tickets;

SELECT MIN(price) AS min_ticket_price, MAX(price) AS max_ticket_price FROM tickets;

SELECT city, COUNT(*) AS attendee_count
FROM attendees
GROUP BY city
ORDER BY attendee_count DESC;

SELECT genre, COUNT(*) AS artist_count
FROM artists
GROUP BY genre
ORDER BY artist_count DESC;

SELECT v.vendor_name, SUM(s.amount) AS total_sales_amount
FROM sales s
JOIN vendors v ON s.vendor_id = v.id
GROUP BY v.vendor_name
ORDER BY total_sales_amount DESC;

SELECT festival_day, COUNT(*) AS tickets_sold
FROM tickets
GROUP BY festival_day
ORDER BY tickets_sold DESC;

SELECT v.vendor_name, SUM(s.amount) AS total_sales_amount
FROM sales s
JOIN vendors v ON s.vendor_id = v.id
GROUP BY v.vendor_name
HAVING SUM(s.amount) > 5000
ORDER BY total_sales_amount DESC;