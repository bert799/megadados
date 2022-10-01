USE megadados;

ALTER TABLE Funcionario
	ADD COLUMN eh_gerente BOOLEAN NOT NULL DEFAULT False;