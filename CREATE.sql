-- Создание таблицы "Исполнители"
CREATE TABLE IF NOT EXISTS Artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL
);

-- Создание таблицы "Жанры"
CREATE TABLE IF NOT EXISTS Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Создание связующей таблицы для отношения "многие ко многым" между "Исполнители" и "Жанры"
CREATE TABLE IF NOT EXISTS ArtistGenres (
    artist_id INTEGER REFERENCES Artists(artist_id),
    genre_id INTEGER REFERENCES Genres(genre_id),
    CONSTRAINT pk_ArtistGenres PRIMARY KEY (artist_id, genre_id)
);

-- Создание таблицы "Альбомы"
CREATE TABLE IF NOT EXISTS Albums (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(200) NOT NULL,
    release_year INTEGER
);

-- Создание связующей таблицы для отношения "многие ко многим" между "Исполнители" и "Альбомы"
CREATE TABLE IF NOT EXISTS ArtistAlbums (
    artist_id INTEGER REFERENCES Artists(artist_id),
    album_id INTEGER REFERENCES Albums(album_id),
    CONSTRAINT pk_ArtistAlbums PRIMARY KEY (artist_id, album_id)
);

-- Создание таблицы "Треки"
CREATE TABLE IF NOT EXISTS Tracks (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(200) NOT NULL,
    track_time INTEGER,
    album_id INTEGER REFERENCES Albums(album_id)
);

-- Создание таблицы "Сборники"
CREATE TABLE IF NOT EXISTS Compilations (
    compilation_id SERIAL PRIMARY KEY,
    compilation_name VARCHAR(200) NOT NULL,
    release_year INTEGER
);

-- Создание связующей таблицы для отношения "многие ко многим" между "Сборники" и "Треки"
CREATE TABLE IF NOT EXISTS CompilationTracks (
    compilation_id INTEGER REFERENCES Compilations(compilation_id),
    track_id INTEGER REFERENCES Tracks(track_id),
    CONSTRAINT pk_CompilationTracks PRIMARY KEY (compilation_id, track_id)
);

