SET client_min_messages TO WARNING;

\echo "Database cleaning..."

DROP SCHEMA IF EXISTS public CASCADE;
DROP SCHEMA IF EXISTS main CASCADE;

\echo "Database cleaned"

CREATE SCHEMA IF NOT EXISTS utils;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA utils;

\echo "'main' schema creating..."
CREATE SCHEMA IF NOT EXISTS main;

CREATE TABLE main.contacts (
    id       UUID PRIMARY KEY DEFAULT utils.uuid_generate_v4(),
    name     VARCHAR NOT NULL
);

\echo "'main' schema created"
