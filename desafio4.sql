SELECT usuario_name AS usuario,
    IF (MAX(YEAR(data_de_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
   FROM SpotifyClone.usuarios AS us
   INNER JOIN SpotifyClone.historico AS hu
	ON us.usuario_id = hu.user_id
GROUP BY usuario
ORDER BY usuario;