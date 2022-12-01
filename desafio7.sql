-- Active: 1669845737508@@127.0.0.1@3307@SpotifyClone
SELECT 
a.artist_name AS artista,
b.albuns_name AS album,
COUNT(s.user_id) AS seguidores
FROM SpotifyClone.artist_id AS a
INNER JOIN SpotifyClone.albuns_id AS b
ON b.artist_id = a.artist_id
INNER JOIN SpotifyClone.follow_artist AS s
ON s.artist_id = a.artist_id
GROUP BY artista, album
ORDER BY
 seguidores DESC,
 artista ASC,
 album ASC;