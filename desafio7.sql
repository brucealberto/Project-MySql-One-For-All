SELECT art.nome_artista AS 'artista', alb.nome_album AS 'album', COUNT(seg.artista_id) AS 'seguidores' FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguidor_artista AS seg ON alb.artista_id = seg.artista_id GROUP BY art.nome_artista,alb.nome_album ORDER BY `seguidores` DESC, art.nome_artista,alb.nome_album;