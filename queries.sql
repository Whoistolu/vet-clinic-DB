/*Queries that provide answers to the questions from all projects.*/

-- Find all animals whose name ends in "mon".
SELECT * from animals WHERE name LIKE '%mons';

-- List the name of all animals born between 2016 and 2019.
SELECT name from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';

-- List the name of all animals that are neutered and have less than 3 escape attempts.
SELECT name from animals WHERE neutered=true AND escape_attempts < 3;

-- List date of birth of all animals named either "Agumon" or "Pikachu".
SELECT date_of_birth from animas WHERE name IN ('Agumon', 'Pikachu');

-- List name and escape attempts of animals that weigh more than 10.5kg.
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;

-- Find all animals that are neutered.
SELECT * from animals WHERE neutered=true;

-- Find all animals not named Gabumon.
SELECT * from animals WHERE NOT name='Gabumon';

-- Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg).
SELECT * from animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

-- Update and Querry for the animal Table

-- How many animals are there?
SELECT COUNT(name) from animals;

-- How many animals have never tried to escape?
SELECT COUNT(name) from animals WHERE escape_attempts = 0;

-- What is the average weight of animals?
SELECT AVG(weight_kg) from animals;

-- Who escapes the most, neutered or not neutered animals?
SELECT name, escape_attempts from animals
WHERE escape_attempts = (select MAX(escape_attempts) from animals);

-- What is the minimum and maximum weight of each type of animal?
SELECT species, MAX(weight_kg), MIN(weight_kg) from animals GROUP BY species;

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT species, AVG(escape_attempts) FROM animals 
WHERE date_of_birth >= '1990-01-01' AND date_of_birth < '2000-01-01'
GROUP BY species;

-- Queries using join

-- What animals belong to Melody Pond?
select name from animals
JOIN owners on animals.owner_id = owners.id 
WHERE full_name = 'Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon).
select animals.*, species.name as species_name from animals
JOIN species on animals.species_id = species.id
WHERE species.name = 'Pokemon';

-- List all owners and their animals, remember to include those that don't own any animal.
SELECT animals.name as animal_name, owners.fulL_name as owner_name from owners
LEFT JOIN animals on owners.id = animals.owner_id;

-- How many animals are there per species?
SELECT species.name, COUNT(*) from animals
JOIN species ON species.id = animals.species_id
GROUP BY species.name;

-- List all Digimon owned by Jennifer Orwell.
SELECT
	animals.name as animal_name,
	owners.full_name as owner_name,
	species.name as species_name 
from animals
JOIN species
	ON species.id = animals.species_id
JOIN owners
	ON owners.id = animals.owner_id
WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';

-- List all animals owned by Dean Winchester that haven't tried to escape.
SELECT * from animals
JOIN owners
	ON animals.owner_id = owners.id
WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;

-- Who owns the most animals?
SELECT 
	owners.full_name, 
	COUNT(animals.name) as num_animals
from owners
LEFT JOIN animals
	ON owners.id = animals.owner_id
GROUP BY owners.full_name
ORDER BY num_animals DESC