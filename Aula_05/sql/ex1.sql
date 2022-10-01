DROP DATABASE IF EXISTS torneio;
CREATE DATABASE torneio;

USE torneio;

CREATE TABLE Jogadores(
	id INT NOT NULL,
    nome_equipe VARCHAR(30) NOT NULL,
    nome VARCHAR(80) NOT NULL,
    preferencia INT,
    PRIMARY KEY(id)
);

CREATE TABLE Equipes(
	nome VARCHAR(30) NOT NULL,
    grito VARCHAR(80) NOT NULL,
    PRIMARY KEY(nome)
);

ALTER TABLE Jogadores
		ADD CONSTRAINT fk_equipe
			FOREIGN KEY (nome_equipe)
				REFERENCES Equipes(nome);