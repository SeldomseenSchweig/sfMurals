

CREATE TABLE users (
  username VARCHAR(25) PRIMARY KEY,
  password TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL
    CHECK (position('@' IN email) > 1),
  is_admin BOOLEAN NOT NULL DEFAULT FALSE
);



CREATE TABLE neighborhoods (
  id INT PRIMARY KEY,
  neighborhood TEXT NOT NULL

);


CREATE TABLE tours (
  id SERIAL PRIMARY KEY,
  mural INT,
  user_username text REFERENCES users(username)

);




