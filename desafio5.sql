-- Active: 1669845737508@@127.0.0.1@3307@SpotifyClone
SELECT song.song_name AS cancao,
COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.song_id AS song
INNER JOIN SpotifyClone.play_history AS h
ON song.song_id = h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, song.song_name
LIMIT 2;