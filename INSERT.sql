-- Жанры
INSERT INTO genres (genre_name)
VALUES
    ('POP'), 
    ('ROCK'),
    ('DISCO');
    
-- Исполнители
INSERT INTO artists (artist_name)
VALUES
    ('M.Jackson'),
    ('BeeGees'),
    ('Boney M'),
    ('Linkin Park'),
    ('AC/DC');
    
-- Связующая таблица "Исполнители - Жанры"
INSERT INTO artistgenres (artist_id, genre_id)
VALUES
    (1, 1), -- POP
    (2, 1), -- POP
    (4, 2), -- ROCK
    (5, 2), -- ROCK
    (3, 3), -- DISCO
    (2, 3), -- DISCO
    (4, 1), -- POP
    (1, 2); -- ROCK
    
-- Альбомы
INSERT INTO albums (album_name, release_year)
VALUES
    ('Invincible', 1995),
    ('Happy Pride!', 2023),
    ('Daddy Cool', 2018),
    ('Hybrid Theory', 2020),
    ('High Voltage', 2019);

-- Связующая таблица "Исполнители - Альбомы"
INSERT INTO artistalbums (artist_id, album_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (3, 2),
    (5, 4);
    
-- Треки
INSERT INTO tracks (track_name, track_time, album_id)
VALUES    
    ('Beat it', 310, 1),
    ('Stayin Alive', 210, 2),
    ('Daddy cool', 215, 3),
    ('my Numb', 180, 4),
    ('Back in black', 205, 5);    

-- Сборники
INSERT INTO compilations (compilation_name, release_year)
VALUES
    ('collections1', 1995),
    ('collections2', 2023),
    ('collections3', 2020),
    ('collections4', 2019);
    
-- Связующая таблица "Сборники - Треки"
INSERT INTO compilationtracks (compilation_id, track_id)
VALUES
    (1, 1),
    (2, 2),
    (2, 3),
    (3, 3),
    (4, 4),
    (4, 5),
    (3, 4);