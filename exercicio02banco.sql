CREATE DATABASE IF NOT EXISTS sistema_educacao;
USE sistema_educacao;

CREATE TABLE usuarios (
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  data_cadastro DATE NOT NULL
);

CREATE TABLE professores (
  professor_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  especialidade VARCHAR(100) NOT NULL,
  salario_base DECIMAL(10,2)
);

CREATE TABLE cursos (
  curso_id INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(255) NOT NULL UNIQUE,
  descricao TEXT,
  carga_horaria INT,
  data_lancamento DATE
);

CREATE TABLE Aulas (
    aula_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo_aula VARCHAR(255) NOT NULL,
    duracao_minutos INT NOT NULL,
    tipo_conteudo VARCHAR(50) NOT NULL
);
