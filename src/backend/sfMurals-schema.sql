

CREATE TABLE users (
  username VARCHAR(25) PRIMARY KEY,
  password TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL
    CHECK (position('@' IN email) > 1),
  is_admin BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE murals (
  id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  city INT NOT NULL,
  us_state text NOT NULL,
  zip_code INT NOT NULL,
  street_address TEXT NOT NULL,
  cultural_district TEXT,
  long INT NOT NULL,
  lat INT NOT NULL,
  neighborhood_id TEXT NOT NULL
);

CREATE TABLE neighborhoods (
  id INT PRIMARY KEY,
  neighborhood TEXT NOT NULL

)
CREATE TABLE artists (
  id SERIAL PRIMARY KEY
  artist_name TEXT NOT NULL
  bio TEXT
)
CREATE TABLE artist_mural (
  id PRIMARY KEY,
  artist_id FOREIGN KEY,
  mural_id FOREIGN KEY

)

CREATE TABLE tours (
  id PRIMARY KEY,
  artist_mural_id FOREIGN KEY,
  user_id FOREIGN KEY

)




