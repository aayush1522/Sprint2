create database spotify;
show databases;
use spotify;


CREATE TABLE Tracks (
    track_id INT PRIMARY KEY AUTO_INCREMENT,
    track_name VARCHAR(255) NOT NULL,
    artist_name VARCHAR(255) NOT NULL,
    artist_count INT,
    released_year INT,
    released_month INT,
    released_day INT,
    streams BIGINT,
    bpm INT,
    musical_key VARCHAR(5),   
    musical_mode VARCHAR(10)  
);


CREATE TABLE ChartRankings (
    ranking_id INT PRIMARY KEY AUTO_INCREMENT,
    track_id INT,
    in_spotify_charts INT,
    in_apple_charts INT,
    in_deezer_charts INT,
    in_shazam_charts INT,
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

