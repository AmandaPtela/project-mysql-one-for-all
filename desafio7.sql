SELECT ar.artista AS artista,
	al.album AS album,
    COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.seguidores AS seg
ON seg.artista_id = ar.artista_id

GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;