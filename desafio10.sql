SELECT c.nome_cancao AS 'nome', COUNT(hp.cancao_id) AS 'reproducoes' FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.plano AS pl ON us.plano_id = pl.plano_id
INNER JOIN SpotifyClone.historico_reproducao AS hp ON us.usuario_id = hp.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON hp.cancao_id = c.cancao_id WHERE pl.nome_plano IN('gratuito', 'pessoal') GROUP BY c.nome_cancao ORDER BY c.nome_cancao;