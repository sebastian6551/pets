-- Database: mande_db

-- DROP DATABASE mande_db;

CREATE DATABASE mande_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

\c mande_db

CREATE TABLE type(
	type_id serial PRIMARY KEY,
	type varchar(60),
	breed varchar(60),
	description varchar(60)
);

CREATE TABLE pet(
	pid serial PRIMARY KEY,
	pet_name varchar(60),
	age integer,
    type_id integer references type
);


CREATE TABLE toy(
	tid serial PRIMARY KEY,
	name varchar(60),
	color varchar(60),
    pet_id integer references pet
);
