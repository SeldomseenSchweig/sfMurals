\echo 'Delete and recreate sfMurals db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE sfMurals;
CREATE DATABASE sfMurals;
\connect sfMurals

\i sfMurals-schema.sql
\i sfMurals-seed.sql

-- \echo 'Delete and recreate sfMurals_test db?'
-- \prompt 'Return for yes or control-C to cancel > ' foo

-- DROP DATABASE sfMurals_test;
-- CREATE DATABASE sfMurals_test;
-- \connect sfMurals_test

-- \i sfMurals-schema.sql
