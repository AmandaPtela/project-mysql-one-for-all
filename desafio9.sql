SELECT COUNT(h.user_id = 1) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico AS h
ON u.usuario_name = 'Barbara Liskov' AND h.user_id = 1;