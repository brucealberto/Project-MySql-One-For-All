SELECT us.nome_usuario AS 'usuario', COUNT(hp.usuario_id) AS 'qtde_musicas_ouvidas', ROUND(SUM(c.duracao_segundos / 60),2) AS 'total_minutos' FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_reproducao AS hp ON us.usuario_id = hp.usuario_id 
INNER JOIN SpotifyClone.cancoes AS c ON hp.cancao_id = c.cancao_id GROUP BY us.nome_usuario;