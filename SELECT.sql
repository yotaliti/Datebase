SELECT  track_title, duration 
FROM 	track
WHERE 	duration = (SELECT MAX(duration) FROM track);

SELECT track_title
FROM   track 
WHERE  duration >= 210;

SELECT mixtape_title 
FROM   mixtape 
WHERE  date BETWEEN 2018 AND 2020;

SELECT singer  
FROM   musician
WHERE  singer NOT LIKE '% %';

SELECT track_title 
FROM   track 
WHERE  track_title LIKE '%My%' 
   OR  track_title LIKE '%Мой%';

SELECT   genre_title, COUNT(musician_id) 
FROM     genre g 
	     JOIN   musiciangenre m 
	     ON g.id = m.genre_id
GROUP BY genre_title;

SELECT 	 album_title, COUNT(track_title) 
FROM   	 album a
	 	 JOIN   track t 
	 	 ON a.id = t.album_id 
WHERE    date BETWEEN 2019 AND 2020
GROUP BY album_title;

SELECT 	 album_title, AVG(duration) 
FROM     album a
	 	 JOIN track t 
	 	 ON a.id = t.album_id
GROUP BY album_title;

SELECT DISTINCT singer 
FROM   musicianalbum ma
	   JOIN musician m 
	   ON m.id = ma.musician_id 
	   JOIN album a 
	   ON  a.id = ma.album_id 
WHERE  date != 2020;

SELECT DISTINCT mixtape_title  
FROM   mixtape m
	   JOIN mixtapetrack mt 
	   ON m.id = mt.mixtape_id
	   JOIN musiciantrack ma 
	   ON ma.track_id  = mt.track_id
	   JOIN musician mu 
	   ON mu.id = ma.musician_id 
WHERE  singer = 'Oxxxymiron';

SELECT   album_title  
FROM     album a
	     JOIN musicianalbum ma 
	     ON a.id = ma.album_id
	     JOIN musiciangenre mg 
	     ON ma.musician_id  = mg.musician_id
	     JOIN genre g 
	     ON g.id = mg.genre_id
GROUP BY album_title
HAVING COUNT(DISTINCT genre_title) > 1;

SELECT track_title 
FROM   track t
	   LEFT JOIN mixtapetrack m 
	   ON t.id = m.track_id 
WHERE  mixtape_id IS NULL;

SELECT singer 
FROM   musician m 
	   JOIN musicianalbum ma 
	   ON ma.musician_id = m.id 
	   JOIN album a 
	   ON a.id = ma.album_id 
	   JOIN track t 
	   ON t.album_id = a.id
WHERE  duration = (SELECT MIN(duration) FROM track)
GROUP BY singer;

 SELECT  album_title  
   FROM 	album a 
  	    JOIN track t 
	   	  ON 	a.id = t.album_id
GROUP BY album_title
HAVING COUNT(track_title) = 
	  (
	 	SELECT MIN(track_count) title_min 
	 	FROM
			(
			 SELECT album_title, COUNT(track_title)  track_count 
		 	 FROM album a JOIN track t ON a.id = t.album_id
	 	 	 GROUP BY album_title
	 	 	)  
	  );


















