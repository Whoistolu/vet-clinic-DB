/* Database schema to keep the structure of entire database. */

IF EXISTS(SELECT name FROM sys.tables WHERE NAME LIKE '%animals%')
BEGIN
DROP TABLE animals;
END

IF EXISTS(SELECT name FROM sys.tables WHERE NAME LIKE '%owners%')
BEGIN
DROP TABLE owners;
END


IF EXISTS(SELECT name FROM sys.tables WHERE NAME LIKE '%species%')
BEGIN
DROP TABLE species;
END


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
);