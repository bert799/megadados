USE agro;

INSERT INTO plantacao (id_plantacao, nome) VALUES
	(1, "milho"),
    (2, "soja"),
    (3, "café"),
    (4, "algodão");
    
INSERT INTO inseticida (id_inseticida, nome, preco) VALUES
	(1, "Mata-Tudo", 200),
    (2, "Mae-Terra", 500),
    (3, "Carinho", 700);
    
INSERT INTO fazenda (id_fazenda, nome) VALUES
	(1, "Terra Forte"),
    (2, "Agua Brava");
    
INSERT INTO plantacao_inseticida (id_plantacao, id_inseticida, frequencia) VALUES
	(1, 1, 2),
    (1, 2, 1),
    (2, 2, 1),
    (2, 3, 1),
    (3, 1, 4),
    (3, 3, 1);

INSERT INTO lote (id_lote, id_fazenda, id_plantacao, id_inseticida, area) VALUES
	(1, 1, 2, 3, 100),
    (2, 1, 1, 2, 70),
    (3, 1, NULL, NULL, 80),
    (4, 2, 4, NULL, 90),
    (5, 2, 3, 2, 50),
    (6, 2, 2, 2, 30),
    (7, 2, 4, NULL, 110);

COMMIT;