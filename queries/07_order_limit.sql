SELECT * FROM attendees ORDER BY full_name ASC;

SELECT * FROM artists ORDER BY genre ASC, name ASC;

SELECT * FROM vendors ORDER BY rating DESC;

SELECT * FROM tickets ORDER BY price DESC LIMIT 5;

SELECT * FROM attendees ORDER BY registration_date ASC LIMIT 10;

SELECT * FROM tickets ORDER BY purchase_date DESC LIMIT 10;

SELECT * FROM vendors ORDER BY rating DESC LIMIT 3;