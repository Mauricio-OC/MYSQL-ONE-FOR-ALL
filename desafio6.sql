-- Active: 1669845737508@@127.0.0.1@3307@SpotifyClone
SELECT
FORMAT(MIN(sub.sub_price), 2) AS faturamento_minimo,
FORMAT(MAX(sub.sub_price), 2) AS faturamento_maximo,
FORMAT(AVG(sub.sub_price), 2) AS faturamento_medio,
FORMAT(SUM(sub.sub_price), 2) AS faturamento_total
FROM SpotifyClone.sub_id AS sub
INNER JOIN SpotifyClone.user_id AS usuario
ON sub.sub_id = usuario.sub_id;