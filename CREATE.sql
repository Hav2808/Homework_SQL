CREATE TABLE IF NOT EXISTS Genres (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(100));

--добавление ограничений в таблицу Genres:
	
ALTER TABLE Genres 
	ALTER COLUMN name 
	SET NOT NULL;

ALTER TABLE Genres
	ADD UNIQUE (name);


CREATE TABLE IF NOT EXISTS Performers (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(100));

CREATE TABLE IF NOT EXISTS Genres_Performers (
	Genres_ID INTEGER REFERENCES Genres(ID),
	Performers_ID INTEGER REFERENCES Performers(ID),
	CONSTRAINT pk PRIMARY KEY (Genres_ID, Performers_ID)
);

	
CREATE TABLE IF NOT EXISTS Performers_Album (
	Album_ID INTEGER REFERENCES Album(ID),
	Performers_ID INTEGER REFERENCES Performers(ID),
	CONSTRAINT pkp PRIMARY KEY (Album_ID, Performers_ID)
);

CREATE TABLE IF NOT EXISTS Track (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(100),
	Duration TIME NOT NULL);

--ALTER TABLE Track ADD FOREIGN KEY Album_ID REFERENCES Album(ID);

-- Добавить столбец + связка внешнего ключа
ALTER TABLE Track ADD Album_id INTEGER REFERENCES Album(ID);


ALTER TABLE Album DROP COLUMN Track_ID CASCADE;
      
      
      
CREATE TABLE IF NOT EXISTS Album (
	ID SERIAL PRIMARY KEY,
	Track_ID INTEGER REFERENCES Track(ID),
	name VARCHAR(100),
	Year_of_release INT);

--добавление ограничений в таблицу Album:
ALTER TABLE Album
ADD CHECK (year_of_release > 1998);

ALTER TABLE Album
ALTER COLUMN year_of_release TYPE INTEGER USING year_of_release::INTEGER

	
CREATE TABLE IF NOT EXISTS Collection (
	ID SERIAL PRIMARY KEY,
	name VARCHAR(100),
	Year_of_release VARCHAR(100));


CREATE TABLE IF NOT EXISTS Collection_Track (
	Track_ID INTEGER REFERENCES Track(ID),
	Collection_ID INTEGER REFERENCES Collection(ID),
	CONSTRAINT t_ct_c PRIMARY KEY (Track_ID, Collection_ID)
);



