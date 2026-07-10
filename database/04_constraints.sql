PRAGMA foreign_keys = ON;

CREATE INDEX idx_tickets_attendee_id ON tickets(attendee_id);
CREATE INDEX idx_tickets_festival_day ON tickets(festival_day);
CREATE INDEX idx_performances_artist_id ON performances(artist_id);
CREATE INDEX idx_performances_stage_id ON performances(stage_id);
CREATE INDEX idx_sales_vendor_id ON sales(vendor_id);
CREATE INDEX idx_sales_attendee_id ON sales(attendee_id);
CREATE INDEX idx_stage_sponsors_stage_id ON stage_sponsors(stage_id);
CREATE INDEX idx_stage_sponsors_sponsor_id ON stage_sponsors(sponsor_id);
CREATE INDEX idx_attendees_city ON attendees(city);
CREATE INDEX idx_performances_performance_date ON performances(performance_date);
CREATE INDEX idx_sales_sale_date ON sales(sale_date);