-- #=== Operações CRUD ===#
CREATE DATABASE hashtag;
use hashtag;

CREATE TABLE alunos(
	ID_Aluno INT,
	Nome_Aluno VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE cursos(
	ID_Curso INT,
	Nome_Curso VARCHAR(100),
    Preco_Curso DECIMAL(10, 2)
);

CREATE TABLE matriculas(
	ID_Matricula INT,
    ID_Aluno INT,
	ID_Curso INT,
    Data_Cadastro DATE
);

INSERT INTO alunos(ID_Aluno, Nome_Aluno, Email)
VALUES
	(1, 'Ana'	, 	'ana123@gmail.com'			),
    (2, 'Bruno'	, 	'bruno_vargas@outlook.com'	),
    (3, 'Carla'	, 	'carlinha1999@gmail.com'	),
    (4, 'Diego'	, 	'diicastroneves@gmail.com'	);

SELECT * FROM alunos;

INSERT INTO cursos(ID_Curso, Nome_Curso, Preco_Curso)
VALUES
	(1, 'Excel'		, 	100),
    (2, 'VBA'		, 	200),
    (3, 'Power BI'	, 	150);

SELECT * FROM cursos;

INSERT INTO matriculas(ID_Matricula, ID_Aluno, ID_Curso, Data_Cadastro)
VALUES
	(1, 1, 1, '2021/03/11'	),
    (2, 1, 2, '2021/06/21'	),
    (3, 2, 3, '2021/01/08'	),
    (4, 3, 1, '2021/04/03'	),
    (5, 4, 1, '2021/05/10'	),
	(6, 4, 3, '2021/05/10'	);

SELECT * FROM matriculas;


--  ATUALIZANDO DADOS NAS TABELAS (UPDATE) 
-- Para habilitar essa funcionalidade SET SQL_SAFE_UPDATES=1;
-- Para desabilitar essa funcionalidade  SET SQL_SAFE_UPDATES=0;

SET SQL_SAFE_UPDATES = 0;

UPDATE cursos
SET Preco_Curso = 300
WHERE ID_Curso = 1;

-- DELETANDO DADOS NAS TABELAS (DELETE)

-- Para excluir dados da tabela, usamos o comando DELETE. Para usá-lo, é extremamente importante incluir o comando WHERE para especificar a linha que queremos excluir.
-- Excluindo a linha 6 da tabela de matrículas.

DELETE FROM matriculas
WHERE ID_Matricula = 6;


DROP TABLE alunos;
DROP TABLE cursos;
DROP TABLE matriculas;

DROP DATABASE hashtag;
