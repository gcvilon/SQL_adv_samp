INSERT INTO genres (name)
VALUES 	('Rock'),
	   	('Hip-Hop'),
	   	('Rap');
	   
INSERT INTO executors (name)
VALUES 	('Linkin Park'),
	   	('Nick Kibler'),
	   	('Evanescence'),
	   	('3 Doors Down'),
	   	('50 Cent');
	   	
INSERT INTO genresexecutors (genre_id, executor_id)
VALUES 	(1, 1),
		(2, 2),
		(1, 3),
		(1, 4),
		(3, 5);

INSERT INTO albums (name, release)
VALUES	('Love Again', 2020),
		('Fallen', 2023),
		('The Open Door', 2006),
		('Time Of My Life', 2011),
		('Best Of 50 Cent', 2017);

INSERT INTO albumsexecutors (album_id, executor_id)
VALUES	(1, 2),
		(2, 3),
		(3, 3),
		(4, 4),
		(5, 5);

INSERT INTO tracks (name, duration, album_id)
VALUES 	('Untitled', 316, 1),
		('Everybody’s Fool', 195, 2),
		('Call Me When Youre Sober', 214, 3),
		('Broken', 258, 3),
		('Time Of My Life', 203, 4),
		('Just A Lil Bit', 239, 5),
		('Disco Inferno', 212, 5);

INSERT INTO collections (name, release)
VALUES	('Love Again', 2020),
		('Throwback Thursday Mix Vol. 4', 2019),
		('Emo Rock', 2021),
		('Sins&Rock', 2011);

INSERT INTO collectionstracks (col_id, track_id)
VALUES	(1, 1),
		(2, 2),
		(3, 3),
		(3, 4),
		(4, 5);
		