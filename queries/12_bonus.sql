-- Find the vendor or vendors with the highest total sales revenue.
SELECT vendor_name, total_sales
FROM (
    SELECT v.vendor_name,
           SUM(s.amount) AS total_sales,
           RANK() OVER (ORDER BY SUM(s.amount) DESC) AS sales_rank
    FROM sales s
    JOIN vendors v ON s.vendor_id = v.id
    GROUP BY v.id, v.vendor_name
) ranked_vendors
WHERE sales_rank = 1;

-- Find the stage or stages that hosted the most performances.
SELECT stage_name, performance_count
FROM (
    SELECT s.stage_name,
           COUNT(p.id) AS performance_count,
           RANK() OVER (ORDER BY COUNT(p.id) DESC) AS stage_rank
    FROM stages s
    LEFT JOIN performances p ON s.id = p.stage_id
    GROUP BY s.id, s.stage_name
) ranked_stages
WHERE stage_rank = 1;

-- List attendees who purchased at least one VIP ticket.
SELECT full_name
FROM attendees
WHERE id IN (
    SELECT attendee_id
    FROM tickets
    WHERE ticket_type = 'VIP'
);

-- Find the artist or artists scheduled for the most performances.
SELECT artist_name, performance_count
FROM (
    SELECT a.name AS artist_name,
           COUNT(p.id) AS performance_count,
           RANK() OVER (ORDER BY COUNT(p.id) DESC) AS performance_rank
    FROM artists AS a
    LEFT JOIN performances AS p ON p.artist_id = a.id
    GROUP BY a.id, a.name
) AS ranked_artists
WHERE performance_rank = 1;

-- Find the attendee or attendees who spent the most with festival vendors.
SELECT full_name, total_spend
FROM (
    SELECT a.full_name,
           SUM(s.amount) AS total_spend,
           RANK() OVER (ORDER BY SUM(s.amount) DESC) AS spending_rank
    FROM attendees AS a
    JOIN sales AS s ON s.attendee_id = a.id
    GROUP BY a.id, a.full_name
) AS ranked_attendees
WHERE spending_rank = 1;
