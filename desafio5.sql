SELECT cancoes_table.cancoes AS cancao, count(historico_table.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS cancoes_table
INNER JOIN SpotifyClone.historico AS historico_table
ON cancoes_table.cancoes_id = historico_table.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;