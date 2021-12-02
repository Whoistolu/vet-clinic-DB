BEGIN;
UPDATE animals
SET species = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals 
SET species = 'digimon'
WHERE name LIKE '%mon'; 
UPDATE animals 
SET species = 'pokemon'
WHERE species is NULL; 
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;


BEGIN;
DELETE FROM animals
WHERE date_of_birth > '2022-01-01';
SAVEPOINT delete_by_date;
UPDATE animals
SET weight_kg = -1 * weight_kg;
ROLLBACK TO delete_by_date;
UPDATE animals
SET weight_kg = -1 * weight_kg
WHERE weight_kg < 0;
SELECT * from animals;
COMMIT;
