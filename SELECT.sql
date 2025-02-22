--Задание 2
SELECT name, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT name
FROM tracks
WHERE duration >= 210;

SELECT name
FROM collections
WHERE release BETWEEN 2018 AND 2020;

SELECT name
FROM executors
WHERE name NOT LIKE '% %';

SELECT name
FROM tracks
WHERE string_to_array(LOWER(name), ' ') && ARRAY ['my', 'мой'];

--Задание 3
SELECT name, COUNT (genre_id)
FROM genres, genresexecutors
WHERE id = genre_id
GROUP BY name;

SELECT COUNT(tracks.name)
FROM tracks, albums
WHERE album_id = albums.id
AND albums.release BETWEEN 2019 AND 2020;

SELECT albums.name, AVG(tracks.duration)
FROM albums, tracks
WHERE album_id = albums.id
GROUP BY albums.name;

SELECT executors.name, albums.release
FROM executors, albums, albumsexecutors
WHERE executors.id = albumsexecutors.executor_id
AND albums.id = albumsexecutors.album_id
AND NOT albums.release = 2020
GROUP BY executors.name, albums.release;

SELECT collections.name
FROM collections, tracks, collectionstracks, albumsexecutors, executors
WHERE collections.id = collectionstracks.col_id
AND collectionstracks.track_id = tracks.id
AND tracks.album_id = albumsexecutors.album_id
AND albumsexecutors.executor_id = executors.id 
AND executors.name = 'Evanescence'
GROUP BY collections.name;

