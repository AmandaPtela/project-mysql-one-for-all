SELECT 
	usuario_name AS usuario,
    COUNT(historico_table.user_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(cancoes_table.duracao_segundos / 60) , 2) AS total_minutos
FROM SpotifyClone.usuarios AS user_table

INNER JOIN SpotifyClone.historico AS historico_table

ON historico_table.user_id = user_table.usuario_id

INNER JOIN SpotifyClone.cancoes AS cancoes_table

ON cancoes_table.cancoes_id = historico_table.user_id
GROUP BY usuario
ORDER BY usuario;