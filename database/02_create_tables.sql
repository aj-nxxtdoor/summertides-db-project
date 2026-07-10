PRAGMA foreign_keys = ON;

CREATE TABLE attendees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    city TEXT NOT NULL,
    age INTEGER NOT NULL CHECK (age BETWEEN 0 AND 120),
    registration_date TEXT NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE tickets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ticket_type TEXT NOT NULL CHECK (ticket_type IN ('General', 'VIP', 'Student', 'Weekend')),
    price REAL NOT NULL CHECK (price >= 0),
    purchase_date TEXT NOT NULL DEFAULT CURRENT_DATE,
    festival_day TEXT NOT NULL CHECK (festival_day IN ('Friday', 'Saturday', 'Sunday')),
    attendee_id INTEGER NOT NULL,
    FOREIGN KEY (attendee_id) REFERENCES attendees(id) ON DELETE CASCADE
);

CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    genre TEXT NOT NULL,
    country TEXT NOT NULL,
    contact_email TEXT NOT NULL UNIQUE
);

CREATE TABLE stages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stage_name TEXT NOT NULL UNIQUE,
    location TEXT NOT NULL,
    capacity INTEGER NOT NULL CHECK (capacity > 0)
);

CREATE TABLE performances (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    performance_title TEXT NOT NULL,
    artist_id INTEGER NOT NULL,
    stage_id INTEGER NOT NULL,
    festival_day TEXT NOT NULL CHECK (festival_day IN ('Friday', 'Saturday', 'Sunday')),
    start_time TEXT NOT NULL,
    end_time TEXT NOT NULL,
    performance_date TEXT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE,
    FOREIGN KEY (stage_id) REFERENCES stages(id) ON DELETE CASCADE,
    CHECK (start_time < end_time)
);

CREATE TABLE vendors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_name TEXT NOT NULL UNIQUE,
    category TEXT NOT NULL,
    rating REAL NOT NULL CHECK (rating BETWEEN 0 AND 5),
    contact_email TEXT NOT NULL UNIQUE
);

CREATE TABLE sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sale_date TEXT NOT NULL DEFAULT CURRENT_DATE,
    amount REAL NOT NULL CHECK (amount > 0),
    payment_method TEXT NOT NULL CHECK (payment_method IN ('Cash', 'Card', 'Mobile Money', 'Bank Transfer')),
    vendor_id INTEGER NOT NULL,
    attendee_id INTEGER NOT NULL,
    FOREIGN KEY (vendor_id) REFERENCES vendors(id) ON DELETE CASCADE,
    FOREIGN KEY (attendee_id) REFERENCES attendees(id) ON DELETE CASCADE
);

CREATE TABLE sponsors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT NOT NULL UNIQUE,
    sector TEXT NOT NULL,
    contact_email TEXT NOT NULL UNIQUE
);

CREATE TABLE stage_sponsors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stage_id INTEGER NOT NULL,
    sponsor_id INTEGER NOT NULL,
    sponsorship_amount REAL NOT NULL CHECK (sponsorship_amount >= 0),
    sponsorship_level TEXT NOT NULL CHECK (sponsorship_level IN ('Platinum', 'Gold', 'Silver', 'Bronze')),
    sponsor_start_date TEXT NOT NULL,
    sponsor_end_date TEXT,
    FOREIGN KEY (stage_id) REFERENCES stages(id) ON DELETE CASCADE,
    FOREIGN KEY (sponsor_id) REFERENCES sponsors(id) ON DELETE CASCADE,
    UNIQUE(stage_id, sponsor_id)
);