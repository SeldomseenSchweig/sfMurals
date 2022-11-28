

CREATE TABLE users (
  username VARCHAR(25) PRIMARY KEY,
  password TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL
    CHECK (position('@' IN email) > 1),
  is_admin BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE murals(
  id SERIAL PRIMARY KEY,
  artist VARCHAR(100),
  street_address TEXT,
  city TEXT,
  us_state TEXT,
  zip_code INT,
  year TEXT,
  cultural_district TEXT,
  long INT,
  lat INT,
  neighborhood TEXT,
  img TEXT


);




CREATE TABLE suggestedMurals(
  id SERIAL PRIMARY KEY,
  artist TEXT,
  street_address TEXT,
  img TEXT,
  user_id VARCHAR(25) REFERENCES users(username) ON DELETE CASCADE
);




