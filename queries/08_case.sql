-- CASE expressions for categorizing ticket and participant data

SELECT ticket_type, price,
       CASE
           WHEN price < 3000 THEN 'Budget'
           WHEN price < 8000 THEN 'Standard'
           ELSE 'VIP'
       END AS price_category
FROM tickets;

SELECT full_name, age,
       CASE
           WHEN age < 18 THEN 'Youth'
           WHEN age < 60 THEN 'Adult'
           ELSE 'Senior'
       END AS age_category
FROM attendees;

SELECT vendor_name, rating,
       CASE
           WHEN rating >= 4.5 THEN 'Excellent'
           WHEN rating >= 3.5 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS rating_category
FROM vendors;

SELECT name, country,
       CASE
           WHEN country = 'Kenya' THEN 'Local'
           ELSE 'International'
       END AS origin_category
FROM artists;