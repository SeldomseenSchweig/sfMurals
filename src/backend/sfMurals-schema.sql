

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
  artist TEXT,
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


-- CREATE TABLE neighborhoods (
--   id INT PRIMARY KEY,
--   neighborhood TEXT NOT NULL

-- );


CREATE TABLE tours (
  id SERIAL PRIMARY KEY,
  mural_id INT REFERENCES murals(id),
  user_username text REFERENCES users(username)

);




