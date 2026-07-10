PRAGMA foreign_keys = ON;

CREATE INDEX IF NOT EXISTS idx_tickets_attendee_id ON tickets(attendee_id);
CREATE INDEX IF NOT EXISTS idx_tickets_festival_day ON tickets(festival_day);
CREATE INDEX IF NOT EXISTS idx_performances_artist_id ON performances(artist_id);
CREATE INDEX IF NOT EXISTS idx_performances_stage_id ON performances(stage_id);
CREATE INDEX IF NOT EXISTS idx_sales_vendor_id ON sales(vendor_id);
CREATE INDEX IF NOT EXISTS idx_sales_attendee_id ON sales(attendee_id);
CREATE INDEX IF NOT EXISTS idx_stage_sponsors_stage_id ON stage_sponsors(stage_id);
CREATE INDEX IF NOT EXISTS idx_stage_sponsors_sponsor_id ON stage_sponsors(sponsor_id);
CREATE INDEX IF NOT EXISTS idx_attendees_city ON attendees(city);
CREATE INDEX IF NOT EXISTS idx_performances_performance_date ON performances(performance_date);
CREATE INDEX IF NOT EXISTS idx_performances_festival_day ON performances(festival_day);