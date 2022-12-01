-- Active: 1669845737508@@127.0.0.1@3307@SpotifyClone
SELECT u.user_name AS usuario,
IF(MAX(YEAR(h.play_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.user_id AS u
INNER JOIN SpotifyClone.play_history AS h
ON u.user_id = h.user_id
GROUP BY usuario
ORDER BY usuario ASC;