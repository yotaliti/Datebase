INSERT INTO genre (genre_title)
VALUES ('Рок'),('Реп'),('Техно');

INSERT INTO musician (singer)
VALUES ('Oxxxymiron'),('Би-2'),('Boris Brejcha'),('Slipknot');

INSERT INTO album (album_title, date)
VALUES ('Горгород', 2019),('Горизонт событий', 2018),
	   ('Mein Wahres Ich', 2008),('Vol. 3: The Subliminal Verses', 2009);

INSERT INTO track (album_id, track_title, duration)
VALUES (1,'Не с начала', 125), (2,'Лётчик', 351),(3, 'My Love', 451), 
	   (4, 'Duality', 214), (4, 'Before I Forget', 262),
	   (2,'Пора возвращаться домой', 288), (1, 'Где нас нет', 226);
	  	 
INSERT INTO mixtape (mixtape_title, date)
VALUES ('2015-2020', 2020), ('2005-2010', 2010),
	   ('Best rock', 2020), ('Dance', 2017);

INSERT INTO musiciangenre (musician_id, genre_id)
VALUES (1,2),(1,1),(2,1),(3,3),(4,1);

INSERT INTO musicianalbum (musician_id, album_id)
VALUES (1,1),(1,2),(2,2),(3,3),(4,4);

INSERT INTO musiciantrack (musician_id, track_id)
VALUES (1,1),(1,6),(1,7),(2,2),(2,6),(3,3),(4,4),(4,5);

INSERT INTO mixtapetrack (mixtape_id, track_id)
VALUES (1,1),(1,2),(2,3),(2,4),(2,5),
	   (3,2),(3,4),(3,5),(4,1),(4,3);



