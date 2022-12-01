SELECT
(SELECT COUNT(*) FROM SpotifyClone.song_id) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.artist_id) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.albuns_id) AS albuns;