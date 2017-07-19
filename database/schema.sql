DROP TABLE IF EXISTS artists;

CREATE TABLE IF NOT EXISTS artists(
  id SERIAL PRIMARY KEY,
  name VARCHAR(140),
  country VARCHAR(140),
  genre VARCHAR(140));

DROP TABLE IF EXISTS songs;

CREATE TABLE IF NOT EXISTS songs (
  id SERIAL PRIMARY KEY,
  artist VARCHAR(140),
  title VARCHAR(140));

INSERT INTO artists (name, country, genre)
    VALUES ('Taylor Swift', 'US', 'Pop');
INSERT INTO artists (name, country, genre)
    VALUES ('Led Zeppelin', 'US', 'Hard rock');
INSERT INTO artists (name, country, genre)
    VALUES ('ABBA', 'Sweden', 'Disco');
INSERT INTO artists (name, country, genre)
    VALUES ('Queen', 'UK', 'Rock');
INSERT INTO artists (name, country, genre)
    VALUES ('Celine Dion', 'Canada', 'Pop');
INSERT INTO artists (name, country, genre)
    VALUES ('Meatloaf', 'US', 'Hard rock');
INSERT INTO artists (name, country, genre)
    VALUES ('Garth Brooks', 'US', 'Country');
INSERT INTO artists (name, country, genre)
    VALUES ('Shania Twain', 'Canada', 'Country');
INSERT INTO artists (name, country, genre)
    VALUES ('Rihanna', 'US', 'Pop');
INSERT INTO artists (name, country, genre)
    VALUES ('Guns N Roses', 'US', 'Hard rock');
INSERT INTO artists (name, country, genre)
    VALUES ('Gloria Estefan', 'US', 'Pop');
INSERT INTO artists (name, country, genre)
    VALUES ('Bob Marley', 'Jamaica', 'Reggae');


INSERT INTO songs (artist, title)
    VALUES ('Taylor Swift', 'Shake it off');
INSERT INTO songs (artist, title)
    VALUES ('Rihanna', 'Stay');
INSERT INTO songs (artist, title)
    VALUES ('Celine Dion', 'My heart will go on');
INSERT INTO songs (artist, title)
    VALUES ('Celine Dion', 'A new day has come');
INSERT INTO songs (artist, title)
    VALUES ('Shania Twain', 'Party for two');
INSERT INTO songs (artist, title)
    VALUES ('Gloria Estefan', 'Conga');
INSERT INTO songs (artist, title)
    VALUES ('Led Zeppelin', 'Stairway to heaven');
INSERT INTO songs (artist, title)
    VALUES ('ABBA', 'Mamma mia');
INSERT INTO songs (artist, title)
    VALUES ('Queen', 'Bicycle Race');
INSERT INTO songs (artist, title)
    VALUES ('Queen', 'Bohemian Rhapsody');
INSERT INTO songs (artist, title)
    VALUES ('Guns N Roses', 'Dont cry');

SELECT artists.name AS name, songs.title AS title FROM artists 
      JOIN songs
      ON artists.name = songs.artist
