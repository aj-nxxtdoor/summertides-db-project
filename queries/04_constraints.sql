SELECT * FROM attendees WHERE age BETWEEN 18 AND 35;

SELECT * FROM tickets WHERE ticket_type IN ('General', 'VIP', 'Student', 'Weekend');

SELECT * FROM vendors WHERE rating BETWEEN 0 AND 5;

SELECT p.performance_title, p.start_time, p.end_time
FROM performances p
WHERE p.start_time < p.end_time;

SELECT s.stage_name, ss.sponsorship_level, ss.sponsorship_amount
FROM stage_sponsors ss
JOIN stages s ON ss.stage_id = s.id
WHERE ss.sponsorship_amount >= 0;

SELECT * FROM tickets WHERE attendee_id IN (SELECT id FROM attendees);
