# QA Test Plan for SummerTides Festival Database

## Purpose
This QA test plan verifies that the SummerTides database project is complete, accurate, and functioning correctly across database creation, table design, sample data, and query output.

## Test Environment
- Database engine: PostgreSQL or MySQL (use the engine specified by your course)
- Project files:
  - `database/01_create_database.sql`
  - `database/02_create_tables.sql`
  - `database/03_insert_data.sql`
  - `database/04_constraints.sql`
  - `queries/05_select.sql`
  - `queries/06_filtering.sql`
  - `queries/07_order_limit.sql`
  - `queries/08_case.sql`
  - `queries/09_group_by.sql`
  - `queries/10_joins.sql`

## QA Checklist

### 1. Database creation
- [ ] Run `database/01_create_database.sql` successfully.
- [ ] Confirm `summertides` database exists.
- [ ] Confirm the script switches into the database after creating it.

### 2. Table creation and schema
- [ ] Run `database/02_create_tables.sql` successfully.
- [ ] Confirm the presence of all expected tables:
  - `attendees`
  - `tickets`
  - `artists`
  - `stages`
  - `performances`
  - `vendors`
  - `sales`
  - `sponsors`
  - `stage_sponsors`
- [ ] Confirm each table has a primary key.
- [ ] Confirm foreign keys exist for relationships between tables.
- [ ] Confirm columns use appropriate data types.
- [ ] Confirm constraints (NOT NULL, UNIQUE, CHECK, DEFAULT) are applied where needed.

### 3. Data insertion
- [ ] Run `database/03_insert_data.sql` successfully.
- [ ] Confirm each table contains data.
- [ ] Confirm minimum sample sizes in the dataset:
  - 20 attendees
  - 15 artists
  - 6 stages
  - 30 performances
  - 40 tickets
  - 10 vendors
  - 50 sales
  - 8 sponsors
- [ ] Confirm relationships are populated correctly (for example, tickets link to attendees and performances).

### 4. Constraints and data integrity
- [ ] Run `database/04_constraints.sql` successfully.
- [ ] Confirm unique constraints and foreign key actions are enforced.
- [ ] Confirm invalid inserts are rejected if constraint violations are attempted.

### 5. Query validation
- [ ] Run each query file and confirm no errors:
  - `queries/05_select.sql`
  - `queries/06_filtering.sql`
  - `queries/07_order_limit.sql`
  - `queries/08_case.sql`
  - `queries/09_group_by.sql`
  - `queries/10_joins.sql`
- [ ] For each file, verify that the intended output is returned and the query meets the exercise description.

## Manual Test Cases

### Table counts and relationships
1. Count rows for each table
   - `SELECT COUNT(*) FROM attendees;`
   - `SELECT COUNT(*) FROM tickets;`
   - `SELECT COUNT(*) FROM artists;`
   - `SELECT COUNT(*) FROM stages;`
   - `SELECT COUNT(*) FROM performances;`
   - `SELECT COUNT(*) FROM vendors;`
   - `SELECT COUNT(*) FROM sales;`
   - `SELECT COUNT(*) FROM sponsors;`
   - `SELECT COUNT(*) FROM stage_sponsors;`

2. Confirm artist performances
   - `SELECT a.artist_name, p.performance_date, s.stage_name FROM performances p JOIN artists a ON p.artist_id = a.artist_id JOIN stages s ON p.stage_id = s.stage_id;`

3. Confirm ticket ownership
   - `SELECT t.ticket_id, a.attendee_name, t.ticket_type FROM tickets t JOIN attendees a ON t.attendee_id = a.attendee_id;`

4. Confirm sales records
   - `SELECT v.vendor_name, a.attendee_name, s.sale_amount FROM sales s JOIN vendors v ON s.vendor_id = v.vendor_id JOIN attendees a ON s.attendee_id = a.attendee_id;`

### Business rule checks
- Verify VIP ticket prices are higher than standard and budget tickets.
- Verify stages have at least one sponsor if stage sponsorship is required.
- Verify each performance has a valid artist and stage.

## Regression / Smoke Tests
- [ ] Re-run all SQL scripts in order on a clean database.
- [ ] Confirm there are no script errors.
- [ ] Confirm query results remain consistent after a fresh build.

## Notes
- If any script fails, capture the error message and fix the script before continuing QA.
- If the project uses a different database engine, adapt SQL syntax and connection steps accordingly.

## QA Summary
Record the final results here after testing:
- Database creation: PASS / FAIL
- Table creation: PASS / FAIL
- Data insertion: PASS / FAIL
- Constraints: PASS / FAIL
- Query files: PASS / FAIL

> QA Tester: Document any issues, the line where they occurred, and the proposed fix.
