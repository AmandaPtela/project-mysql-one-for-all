SELECT COUNT(musicas) AS cancoes,
	(SELECT COUNT(artista) FROM SpotifyClone.artistas),
  (SELECT COUNT(album) FROM SpotifyClone.albuns)
FROM SpotifyClone.musicas;