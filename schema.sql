/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal,
    species_id INT,
    owner_id INT, 
);


CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(100),
    AGE int
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(100)
);

/* MODIFY animals table*/

ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE animals
    ADD species_id INT,
    ADD CONSTRAINT species_id FOREIGN KEY(species_id) REFERENCES species(id);

ALTER TABLE animals
    ADD owners_id INT,
    ADD CONSTRAINT owners_id FOREIGN KEY(owners_id) REFERENCES owners(id);

    CREATE TABLE vets (
    id serial not null primary key,
    name varchar(100),
    age int,
    date_of_graduation date
);

CREATE TABLE specializations (
    vet_id int,
    species_id int,
    CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
    CONSTRAINT fk_vets FOREIGN KEY(vet_id) REFERENCES vets(id)
);

CREATE TABLE vets (
    id serial not null primary key,
    name varchar(100),
    age int,
    date_of_graduation date
);