CREATE DATABASE sistema_escolar;

USE sistema_escolar;

CREATE TABLE alunos (
  matricula VARCHAR(10) PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE
  );

CREATE TABLE disciplinas (
  id_disciplina INT PRIMARY KEY,
  nome_disciplina VARCHAR(50) NOT NULL,
  carga_horaria INT NOT NULL CHECK (carga_horaria >= 10)
  );

CREATE TABLE matriculas (
  matricula_aluno VARCHAR(10),
  id_disciplina INT, 
PRIMARY KEY (matricula_aluno, id_disciplina),
  FOREIGN KEY (matricula_aluno) REFERENCES alunos(matricula),
  FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
  );
