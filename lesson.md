SQL Sprint Project
Welcome
In this sprint, your team has been hired as Database Engineers for SummerTides Festival. Your objective is to design, build, and query a relational database that helps the festival organizers manage attendees, artists, performances, vendors, sponsors, and ticket sales.

This project combines all the SQL concepts covered in class into one real-world application. Work collaboratively within your assigned group, ensuring that every member contributes to both the database design and SQL queries.

Learning Outcomes
By the end of this sprint, you should be able to:

Design a relational database from a real-world scenario.
Create databases and tables using appropriate data types.
Define Primary Keys and Foreign Keys to enforce relationships.
Apply constraints such as NOT NULL, UNIQUE, CHECK, and DEFAULT.
Insert realistic sample data into related tables.
Retrieve information using SELECT.
Filter and sort data using different SQL clauses.
Use aggregate functions to generate reports.
Join multiple tables to answer business questions.
Create reusable Views for commonly accessed information.
Project Rules
Write clean, well-commented SQL.
Use meaningful table and column names.
Every SQL file should contain only the tasks for that topic.
All scripts should execute without errors.
Include comments before every exercise explaining what the query is intended to accomplish.
Commit your work regularly if using Git.
Part 1 – Create the Database
File: 01_create_database.sql

Create a new database called summertides.

After creating it:

Switch into the database.
Verify that it exists.
Add comments explaining what the script does.
Part 2 – Create the Tables
File: 02_create_tables.sql

Create all tables required for the festival database.

Your schema should include:

Attendees
Tickets
Artists
Stages
Performances
Vendors
Sales
Sponsors
Stage Sponsors
For every table:

Choose appropriate data types.
Create a Primary Key.
Add Foreign Keys where relationships exist.
Apply suitable constraints (NOT NULL, UNIQUE, CHECK, etc.).
Ensure relationships accurately represent the business scenario.
Before writing SQL, sketch an Entity Relationship Diagram (ERD) showing how the tables connect.

Part 3 – Populate the Database
File: 03_insert_data.sql

Insert realistic sample data into every table.

Minimum requirements:

20 attendees
15 artists
6 stages
30 performances
40 tickets
10 vendors
50 sales
8 sponsors
Your data should be believable and demonstrate the relationships between tables. For example:

Different ticket types
Artists performing on different stages
Multiple vendors making sales
Sponsors supporting different stages
Part 4 – Basic Queries
File: 05_select.sql

Retrieve information from individual tables.

Complete queries that:

Display all attendees.
Display all artists.
Display only attendee names and email addresses.
Display only unique cities where attendees come from.
Rename columns using aliases.
Retrieve all ticket types.
Display all vendors.
Display all stages.
Use:

SELECT
SELECT *
DISTINCT
Aliases (AS)
Part 5 – Filtering Data
File: 06_filtering.sql

Answer the following business questions:

Show attendees older than 25.
Find attendees from Nairobi.
Display VIP tickets only.
Show tickets costing more than 5,000.
Find artists from Kenya.
Display vendors with ratings above 4.
Find attendees whose names start with "A".
Display performances happening between 6:00 PM and 10:00 PM.
Show tickets purchased on a specific date.
Find attendees whose phone numbers are missing.
Use:

WHERE
AND
OR
NOT
BETWEEN
LIKE
IN
IS NULL
Part 6 – Sorting and Limiting Results
File: 07_order_limit.sql

Write queries that:

Display attendees alphabetically.
Show artists ordered by genre.
List vendors from highest to lowest rating.
Display the five most expensive ticket purchases.
Show the first ten attendees registered.
Display the latest ticket purchases.
Retrieve only the top three highest-rated vendors.
Use:

ORDER BY
ASC
DESC
LIMIT
OFFSET (optional)
Part 7 – CASE Statements
File: 08_case.sql

Create calculated columns using CASE.

Examples include:

Categorise ticket prices as Budget, Standard, or VIP.
Classify attendees as Youth, Adult, or Senior based on age.
Categorise vendor ratings as Excellent, Good, or Needs Improvement.
Label artists as Local or International based on country.
Every query should include both the original value and the newly created category.

Part 8 – Aggregate Functions and Grouping
File: 09_group_by.sql

Generate reports for the festival organisers.

Answer questions such as:

How many attendees are registered?
What is the average ticket price?
What is the highest and lowest ticket price?
How many attendees come from each city?
How many artists belong to each genre?
What is the total sales amount for each vendor?
Which festival day sold the most tickets?
Display only vendors whose total sales exceed a chosen amount.
Use:

COUNT()
SUM()
AVG()
MIN()
MAX()
GROUP BY
HAVING
Part 9 – Joins
File: 10_joins.sql

Combine information from multiple tables to answer business questions.

Write queries that:

Display attendees together with their ticket information.
Show artists and the stages where they perform.
Display every performance together with the artist name and stage name.
List every vendor together with the attendees who purchased from them.
Display sponsors alongside the stages they sponsor.
Show artists who do not yet have a scheduled performance (if applicable).
Retrieve all performances for a selected festival day.
Use:

INNER JOIN
LEFT JOIN
Multiple-table joins
Part 10 – Views
File: 11_views.sql

Create reusable views for common reports.

Create at least three views:

vip_attendees
Display all attendees who purchased VIP tickets.

artist_schedule
Display:

Artist name
Stage
Performance date
Start time
End time
vendor_sales_summary
Display:

Vendor name
Total sales
Average sale value
Number of transactions
After creating each view, query it to verify that it works correctly.

Part 11 – Bonus Challenges
File: 12_bonus.sql

Answer advanced business questions.

Examples include:

Which artist performs the most?
Which stage hosts the highest number of performances?
Which vendor generated the highest revenue?
Which attendee spent the most money?
Which city has the highest number of attendees?
Which festival day generated the highest ticket revenue?
Which sponsor contributed the most funding?
What is the total expected ticket revenue?
Which ticket type was purchased the most?
Challenge yourselves to answer at least five of these questions using combinations of joins, filtering, grouping, and aggregate functions.

Submission Checklist
Your project submission should include:

Completed SQL scripts for every task
Functional relational database
Correct table relationships
Realistic sample data
Three or more working views
README.md
ER Diagram
Presentation slides or demo notes
Ensure that all SQL files execute successfully from start to finish without modification.