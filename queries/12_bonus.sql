-- Bonus queries leveraging window functions and subqueries

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

SELECT full_name
FROM attendees
WHERE id IN (
    SELECT attendee_id
    FROM tickets
    WHERE ticket_type = 'VIP'
);