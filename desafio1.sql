-- Active: 1669845737508@@127.0.0.1@3307
DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.sub_id(
      sub_id INT PRIMARY KEY AUTO_INCREMENT,
      sub_type VARCHAR(50) NOT NULL,
      sub_price DOUBLE NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artist_id(
      artist_id INT PRIMARY KEY AUTO_INCREMENT,
      artist_name VARCHAR(50) NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns_id(
      albuns_id INT PRIMARY KEY AUTO_INCREMENT,
      albuns_name VARCHAR(50) NOT NULL,
      artist_id INT NOT NULL,
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist_id (artist_id)

  ) engine = InnoDB;

   CREATE TABLE SpotifyClone.user_id(
      user_id INT PRIMARY KEY AUTO_INCREMENT,
      user_name VARCHAR(50) NOT NULL,
      sub_date DATE NOT NULL,
      age INT NOT NULL,
      sub_id INT NOT NULL,
      Foreign Key (sub_id) REFERENCES SpotifyClone.sub_id (sub_id)

  ) engine = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');
    //iniciando projeto