USE clientes_db

-- CRIAÇÃO DE VIES

-- CRIE UMA VIEW QUE TRAGA A MÉDIA SALARIAL DOS HOMENS E MULHERES QUE NASCERAM NOS ANOS 90 

CREATE VIEW view_mediaSalario_sexo AS (
	SELECT sexo, AVG(salario) AS media_salario
	FROM funcionarios
	WHERE YEAR(data_nascimento) >= '1990'
	GROUP BY sexo
);

SELECT * FROM view_mediaSalario_sexo;

INSERT INTO funcionarios (nome, email, sexo, data_nascimento, salario, departamento_id) VALUES
('Diego', 'luan@gmail.com', 'M', '01-05-1996', 100000, 1)
