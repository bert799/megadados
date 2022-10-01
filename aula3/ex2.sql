USE megadados; 

DROP TABLE IF EXISTS Dependente;

CREATE TABLE Dependente (
	RG INT NOT NULL,
    orgao VARCHAR(10) NOT NULL,
    nome VARCHAR(80) NOT NULL,
	RG_funcionario INT NOT NULL,
    orgao_funcionario VARCHAR(10) NOT NULL
);

ALTER TABLE Dependente
	ADD FOREIGN KEY (RG_funcionario, orgao_funcionario)
		REFERENCES Funcionario(RG, orgao);
