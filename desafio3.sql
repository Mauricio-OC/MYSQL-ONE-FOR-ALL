-- Active: 1669845737508@@127.0.0.1@3307@SpotifyClone
SELECT u.user_name AS usuario,
    COUNT(h.song_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.song_time)/60, 2) AS total_minutos
FROM SpotifyClone.user_id AS u
INNER JOIN SpotifyClone.play_history AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.song_id AS c
ON h.song_id = c.song_id
GROUP BY u.user_name
ORDER BY u.user_name ASC