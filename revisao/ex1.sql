DROP DATABASE IF EXISTS agro;
CREATE DATABASE agro;
USE agro;

DROP TABLE IF EXISTS fazenda;
DROP TABLE IF EXISTS plantacao;
DROP TABLE IF EXISTS inseticida;
DROP TABLE IF EXISTS plantcao_inseticida;
DROP TABLE IF EXISTS lote;

CREATE TABLE fazenda(
	id_fazenda INT AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    PRIMARY KEY(id_fazenda)
);

CREATE TABLE plantacao(
	id_plantacao INT AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    PRIMARY KEY (id_plantacao)
);

CREATE TABLE inseticida(
	id_inseticida INT AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    preco DECIMAL (8, 2) NOT NULL,
    PRIMARY KEY (id_inseticida)
);

CREATE TABLE plantacao_inseticida(
	id_plantacao INT,
    id_inseticida INT,
    frequencia INT NOT NULL
);

ALTER TABLE plantacao_inseticida
	ADD CONSTRAINT fk_plantacao_inseticida_plantacao
		FOREIGN KEY (id_plantacao) REFERENCES plantacao(id_plantacao);

ALTER TABLE plantacao_inseticida
	ADD CONSTRAINT fk_plantacao_inseticida_inseticida
		FOREIGN KEY (id_inseticida) REFERENCES inseticida(id_inseticida);
        
CREATE TABLE lote(
	id_lote INT AUTO_INCREMENT,
    id_fazenda INT NOT NULL,
    id_plantacao INT,
    id_inseticida INT,
    area FLOAT NOT NULL,
    PRIMARY KEY(id_lote)
);

ALTER TABLE lote
	ADD CONSTRAINT fk_fazenda_lote
		FOREIGN KEY (id_fazenda)
			REFERENCES fazenda(id_fazenda);

ALTER TABLE lote
	ADD CONSTRAINT fk_plantacao_lote
		FOREIGN KEY (id_plantacao)
			REFERENCES plantacao(id_plantacao);

ALTER TABLE lote 
	ADD CONSTRAINT fk_inseticida_lote
		FOREIGN KEY (id_inseticida)
			REFERENCES inseticida(id_inseticida);