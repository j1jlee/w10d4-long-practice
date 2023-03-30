-- Find All the Toys for Hermione's cats
-- Your code here

--3 factor
-- SELECT toys.name
-- FROM cat_owners
-- JOIN cats ON (cats.id = cat_owners.cat_id)
-- JOIN toys ON (cats.id = toys.cat_id)
-- JOIN owners ON (owners.id = cat_owners.owner_id)
-- WHERE (owners.first_name = 'Hermione');

SELECT toys.name
FROM cat_owners
JOIN toys ON (cat_owners.cat_id = toys.cat_id)
JOIN owners ON (owners.id = cat_owners.owner_id)
WHERE (owners.first_name = 'Hermione');
