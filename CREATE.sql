CREATE TABLE IF NOT EXISTS Genres (
	id          SERIAL       PRIMARY KEY,
	name        VARCHAR(30)  NOT NULL
);

CREATE TABLE IF NOT EXISTS Executors (
	id          SERIAL       PRIMARY KEY,
	name        VARCHAR(60)  NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresExecutors (
	genre_id    INTEGER      REFERENCES Genres(id),
	executor_id INTEGER      REFERENCES Executors(id),
				CONSTRAINT ge 
				PRIMARY KEY (genre_id, executor_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id          SERIAL       PRIMARY KEY,
	name        VARCHAR(100) NOT NULL,
	release 	INTEGER 	 CHECK (release >= 0)
);

CREATE TABLE IF NOT EXISTS AlbumsExecutors (
	album_id 	INTEGER 	 REFERENCES Albums(id),
	executor_id INTEGER 	 REFERENCES Executors(id),
				CONSTRAINT ae 
				PRIMARY KEY (album_id, executor_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id 			SERIAL 		 PRIMARY KEY,
	name 		VARCHAR(100) NOT NULL,
	duration 	INTEGER 	 NOT NULL,
	album_id 	INTEGER 	 REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections (
	id 			SERIAL 		 PRIMARY KEY,
	name 		VARCHAR(100) NOT NULL,
	release 	INTEGER 	 CHECK (release >= 0)
);

CREATE TABLE IF NOT EXISTS CollectionsTracks(
	col_id 	 	INTEGER 	 REFERENCES Collections(id),
	track_id 	INTEGER 	 REFERENCES Tracks(id),
				CONSTRAINT ct 
				PRIMARY KEY (col_id, track_id)
);