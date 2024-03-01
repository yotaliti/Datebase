CREATE TABLE IF NOT EXISTS genre (
	id   SERIAL 	 PRIMARY KEY,
	genre_title VARCHAR(40) UNIQUE
);

CREATE TABLE IF NOT EXISTS musician (
	id 	 SERIAL 	   PRIMARY KEY,
	singer VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS musiciangenre (
	musician_id INTEGER REFERENCES Musician(id),
	genre_id 	INTEGER REFERENCES Genre(id),
				CONSTRAINT pk PRIMARY KEY (musician_id, genre_id)
);

CREATE TABLE IF NOT EXISTS album (
	id 	 SERIAL 	 PRIMARY KEY,
	album_title 	 VARCHAR(40) NOT NULL,
	date INTEGER 	 CHECK(date > 2000)
);

CREATE TABLE IF NOT EXISTS musicianalbum (
	musician_id INTEGER REFERENCES Musician(id),
	album_id 	INTEGER REFERENCES Album(id),
				CONSTRAINT pn PRIMARY KEY (musician_id, album_id)
);


CREATE TABLE IF NOT EXISTS  track (
	id 		 SERIAL 	 PRIMARY KEY,
	album_id INTEGER 	 NOT NULL REFERENCES Album (id),
	track_title 	 VARCHAR(40) NOT NULL,
	duration INTEGER 	 NOT NULL
);

CREATE TABLE IF NOT EXISTS musiciantrack (
	musician_id INTEGER REFERENCES musician(id),
	track_id   	INTEGER REFERENCES track(id),
			   CONSTRAINT pt PRIMARY KEY(musician_id, track_id)
);

CREATE TABLE IF NOT EXISTS mixtape (
	id 	 SERIAL 	 PRIMARY KEY,
	mixtape_title	 VARCHAR(40) NOT NULL,
	date INTEGER 	 CHECK(date > 2000)
);

CREATE TABLE IF NOT EXISTS mixtapetrack (
	mixtape_id INTEGER REFERENCES Mixtape(id),
	track_id   INTEGER REFERENCES Track(id),
			   CONSTRAINT pp PRIMARY KEY(mixtape_id, track_id)
);








