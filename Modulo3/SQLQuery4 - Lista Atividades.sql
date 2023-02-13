
CREATE VIEW view_soma_salarial AS (
SELECT 
	
		d.departamento, /*Selciona o que eu quero, no caso o departamento*/
		MAX(f.salario) AS max_salario,
		SUM(f.salario) AS soma_salario,
		COUNT(f.id) AS contagem

	FROM
	funcionarios f
	INNER JOIN departamentos d 
	ON d.id = f.departamento_id  /*Estou falando onde o meu inner join vai ser baseado, no caso é o id do departamento*/
	GROUP BY d.departamento
	HAVING SUM(f.salario) > 13000

);



--Crie uma view que traga o sexo do funcionario e sua meedia salarial
--por nome de departamento
--Contudo, traga apenas os homens que nasceram em maio e as
--mulheres que nasceram em julho 


CREATE VIEW view_homem_mulher_media_salario AS (

SELECT 

		d.departamento,
		f.sexo,
		AVG(f.salario)  AS media_salario
	
	FROM funcionarios AS f
	INNER JOIN departamentos AS d
	ON f.departamento_id = d.id
	WHERE (f.sexo = 'M' AND MONTH(f.data_nascimento) = '05') OR (f.sexo = 'F' AND MONTH(f.data_nascimento) = '07')
	GROUP BY d.departamento, f.sexo

);

DROP VIEW view_homem_mulher_media_salario


SELECT * FROM view_homem_mulher_media_salario



--Trazer o menor e o maior preço de compra
--categoria(alguns produtos podem ter preços iguais) e a descrição de cada produto

WITH base_table AS (
SELECT 
	id_categoria,
	SUM(preco) AS soma_preco,
	AVG(preco) AS media_preco,
	MIN(preco) AS min_preco,
	MAX(preco) AS max_preco

FROM produtos
GROUP BY id_categoria)

SELECT	
	bt.id_categoria,
	p.descricao,
	p.preco

FROM base_table AS bt
INNER JOIN produtos p
ON bt.id_categoria = p.id_categoria
AND (bt.min_preco = p.preco OR bt.max_preco = p.preco) 
ORDER BY bt.id_categoria, p.preco;


--Trazer o menor salario de cada
--departamento e o nome do funcionario que recebe esse valor. Trazer o nome do departamento

WITH base_table AS (
	SELECT
		id_departamento,
		MIN(salario) AS min_salario

	FROM funcionarios
	GROUP BY id_departamento)

	SELECT 
);





WITH base_table AS (
	--Tabela base
	SELECT 
		d.id,
		d.departamento,
		MIN(f.salario) AS menor_salario
	FROM departamentos d
	INNER JOIN funcionarios f
	ON f.departamento_id = d.id
	GROUP BY d.id, d.departamento

)

SELECT 
	bt.departamento,
	bt.menor_salario,
	f.nome
	
FROM funcionarios f
INNER JOIN base_table bt
ON bt.id = f.departamento_id AND
bt.menor_salario = f.salario;



--Desejo saber o ano de nascimento de rodos os funcionario é saber quem é o mais velho 

WITH base_table AS(
	SELECT 
		departamento_id,
		YEAR(data_nascimento),
		FIRST_VALUE(YEAR(data_nascimento)) OVER(PARTITION BY departamento_id ORDER BY YEAR(data_nascimento)) AS menor_ano

)

SELECT 
		f.departamento_id,
		YEAR(f.data_nascimento)
		bt.menor_ano,
		f.nome
FROM funcionarios f
	INNER JOIN base_table bt
	ON bt.departamento_id = f.departamento_id AND bt.menor_ano = YEAR(f.data_nascimento)