/* Database schema to keep the structure of entire database. */

DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS species;

CREATE TABLE owners (
    id SERIAL NOT NULL PRIMARY KEY,
    full_name varchar(100),
    AGE int
);

CREATE TABLE species (
    id SERIAL NOT NULL PRIMARY KEY,
    name varchar(100)
);

CREATE TABLE animals (
    id SERIAL NOT NULL PRIMARY KEY,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal,
    species_id INT,
    owner_id INT, 
    CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
    CONSTRAINT fk_owners FOREIGN KEY(owner_id) REFERENCES owners(id)