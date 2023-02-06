USE clientes_db

-- JOINS 

CREATE TABLE categorias(
	id INT NOT NULL IDENTITY(1,1),
	nome VARCHAR(30),
	ativa CHAR(3),
	PRIMARY KEY (id)

);

insert into categorias (nome, ativa) Values
('Informatica','[v]'),
('Telefonia','[v]'),
('Games','[v]'),
('TV, Audio e Video','[v]'),
('Impressão e imagem','[v]');

SELECT * FROM categorias;

CREATE TABLE produtos(
	id INT NOT NULL IDENTITY(1,1),
	id_categoria INT,
	descricao VARCHAR(50),
	preco INT,
	url_imagem VARCHAR(100),
	PRIMARY KEY (id)
);

insert into produtos (id_categoria, descricao, preco) values
(1,'SSD 128GB', 300),
(1,'SSD 256GB', 500),
(1,'KIT TECLADO E MOUSE', 600),
(3,'PLAYSTATION 3', 1500),
(2,'SAMSUNG A51', 2500),
(4,'TELEVISÃO LG 55"', 3000),
(3,'PLAYSTATION 3 1TB', 1500),
(2,'SAMSUNG S9', 2500),
(2,'IPHONE 8', 2500),
(2,'IPHONE 9', 3000),
(2,'IPHONE X', 4000),
(4,'TELEVISÃO SAMSUNG 32"', 1000),
(4,'TELEVISÃO SAMSUNG 48"', 3000),
(3,'PLAYSTATION 4 1TB', 2800),
(3,'PLAYSTATION 5 1TB', 5000),
(1,'Teclado Razer Gamer', 250),
(1,'Fone de ouvido Hyperx',170),
(1,'Mouse Gamer Razer', 90),
(1,'Mouse Gamer Razer 2400', 200)
insert into produtos (descricao, preco) values
('Mouse Gamer', 280),
('Teclado Gamer', 390);


SELECT * FROM produtos;


-- TRAZER PRODUTOS QUE TENHAM CATEGORIA: INNER JOIN
-- INNER JOIN

SELECT * FROM produtos P
INNER JOIN categorias  C
ON p.id_categoria = c.id;


-- TRAZER TODOS OS PRODUTOS MESMO OS QUE NAO TEM CATEGORIA E AINDA ASSIM TRAZER A LISTAGEM DE CATEGORIAS
-- LEFT JOIN 

SELECT * FROM produtos P
LEFT JOIN categorias  C
ON p.id_categoria = c.id;


-- TRAZER TUDO DA TABELA DIREITA INCLUSIVE AS CATEGORIAS QUE NAO TEM PRODUTO
-- RIGHT JOIN

SELECT * FROM produtos P
RIGHT JOIN categorias  C
ON p.id_categoria = c.id;


-- TRAZER TUDO DE TODOS
-- FULL JOIN ( NÃO É MUITO UTILIZADO, POUCA FUNCIONALIDADE )


SELECT * FROM produtos P
FULL JOIN categorias  C
ON p.id_categoria = c.id;


-- MAIOR PREÇO POR CATEGORIA, TRAZENDO QUAL CATEGORIA O PEODUTO É, APENAS PRODUTOS CATEGORIZADOS

SELECT c.nome, MAX(p.preco) AS max_preco
FROM produtos P
INNER JOIN categorias  C
ON p.id_categoria = c.id
GROUP BY c.nome;


-- MAIOR E MENOR PREÇO DO PRODUTO DA CATEGORIA GAME E TELEFONIA

SELECT c.nome, MAX(p.preco) AS max_preco, MIN(p.preco) AS min_preco
FROM produtos P
INNER JOIN categorias  C
ON p.id_categoria = c.id
WHERE c.nome = 'GAMES' OR c.nome = 'TELEFONIA'
GROUP BY c.nome;


-- QUANTO CUSTA O MAIOR PRODUTO NÃO CATALOGADO

SELECT MAX(preco)
FROM produtos P
LEFT JOIN categorias C
ON c.id = p.id_categoria
WHERE c.nome IS NULL;

/*Saber se o NULL usamos o IS*/


-- MEDIAS DE PREÇOS DE TODOS OS PRODUTOS 

SELECT c.nome, AVG(p.preco) AS media_preco
FROM produtos p
INNER JOIN categorias c
ON p.id_categoria = c.id
GROUP BY c.nome;




--CRIANDO UMA TABELA AUXILIAR

--	WHEN == QUANDO

WITH aux_table AS (SELECT YEAR(data_nascimento) AS ano,
	CASE
		WHEN YEAR(data_nascimento) >= 1993 THEN 'True'
		ELSE 'False'
	END AS 'is_millenium',
	id
FROM funcionarios )

SELECT is_millenium, COUNT(id) AS contagem 
FROM aux_table
GROUP BY is_millenium;

