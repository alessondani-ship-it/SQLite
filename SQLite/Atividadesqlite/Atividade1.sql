-- database: ./AtividadeA.sqlite
DELETE FROM "compras";
CREATE TABLE produtos (id INTEGER NOT NULL, nome TEXT NOT NULL, preco INTEGER NOT NULL);

CREATE TABLE cliente (id INTEGER NOT NULL, nome TEXT NOT NULL, email TEXT NOT NULL);

CREATE TABLE compras (id INTEGER NOT NULL, cliente_id TEXT NOT NULL, produto_id TEXT NOT NULL, data INTEGER NOT NULL);


INSERT INTO produtos (id, nome, preco) 
VALUES 
(1, 'Notebook', 1000),
(2, 'Smartphone', 500),
(3, 'Tablet', 300);

INSERT INTO cliente (id, nome, email) VALUES 
(1 ,'Maria', 'maria@email.com'), 
(2, 'João', 'joao@email.com');

INSERT INTO compras (id, cliente_id, produto_id, data) VALUES
(1, 'João', 'comprou o Notebook no dia', 2049-01-01),
(1, 'Maria', 'comprou o Smartphone no dia', 2049-01-02),
(1, 'João', 'comprou o Tablet no dia', 2049-01-03);

PRAGMA table_info('produtos');