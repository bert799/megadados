USE megadados;

DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Departamento;

CREATE TABLE Funcionario (
	RG INT NOT NULL,
	orgao VARCHAR(10) NOT NULL,
    nome VARCHAR (80) NOT NULL UNIQUE,
	salario DECIMAL(10, 2) NOT NULL DEFAULT 500.0,
	telefone VARCHAR(30),
    idDepartamento INT NOT NULL,
    PRIMARY KEY(RG, orgao),
    CHECK (salario >= 0)
);

CREATE TABLE Departamento (
	idDepartamento INT NOT NULL,
    nome VARCHAR(80) NOT NULL,
    PRIMARY KEY(idDepartamento)
);

ALTER TABLE Funcionario
	ADD FOREIGN KEY (idDepartamento)
		REFERENCES Departamento(idDepartamento);
        
