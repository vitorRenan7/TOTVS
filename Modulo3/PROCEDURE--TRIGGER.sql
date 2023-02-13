SELECT * 
FROM categorias;

CREATE PROCEDURE busca_categoria
	@nome_categoria VARCHAR(20)
	AS 
	SET @nome_categoria = '%' + @nome_categoria + '%'

	SELECT * FROM categorias
	WHERE nome LIKE @nome_categoria;


	EXEC busca_categoria 'TI'



--TRIGGER

--Serve para guardar o historico

CREATE TRIGGER tr_log
ON categorias
AFTER UPDATE, INSERT, DELETE
AS 

-- Execute so se acontecer um update, insert ou delete


SELECT * FROM categorias


CREATE PROCEDURE inserir_categoria
	@nome_categoria VARCHAR(50),
	@ativo CHAR(3)
AS 
	BEGIN
		INSERT INTO categorias (nome,ativa)
		VALUES(@nome_categoria, @ativo);
	END;

EXEC inserir_categoria 'Roupas', '[V]'