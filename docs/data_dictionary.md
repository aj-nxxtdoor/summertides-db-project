SummerTides Festival Data Dictionary
Core entities
attendees: festival guests who register and purchase tickets.
tickets: ticket purchases linked to attendees and assigned to the festival day.
artists: performers booked for the festival.
stages: performance locations with capacity.
performances: scheduled shows linking artists to stages and days.
vendors: food, beverage, merchandise, and art sellers.
sales: transactions made by attendees at vendor stalls.
sponsors: companies funding festival activities.
stage_sponsors: sponsor relationships that fund specific stages.
Key relationships
tickets.attendee_id -> attendees.id
performances.artist_id -> artists.id
performances.stage_id -> stages.id
sales.vendor_id -> vendors.id
sales.attendee_id -> attendees.id
stage_sponsors.stage_id -> stages.id
stage_sponsors.sponsor_id -> sponsors.id