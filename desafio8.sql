-- Active: 1669845737508@@127.0.0.1@3307@SpotifyClone
SELECT
a.artist_name AS artista,
b.albuns_name AS album
FROM SpotifyClone.artist_id AS a
INNER JOIN SpotifyClone.albuns_id AS b
ON a.artist_id = b.artist_id
WHERE a.artist_name LIKE 'ELIs%'
ORDER BY album ASC;