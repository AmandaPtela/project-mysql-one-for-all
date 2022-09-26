DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.planos(
      plano_id INT AUTO_INCREMENT PRIMARY KEY,
      plano VARCHAR(255) NOT NULL,
      valor_plano FLOAT NOT NULL
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.usuarios(
      usuario_id INT UNIQUE PRIMARY KEY,
      usuario VARCHAR (255) NOT NULL,
      idade INT NOT NULL,
      plano_id INT NOT NULL,
      FOREIGN KEY planos(plano_id) REFERENCES planos(plano_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.artistas(
    artista_id INT AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR (255) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.musicas(
    musicas_id INT AUTO_INCREMENT PRIMARY KEY,
    musicas VARCHAR (255) NOT NULL,
    duracao_segundos INT,
    album_id INT,
    FOREIGN KEY albuns(album_id) REFERENCES albuns(album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR (255) NOT NULL,
    artista_id INT,
    ano_lancamento INT,
    FOREIGN KEY artista(artista_id) REFERENCES artistas(artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico(
    musicas_id INT,
    usuario_id INT,
    data_de_reproducao datetime,
    FOREIGN KEY musicas(musicas_id) REFERENCES musicas(musicas_id),
    FOREIGN KEY usuario(usuario_id) REFERENCES usuarios(usuario_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.seguidores(
    usuario_id INT,
    artista_id INT,
    PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
  ) engine = InnoDB;

	INSERT INTO SpotifyClone.artistas (artista)
  VALUES
    ('Beyonce'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guaurdian'),
    ('Nina Simone');
    
	INSERT INTO SpotifyClone.albuns (album, artista_id, ano_lancamento)
	VALUES
    ('Renaissance', 1, 2022),
    ('Jazz', 2, 1978),
    ('Hot Space', 2, 1982),
    ('Falso Brilhante', 3, 1998),
    ('Vento de Maio', 3, 2001),
    ('QVVJFA?', 4, 2003),
    ('Somewhere Far Beyond', 5, 2007),
    ('I Put A Spell On You', 6, 2012);
  
	INSERT INTO SpotifyClone.planos (plano, valor_plano)
	VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitario', 5.99),
    ('pessoal', 6.99);

  INSERT INTO SpotifyClone.usuarios (usuario_id, usuario, idade, plano_id)
  VALUES
    (1, 'Barbara Liskov', 82, 1),
    (2, 'Robert Cecil Martin', 58, 1),
    (3, 'Ada Lovelace', 37, 2,),
    (4, 'Martin Fowler', 46, 2),
    (5, 'Sandi Metz', 58, 2,),
    (6, 'Paulo Freire',19, 3),
    (7, 'Bell Hooks', 26, 3),
    (8, 'Christopher Alexander', 85, 4),
    (9, 'Judith Butler', 45, 4),
    (10, 'Jorge Amado', 58, 4);
    
  
	INSERT INTO SpotifyClone.musicas(musicas, duracao_segundos, album_id)
  VALUES
    ('Samba em Paris', 267, 6),
    ("VIRGO'S GROOVE", 369, 1),
    ('Feeling Good', 100, 8),
    ('Medo de Amar é o Medo de Ser Livre', 207, 5),
    ("Don't Stop Me Now", 203, 2),
    ("The Bard's Song", 244, 7),
    ('ALIEN SUPERSTAR', 116, 1),
    ('Under Pressure', 152, 3),
    ('BREAK MY SOUL', 279, 1),
    ('Como Nossos Pais', 105, 4);
    

  
	INSERT INTO SpotifyClone.historico(musicas_id, usuario_id, data_de_reproducao)
	VALUES
	  (1, 1, '2022-02-28 10:45:55'),
    (2, 1, '2020-05-02 05:30:35'),
    (3, 1, '2020-03-06 11:22:33'),
    (3, 2, '2022-08-05 08:05:17'),
    (4, 2, '2020-01-02 07:40:33'),
    (3, 3, '2020-11-13 16:55:13'),
    (2, 3, '2020-12-05 18:38:30'),
    (1, 4, '2021-08-15 17:10:10'),
    (1, 5, '2022-01-09 01:44:33'),
    (8, 4, '2020-08-06 15:23:43'),
    (4, 6, '2017-01-24 00:31:17'),
    (9, 6, '2017-10-12 12:35:20'),
    (5, 7, '2011-12-15 22:30:49'),
    (5, 8, '2012-03-17 14:56:41'),
    (6, 9, '2022-02-24 21:14:22'),
    (7, 10, '2015-12-13 08:30:22');
    

  
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id)
	VALUES
	  (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 1),
    (7, 6),
    (9, 3),
    (10, 2);