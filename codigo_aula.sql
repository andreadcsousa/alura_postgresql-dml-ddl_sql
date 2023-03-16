-- criando o banco
CREATE DATABASE alura;

-- criando o esquema
CREATE SCHEMA academico;

-- criando as tabelas
CREATE TABLE academico.aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	sobrenome VARCHAR(255) NOT NULL,
	nascimento DATE NOT NULL
);

CREATE TABLE academico.categoria (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE academico.curso (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	categoria_id INTEGER NOT NULL REFERENCES academico.categoria(id)
);

CREATE TABLE academico.aluno_curso (
	aluno_id INTEGER NOT NULL REFERENCES academico.aluno(id),
	curso_id INTEGER NOT NULL REFERENCES academico.curso(id),
	PRIMARY KEY (aluno_id, curso_id)
);


-- inserindo os registros nas tabelas criadas
INSERT INTO aluno
	(primeiro_nome, ultimo_nome, data_nascimento)
VALUES
	('Vinicius', 'Dias', '1997-10-15'),
	('Patricia', 'Freitas', '1986-10-25'),
	('Diogo', 'Oliveira', '1984-08-27'),
	('Maria', 'Rosa', '1985-01-01');

INSERT INTO categoria (nome)
VALUES ('Front-End'), ('Back-End'), ('Banco de Dados'), ('Ciência de Dados');

INSERT INTO curso
	(nome, categoria_id)
VALUES
	('HTML', 1),
	('CSS', 1),
	('JavaScript', 1),
	('PHP', 2),
	('Java', 2),
	('C++', 2),
	('PostgreSQL', 3),
	('MySQL', 3),
	('Oracle', 3),
	('SQL Server', 3),
	('SQLite', 3),
	('Pandas', 4),
	('Machine Learning', 4),
	('Power BI', 4);

INSERT INTO aluno_curso VALUES (1,4), (1,11), (2,1), (2,2), (3,4), (3,3), (4,4), (4,6), (4,5);