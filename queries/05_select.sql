-- Basic SELECT queries for the SummerTides dataset

SELECT * FROM attendees;

SELECT * FROM artists;

SELECT full_name, email FROM attendees;

SELECT DISTINCT city FROM attendees;

SELECT full_name AS attendee_name, email AS attendee_email FROM attendees;

SELECT DISTINCT ticket_type FROM tickets;

SELECT * FROM vendors;

SELECT stage_name, location FROM stages;