SELECT COUNT(DISTINCT(c.cancao_id)) AS 'cancoes', COUNT(DISTINCT(art.artista_id)) AS 'artistas', COUNT(DISTINCT(alb.album_id)) AS 'albuns' FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.album AS alb ON c.album_id = alb.album_id
INNER JOIN SpotifyClone.artista AS art ON alb.artista_id = art.artista_id;