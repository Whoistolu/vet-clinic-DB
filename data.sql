/* Populate database with sample data. */

-- Animal: His name is Agumon. He was born on Feb 3rd, 2020, and currently weighs 10.23kg. He was neutered and he has never tried to escape.
INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
) VALUES (
    'Agumon',
    '2020-2-3',
    0,
    true,
    10.23
);

-- Animal: Her name is Gabumon. Nov 15th, 2018, 8kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
) VALUES (
    'Gabumon',
    '2018-11-15',
    2,
    true,
    8
);

-- Animal: His name is Pikachu. Jan 7th, 2021, 15.04kg. He was not neutered and he has tried to escape once.
INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
) VALUES (
    'Pikachu',
    '2021-1-7',
    1,
    false,
    15.04
);
-- Animal: Her name is Devimon. May 12th, 2017, 11kg. She is neutered and she has tried to escape 5 times.
INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
) VALUES (
    'Devimon',
    '2017-5-12',
    5,
    true,
    11
);

-- Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. He is not neutered and he has never tried to escape.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
	'Charmander',
	'2020-02-08',
	-11,
	 false,
	 0
);

-- Animal: Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
	'Plantmon',
	'2022-11-15',
	-5.7,
	 true,
	 2
);

-- Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. He was not neutered and he has tried to 3 times.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
	'Squirtle',
	'1993-04-02',
	-12.13,
	false,
	3
);

-- Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg. He is neutered and he has tried to escape once.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
	'Angemon',
	'2005-06-12',
	-45,
	true,
	1
);

-- Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. He is neutered and he has tried to escape 7 times.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
	'Boarmon',
	'2005-06-07',
	20.4,
	true,
	7
);

-- Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg. She is neutered and she has tried to escape 3 times.
INSERT into animals (
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
	'Blossom',
	'1998-10-13',
	17,
	true,
	3
);
