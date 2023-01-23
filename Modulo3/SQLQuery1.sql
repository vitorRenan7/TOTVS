CREATE DATABASE aulas_db;

Use aulas_db;

CREATE TABLE estudantes(
	id INT NOT NULL IDENTITY (1,1),
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255),
	data_nascimento DATE,
	PRIMARY KEY(id)
	
);

ALTER TABLE estudantes ADD mensalidade NUMERIC;

INSERT INTO estudantes(nome, email, data_nascimento, mensalidade) VALUES ('Mariana', 'mariana@hotmail.com', '01-01-1996', 350.0)

SELECT * FROM estudantes;

CREATE TABLE telefones (
	id INT NOT NULL IDENTITY (1,1),
	telefone CHAR(11) NOT NULL,
	estudante_id INT,
	PRIMARY KEY(id),
	FOREIGN KEY(estudante_id) REFERENCES estudantes(id)

);

INSERT INTO telefones (telefone, estudante_id) VALUES ('11998101123', 1);
INSERT INTO telefones (telefone, estudante_id) VALUES ('11998333323', 1);
INSERT INTO telefones (telefone, estudante_id) VALUES ('11998444423', 1);
INSERT INTO telefones (telefone, estudante_id) VALUES ('14998107773', 2);
INSERT INTO telefones (telefone, estudante_id) VALUES ('19998105555', 3);
INSERT INTO telefones (telefone, estudante_id) VALUES ('19998100000', 3);
	
SELECT * FROM telefones, estudantes;
SELECT * FROM estudantes ORDER BY mensalidade DESC;

SELECT nome AS estudantes,
	data_nascimento,
	mensalidade AS valor_mensalidade
FROM estudantes;




SELECT * FROM estudantes WHERE mensalidade IN (250,300,400);

SELECT * FROM estudantes WHERE email LIKE '%gmail.com'; /*Quem tem so gmail no email*/

SELECT COUNT(*) FROM estudantes WHERE data_nascimento < '01-01-1995'; /*Contar quantos caras tem */

SELECT * FROM estudantes 
WHERE mensalidade IN(250,300,400)
AND data_nascimento < '01-01-1992'
ORDER BY mensalidade DESC;