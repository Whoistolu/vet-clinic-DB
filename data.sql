/* Populate database with sample data. */

BEGIN;

-- Insert 'Sam Smith 34 years old.'
INSERT INTO owners(
  full_name,
  age
) VALUES (
  'Sam Smith',
  34
);


-- Insert 'Jennifer Orwell 19 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Jennifer Orwell',
	19
);

-- Insert 'Bob 45 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Bob',
	45
);

-- Insert 'Melody Pond 77 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Melody Pond',
	77
);

-- Insert 'Dean Winchester 14 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Dean Winchester',
	14
);

-- Insert 'Jodie Whittaker 38 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Jodie Whittaker',
	38
);


INSERT INTO species (
  name
) VALUES (
  'Pokemon'
);

INSERT INTO species (
  name
) VALUES (
  'Digimon'
);

-- Animal: His name is Agumon. He was born on Feb 3rd, 2020, and currently weighs 10.23kg. He was neutered and he has never tried to escape.
INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  species_id,
  owner_id,
  weight_kg
) VALUES (
    'Agumon',
    '2020-2-3',
    0,
    true,
    2,
    1,
    10.23
);

-- Animal: Her name is Gabumon. Nov 15th, 2018, 8kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  species_id,
  owner_id,
  weight_kg
) VALUES (
    'Gabumon',
    '2018-11-15',
    2,
    true,
    2,
    2,
    8
);

-- Animal: His name is Pikachu. Jan 7th, 2021, 15.04kg. He was not neutered and he has tried to escape once.
INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  species_id,
  owner_id,
  weight_kg
) VALUES (
    'Pikachu',
    '2021-1-7',
    1,
    false,
    1,
    2,
    15.04
);
-- Animal: Her name is Devimon. May 12th, 2017, 11kg. She is neutered and she has tried to escape 5 times.
INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  species_id,
  owner_id,
  weight_kg
) VALUES (
    'Devimon',
    '2017-5-12',
    5,
    true,
    2,
    3,
    11
);

-- Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. He is not neutered and he has never tried to escape.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	species_id,
  owner_id,
  escape_attempts
) VALUES (
	'Charmander',
	'2020-02-08',
	-11,
	 false,
   1,
   4,
	 0
);

-- Animal: Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	species_id,
  owner_id,
  escape_attempts
) VALUES (
	'Plantmon',
	'2022-11-15',
	-5.7,
	 true,
	 2,
   3,
   2
);

-- Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. He was not neutered and he has tried to 3 times.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	species_id,
  owner_id,
  escape_attempts
) VALUES (
	'Squirtle',
	'1993-04-02',
	-12.13,
	false,
  1,
  4,
	3
);

-- Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg. He is neutered and he has tried to escape once.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	species_id,
  owner_id,
  escape_attempts
) VALUES (
	'Angemon',
	'2005-06-12',
	-45,
	true,
  2,
  5,
	1
);

-- Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. He is neutered and he has tried to escape 7 times.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	species_id,
  owner_id,
  escape_attempts
) VALUES (
	'Boarmon',
	'2005-06-07',
	20.4,
	true,
  2,
  5,
	7
);

-- Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg. She is neutered and she has tried to escape 3 times.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	species_id,
  owner_id,
  escape_attempts
) VALUES (
	'Blossom',
	'1998-10-13',
	17,
	true,
  1,
  4,
	3
);


COMMIT;

-- Inset vets data 


INSERT INTO vets
  (name, age, date_of_graduation) 
VALUES
  ('William Tatcher', 45, '2000-04-23'),
  ('Maisy Smith', 26, '2019-01-17'),
  ('Stephanie Mendez', 64, '1981-05-04'),
  ('Jack Harkness', 38, '2008-06-08');

-- Insert vets data

-- 'William Tatcher', 'Pokemon'
-- 'Stephanie Mendez', 'Digimon, Pokemon'
-- 'Jack Harkness', 'Digimon'

INSERT INTO specializations 
  (vet_id, species_id)
VALUES 
  (1, 1),
  (3, 1),
  (3, 2),
  (4, 2);

INSERT INTO visits
  (animal_id, vet_id, date_of_visit)
VALUES
	( (SELECT id from animals where name = 'Agumon'), (SELECT id from vets where name = 'William Tatcher'), '2020-05-24' ),
	( (SELECT id from animals where name = 'Agumon'), (SELECT id from vets where name = 'Stephanie Mendez'), '2020-07-22' ),
	( (SELECT id from animals where name = 'Gabumon'), (SELECT id from vets where name = 'Jack Harkness'), '2021-02-02' ),
	( (SELECT id from animals where name = 'Pikachu'), (SELECT id from vets where name = 'Maisy Smith'), '2020-01-05' ),
	( (SELECT id from animals where name = 'Pikachu'), (SELECT id from vets where name = 'Maisy Smith'), '2020-04-08' ),
	( (SELECT id from animals where name = 'Pikachu'), (SELECT id from vets where name = 'Maisy Smith'), '2020-05-14' ),
	( (SELECT id from animals where name = 'Devimon'), (SELECT id from vets where name = 'Stephanie Mendez'), '2021-05-04' ),
	( (SELECT id from animals where name = 'Charmander'), (SELECT id from vets where name = 'Jack Harkness'), '2021-02-24' ),
	( (SELECT id from animals where name = 'Plantmon'), (SELECT id from vets where name = 'Maisy Smith'), '2019-12-21' ),
	( (SELECT id from animals where name = 'Plantmon'), (SELECT id from vets where name = 'William Tatcher'), '2020-08-10' ),
	( (SELECT id from animals where name = 'Plantmon'), (SELECT id from vets where name = 'Maisy Smith'), '2021-Apr-07' ),
	( (SELECT id from animals where name = 'Squirtle'), (SELECT id from vets where name = 'Stephanie Mendez'), '2019-09-29' ),
	( (SELECT id from animals where name = 'Angemon'), (SELECT id from vets where name = 'Jack Harkness'), '2020-10-03' ),
	( (SELECT id from animals where name = 'Angemon'), (SELECT id from vets where name = 'Jack Harkness'), '2020-11-04' ),
	( (SELECT id from animals where name = 'Boarmon'), (SELECT id from vets where name = 'Maisy Smith'), '2019-01-24' ),
	( (SELECT id from animals where name = 'Boarmon'), (SELECT id from vets where name = 'Maisy Smith'), '2019-05-15' ),
	( (SELECT id from animals where name = 'Boarmon'), (SELECT id from vets where name = 'Maisy Smith'), '2020-02-27' ),
	( (SELECT id from animals where name = 'Boarmon'), (SELECT id from vets where name = 'Maisy Smith'), '2020-08-03' ),
	( (SELECT id from animals where name = 'Blossom'), (SELECT id from vets where name = 'Stephanie Mendez'), '2020-05-24' ),
	( (SELECT id from animals where name = 'Blossom'), (SELECT id from vets where name = 'William Tatcher'), '2021-01-11' );

COMMIT;