Schema One : Outer Space Lots of redundancy around orbits_around
and galaxy value,
    might make sense to separate it out
ALTER TABLE planets
DROP COLUMN orbits_around,
ALTER TABLE planets
DROP COLUMN galaxy
ALTER TABLE planets ADD COLUMN orbits_id int, ADD COLUMN galaxy_id int;

-- (
--     orbits_id REFERENCES orbits_around
--     galaxy_id REFERENCES galaxy
-- )

CREATE TABLE orbits_around(id SERIAL PRIMARY KEY,
                                             orbits_name)
CREATE TABLE galaxy(id SERIAL PRIMARY KEY,
                                      galaxy_name TEXT)
INSERT INTO planets(orbits_id,
                    galaxy_id)
VALUES (1,
        1)
WHERE planets.id=1
    INSERT INTO planets(orbits_id,
                        galaxy_id)
VALUES (2,
        1)
INSERT INTO orbits_around(orbits_name)
VALUES ('The Sun')
INSERT INTO orbits_around(orbits_name)
VALUES ('Proxima Centauri')
INSERT INTO orbits_around(orbits_name)
VALUES ('Gliese 876')
INSERT INTO galaxy(galaxy_name)
VALUES ('Milky Way');

Schema Two : Air Traffic Separate out person
and location to different tables 

Schema Three : Music
Create a separate able
for album