SELECT ar.artista AS artista,
	al.album AS album
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = 3 AND ar.artista = 'Elis Regina'

GROUP BY artista, album
ORDER BY album;