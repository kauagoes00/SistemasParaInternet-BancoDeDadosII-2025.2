CREATE DATABASE academia_de_ginastica;

USE academia_de_ginastica;

CREATE TABLE alunos (
  id_aluno INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE,
  email VARCHAR(50) UNIQUE,
  ativo TINYINT(1) DEFAULT 1
  );
