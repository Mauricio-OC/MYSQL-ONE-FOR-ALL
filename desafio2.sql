-- Active: 1669845737508@@127.0.0.1@3307@SpotifyClone
SELECT
(SELECT COUNT(*) FROM SpotifyClone.song_id) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.artist_id) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.albuns_id) AS albuns;