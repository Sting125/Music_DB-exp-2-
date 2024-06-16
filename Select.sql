--1.название и продолжительность самого длительного трека
SELECT track_name, track_time
FROM Tracks
ORDER BY track_time DESC
LIMIT 1;

--2.Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name
FROM Tracks
WHERE track_time >= 210;

--3.Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT compilation_name
FROM Compilations
WHERE release_year BETWEEN 2018 AND 2020;

--4.Исполнители, чьё имя состоит из одного слова
SELECT artist_name
FROM Artists
WHERE artist_name NOT LIKE '% %';

--5.Название треков, которые содержат слово «мой» или «my»
SELECT track_name
FROM Tracks
WHERE track_name ILIKE 'мой' 
   OR track_name ILIKE 'мой %' 
   OR track_name ILIKE '% мой' 
   OR track_name ILIKE '% мой %' 
   OR track_name ILIKE 'my' 
   OR track_name ILIKE 'my %' 
   OR track_name ILIKE '% my' 
   OR track_name ILIKE '% my %';

