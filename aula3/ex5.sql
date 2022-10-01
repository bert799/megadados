use megadados;

DROP TABLE IF EXISTS Gerente;

CREATE TABLE Gerente(
	idDepartamento INT NOT NULL,
    RG INT NOT NULL,
    orgao VARCHAR(10) NOT NULL,
    PRIMARY KEY (idDepartamento, RG, orgao)
);

ALTER TABLE Gerente
	ADD CONSTRAINT fk_Gerente_Departamento
		FOREIGN KEY (idDepartamento)
			REFERENCES Departamento (idDepartamento);
            
ALTER TABLE Gerente
	ADD CONSTRAINT fk_Gerente_Funcionario
		FOREIGN KEY (RG, orgao)
			REFERENCES Funcionario (RG, orgao);
            
INSERT INTO Gerente (idDepartamento, RG, orgao)
	SELECT idDepartamento, RG, orgao FROM Funcionario WHERE eh_gerente = True;