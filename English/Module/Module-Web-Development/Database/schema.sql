-- Drop any pre-existing demonstration table to ensure idempotent script re-runs.
DROP TABLE IF EXISTS services;

-- Each service record receives a unique identifier acting as its primary key.
CREATE TABLE services (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  is_available INTEGER NOT NULL DEFAULT 1
);

-- Fictitious seed data for query practice; not real operational laboratory data.
INSERT INTO services (name, description, is_available) VALUES
  ('Practical Lab Rooms', 'Scheduled computer laboratory rooms for student coursework.', 1),
  ('Consultation Hours', 'Q&A and advisory sessions hosted by laboratory assistants.', 1);

-- Query and retrieve only currently active services.
SELECT id, name, description
FROM services
WHERE is_available = 1;
