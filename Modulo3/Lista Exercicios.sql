CREATE DATABASE cursos;
USE cursos;

CREATE TABLE curso(
	id_curso INT NOT NULL IDENTITY(1, 1),
	nome VARCHAR(255) NOT NULL,
	mensalidade NUMERIC NOT NULL,
	PRIMARY KEY(id_curso)
);

CREATE TABLE modulo(
	id_modulo INT NOT NULL IDENTITY(1, 1),
	nome VARCHAR(255) NOT NULL,
	PRIMARY KEY(id_modulo)
);

CREATE TABLE modulo_incluso(
	id_modulo_incluso INT NOT NULL IDENTITY(1, 1),
	id_curso INT NOT NULL,
	id_modulo INT NOT NULL,
	PRIMARY KEY(id_modulo_incluso),
	FOREIGN KEY(id_curso) REFERENCES curso(id_curso),
	FOREIGN KEY(id_modulo) REFERENCES modulo(id_modulo)
);

CREATE TABLE endereco(
	id_endereco INT NOT NULL IDENTITY(1, 1),
	cidade VARCHAR(255) NOT NULL,
	rua VARCHAR(255) NOT NULL,
	numero NUMERIC NOT NULL,
	complemento VARCHAR(255),
	PRIMARY KEY(id_endereco)
);

CREATE TABLE aluno(
	id_aluno INT NOT NULL IDENTITY(1, 1),
	id_endereco INT NOT NULL,
	nome VARCHAR(255) NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	email VARCHAR(255) NOT NULL,
	data_nascimento DATE NOT NULL,
	PRIMARY KEY(id_aluno),
	FOREIGN KEY(id_endereco) REFERENCES endereco(id_endereco)
);

CREATE TABLE curso_comprado(
	id_curso_comprado INT NOT NULL IDENTITY(1, 1),
	id_aluno INT NOT NULL,
	id_curso INT NOT NULL,
	PRIMARY KEY(id_curso_comprado),
	FOREIGN KEY(id_aluno) REFERENCES aluno(id_aluno),
	FOREIGN KEY(id_curso) REFERENCES curso(id_curso)
);

INSERT INTO curso(nome, mensalidade) VALUES('Python B sico ao Avan ado', 80);
INSERT INTO curso(nome, mensalidade) VALUES('Java Avan ado - Atualizado 2023', 400);
INSERT INTO curso(nome, mensalidade) VALUES('JavaScript e NodeJs', 250);
INSERT INTO curso(nome, mensalidade) VALUES('SpringBoot na Pr tica', 180);
INSERT INTO curso(nome, mensalidade) VALUES('Linguagem C', 300);

INSERT INTO modulo(nome) VALUES ('L gica de Program  o');
INSERT INTO modulo(nome) VALUES ('Java');
INSERT INTO modulo(nome) VALUES ('Programa  o Orientada a Objetos');
INSERT INTO modulo(nome) VALUES ('Banco de Dados');
INSERT INTO modulo(nome) VALUES ('SpringBoot Framework');

INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (1, 1);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (1, 4);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (2, 1);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (2, 3);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (3, 1);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (3, 4);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (4, 2);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (4, 5);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (5, 1);
INSERT INTO modulo_incluso(id_curso, id_modulo) VALUES (5, 3);

INSERT INTO endereco(cidade, rua, numero) VALUES('Aparecida de Goi nia', 'Rua Bauru', 12);
INSERT INTO endereco(cidade, rua, numero) VALUES('Bel m', 'Quadra N', 55);
INSERT INTO endereco(cidade, rua, numero) VALUES('Rondon polis', 'Rua Gv-30', 26);
INSERT INTO endereco(cidade, rua, numero) VALUES('Altamira', 'Avenida Jo o Rodrigues', 37);
INSERT INTO endereco(cidade, rua, numero) VALUES('Londrina', 'Rua Maria Osti', 56);
INSERT INTO endereco(cidade, rua, numero) VALUES('Teresina', 'Avenida Zequinha Freire', 98);
INSERT INTO endereco(cidade, rua, numero) VALUES('Colombo', 'Rua Frederico Fromhols', 3);
INSERT INTO endereco(cidade, rua, numero) VALUES('Bras lia', 'Quadra QNR 4', 9);
INSERT INTO endereco(cidade, rua, numero) VALUES('Vit ria', 'Rua Gon alves Dias', 81);
INSERT INTO endereco(cidade, rua, numero) VALUES('Natal', 'Rua Tamboril', 97);
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Campo Grande', 'Rua Rui Barbosa', 41, 'Casa 1');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Montes Claros', 'Rua H', 91, 'Casa 2');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Campo Largo', 'Rua Quatro', 85, 'Casa 3');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Ribeir o das Neves', 'Rua B lsamo', 49, 'Casa 4');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Corumb ', 'Alameda Idal cio Proen a', 34, 'Casa 5');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Ji-Paran ', 'Rua Boa Vista', 61, 'Bloco A');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Olinda', 'Rua do Reflexo', 78, 'Bloco B');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Bras lia', 'Pra a dos Tr s Poderes Anexo II', 31, 'Bloco C');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Fortaleza', 'Rua 610', 40, 'Bloco D');
INSERT INTO endereco(cidade, rua, numero, complemento) VALUES('Jo o Pessoa', 'Vila Marcos Barbosa', 33, 'Bloco E');

INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(1, 'Alexandre Raul Cardoso', '37967024818', 'alexandre_cardoso@policiamilitar.sp.gov.br', '19/01/1994');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(2, 'Heitor S rgio Bryan Novaes', '55137936103', 'heitorsergionovaes@ipek.net.br', '25/01/1951');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(3, 'Leonardo Nathan Davi Monteiro', '40436955199', 'leonardo.nathan.monteiro@acramisper.com', '22/01/1961');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(4, 'Felipe Noah Calebe Sales', '84553649632', 'felipe-sales80@lidertel.com.br', '03/01/1957');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(5, 'Gael Danilo M rio da Rosa', '56459619352', 'gaeldanilodarosa@integrasjc.com.br', '19/01/1961');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(6, 'Lu s Anderson Anderson Drumond', '46142468261', 'luis_drumond@sunrise.com.br', '02/01/1977');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(7, 'Francisca Cl udia Lorena da Silva', '52756612901', 'francisca_claudia_dasilva@duoarq.com', '14/01/1998');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(8, 'Leonardo Danilo Campos', '40699367930', 'leonardo_campos@bsd.com.br', '02/01/1954');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(9, 'Stella Cl udia Laura Drumond', '47333058344', 'stella_drumond@lojapetline.com.br', '03/01/1960');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(10, 'Liz Analu Fabiana Monteiro', '71467087807', 'liz_monteiro@hardquality.com.br', '16/01/1957');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(11, 'Calebe Jos  Caleb Rodrigues', '96904984791', 'calebe_jose_rodrigues@ficopola.net', '22/01/1982');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(12, 'Kaique Gabriel da Silva', '33645282092', 'kaique.gabriel.dasilva@clinicasilhouette.com.br', '14/01/1947');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(13, 'Camila Marli Novaes', '26375017319', 'camila.marli.novaes@supercleanlav.com.br', '24/01/1995');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(14, 'Rosa Elza Sueli Rodrigues', '71141196077', 'rosa_elza_rodrigues@lukin4.com.br', '12/01/1943');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(15, 'Joana Antonella Manuela Cavalcanti', '35929091340', 'joanaantonellacavalcanti@portalpublicidade.com.br', '04/01/1993');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(16, 'Jennifer Josefa Alana Farias', '76857381984', 'jennifer_farias@inductothermgroup.com.br', '01/01/1959');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(17, 'Andrea Daniela Nina Cardoso', '96492721608', 'andrea.daniela.cardoso@raya3.com.br', '12/01/1962');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(18, 'J ssica Camila Oliveira', '29299168180', 'jessica_oliveira@consultorialk.com.br', '15/01/1982');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(19, 'Gabriel Kaique da Mota', '17011333770', 'gabrielkaiquedamota@edu.uniso.br', '03/01/1980');
INSERT INTO aluno(id_endereco, nome, cpf, email, data_nascimento) VALUES(20, 'Eduarda Ester Pereira', '05738904044', 'eduarda_ester_pereira@azulcargo.com.br', '20/01/1974');

INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(1, 1)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(2, 1)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(3, 1)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(4, 1)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(5, 2)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(6, 2)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(7, 2)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(8, 2)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(9, 3)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(10, 3)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(11, 3)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(12, 3)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(13, 4)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(14, 4)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(15, 4)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(16, 4)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(17, 5)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(18, 5)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(19, 5)
INSERT INTO curso_comprado(id_aluno, id_curso) VALUES(20, 5)

-- nome, email e data de nascimento dos alunos, formatada e em ordem alfab tica
SELECT aluno.nome AS nome, 
	aluno.email AS email,
	aluno.data_nascimento AS nascimento
FROM aluno
ORDER BY aluno.nome ASC;

-- todos os alunos com os digitos 4 5 ou 6 no cpf
SELECT aluno.nome AS nome,
	aluno.cpf AS cpf
FROM aluno 
WHERE aluno.cpf LIKE '%4%'
	OR aluno.cpf LIKE '%5%'
	OR aluno.cpf LIKE '%6%';

-- todos os alunos com email @hotmail.com e que nasceram antes de 2000
SELECT aluno.nome AS nome,
	aluno.email AS email,
	aluno.data_nascimento AS nascimento
FROM aluno 
WHERE aluno.email LIKE '%@hotmail.com'
	AND DATEPART(yyyy, data_nascimento) < 2000;

-- mensalidade mais cara dos cursos
SELECT MAX(curso.mensalidade) AS mensalidade_maxima 
FROM curso;

-- m dia das mensalidades dos cursos
SELECT AVG(curso.mensalidade) AS mensalidade_media 
FROM curso;

-- cursos mensalidades com o valor acima da m dia
SELECT curso.mensalidade AS valor,
	COUNT(curso.id_curso) AS cursos
FROM curso 
GROUP BY curso.mensalidade
HAVING curso.mensalidade > (
	SELECT AVG(curso.mensalidade) 
	FROM curso
);

-- curso menor mensalidade com o valor acima da m dia
SELECT MIN(curso.mensalidade) AS mensalidade
FROM curso
WHERE curso.mensalidade > (
	SELECT AVG(curso.mensalidade)
	FROM curso
);

-- alunos com endere o que possui complemento
SELECT COUNT(endereco.id_endereco) AS complementos
FROM aluno
	INNER JOIN endereco ON aluno.id_endereco = endereco.id_endereco
WHERE endereco.complemento IS NOT NULL;

-- alunos que compraram o curso mais caro
SELECT COUNT(aluno.id_aluno) AS vendas
FROM curso_comprado
	INNER JOIN curso ON curso_comprado.id_curso = curso.id_curso
	INNER JOIN aluno ON curso_comprado.id_aluno = aluno.id_aluno
WHERE curso.mensalidade = (
	SELECT MAX(curso.mensalidade)
	FROM curso
);

-- nome, cursos comprados e valor total das mensalidades dos alunos, em ordem alfab tica
SELECT aluno.nome AS nome,
	COUNT(aluno.id_aluno) AS cursos,
	SUM(curso.mensalidade) AS mensalidades
FROM curso_comprado
	INNER JOIN curso ON curso_comprado.id_curso = curso.id_curso
	INNER JOIN aluno ON curso_comprado.id_aluno = aluno.id_aluno
GROUP BY aluno.nome
ORDER BY aluno.nome ASC;

-- nome, quantidade de alunos e mensalidade total de cada curso
SELECT curso.nome AS curso,
	COUNT(aluno.id_aluno) AS alunos,
	SUM(curso.mensalidade) AS mensalidades
FROM curso_comprado
	INNER JOIN curso ON curso_comprado.id_curso = curso.id_curso
	INNER JOIN aluno ON curso_comprado.id_aluno = aluno.id_aluno
GROUP BY curso.nome;

-- top 3 dos cursos mais vendidos
SELECT TOP 3 curso.nome AS curso,
	COUNT(curso.id_curso) AS vendas
FROM curso_comprado
	INNER JOIN curso ON curso_comprado.id_curso = curso.id_curso
GROUP BY curso.nome
ORDER BY vendas DESC;
