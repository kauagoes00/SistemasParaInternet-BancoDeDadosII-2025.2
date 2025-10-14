CREATE DATABASE rede_social;

USE rede_social;

CREATE TABLE usuarios (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome_usuario VARCHAR(50) UNIQUE NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

CREATE TABLE posts (
  id_post INT PRIMARY KEY,
  id_usuario INT,
  conteudo TEXT NOT NULL,
  data_post TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
  );
