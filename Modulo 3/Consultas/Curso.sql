CREATE DATABASE curso_db;

USE curso_db;

CREATE TABLE aluno(
	id_aluno int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome_aluno VARCHAR(255),
	cpf_aluno CHAR(11),
	email_aluno VARCHAR(255),
	data_nasc_aluno DATE,
);

SELECT * FROM aluno;

CREATE TABLE modulo(
	id_modulo INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome_modulo VARCHAR(255) NOT NULL,
);

CREATE TABLE endereço(
	id_end INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	cidade_end VARCHAR(255) NOT NULL,
	rua_end VARCHAR(255) NOT NULL,
	numero_end INT NOT NULL,
	complemento_end VARCHAR(255),
);

SELECT * FROM endereço;

CREATE TABLE curso(
	id_curso INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome_curso VARCHAR (255),
	mensalidade_curso NUMERIC,
);

CREATE TABLE aluno_curso(
	id_ac int NOT NULL IDENTITY(1,1),
	id_aluno INT, 
	id_curso INT,
	FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
	FOREIGN KEY (id_curso) REFERENCES curso (id_curso)
);

CREATE TABLE modulo_curso(
	id_mc INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	id_modulo INT,
	id_curso INT,
	FOREIGN KEY (id_modulo) REFERENCES modulo (id_modulo),
	FOREIGN KEY (id_curso) REFERENCES curso (id_curso)
);


ALTER TABLE aluno ADD id_endereço INT;
ALTER TABLE aluno ADD FOREIGN KEY (id_endereço) REFERENCES endereço (id_end);
ALTER TABLE endereço ADD id_aluno INT;
ALTER TABLE endereço ADD FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno);

INSERT INTO aluno (nome_aluno, cpf_aluno, email_aluno, data_nasc_aluno) VALUES
('Fernando', '2378903568', 'fernandorcvilela@hotmail.com', '1990-05-26'),
('Mario', '75532200009', 'mario@hotmail.com', '1961-09-12'),
('Diego', '16713709028', 'diego@hotmail.com', '1996-08-26'),
('Bruna', '04686299047', 'bruna@hotmail.com', '1944-08-11'),
('Ana', '37037073059', 'ana@hotmail.com', '1985-03-01'),
('Breno', '79576154065', 'breno@gmail.com', '1997-04-20'),
('Beatriz', '99369015094', 'beatriz@gmail.com', '1944-03-12'),
('Luana', '01415041024', 'luana@gmail.com', '1962-04-20'),
('Laura', '59047235045', 'laura@gmail.com', '1960-10-05'),
('Leticia', '73170821040', 'leticia@gmail.com', '1963-09-04')

INSERT INTO curso (nome_curso, mensalidade_curso) VALUES
('Programação Web', 2000.0),
('Banco de dados', 1800.0),
('Desenvolvimento de jogos',800.0),
('Investimento',1400.0),
('Lógica de programação',2000.0);

INSERT INTO modulo(nome_modulo) VALUES
('SQL'),
('JAVA'),
('HTML'),
('Educação financeira'),
('PYTHON'),
('UNITY'),
('CSS'),
('JAVA SCRIPT');

INSERT INTO modulo_curso(id_modulo, id_curso) VALUES
(3,1),
(7,1),
(8,1),
(1,2),
(2,3),
(6,3),
(4,4),
(4,5),
(4,5),
(2,5);

INSERT INTO aluno_curso(id_aluno, id_curso) VALUES 
(1,5),
(2,3),
(3,2),
(4,2),
(4,5),
(5,1),
(6,2),
(7,4),
(7,5),
(7,1),
(8,2),
(9,4),
(10,5),
(10,1),
(1,3);


SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM modulo;
SELECT * FROM modulo_curso;
SELECT * FROM aluno_curso;


--================================================================================================================
-- Lista 3


-- 1)	Liste Id, Nome, Email e Data de nascimento de todos os alunos em ordem alfabética.
-- Formate a data de nascimento no retorno para o formato DD/MM/YYYY (pesquisa a função CONVERT);

SELECT id_aluno, nome_aluno, email_aluno,
 'A data de nascimento do aluno é ' + CONVERT (VARCHAR(10), data_nasc_aluno) AS data_nascimento
FROM aluno
ORDER BY nome_aluno 


-- 2)	Liste todos os estudantes que contenham o dígito 4,5 ou 6 no CPF;

SELECT * FROM aluno
WHERE cpf_aluno LIKE '%4%' OR cpf_aluno LIKE '%5%' OR cpf_aluno LIKE '%6%'


-- 3)	Liste todos os estudantes que contenham email com a terminação "@hotmail.com" e que nasceram
-- antes do ano 2000 (pesquisa a função DATEPART);




-- 4)	Obtenha a mensalidade mais cara do curso;

-- 5)	Obtenha a média das mensalidades do curso;

-- 6)	Obtenha a contagem de quantos cursos são mais caros que a média do curso;
 
-- 7)	Obtenha a menor mensalidade acima da média das mensalidades;

-- 8)	Conte quantos alunos possuem complemento no endereço;

--================================================================================================================
-- Lista 4


-- 1)   Quantos alunos compraram o curso mais caro?

-- 2)   Quantos alunos compraram mais de um curso e quanto eles pagam?

-- 3)	Liste nome e quantos cursos cada aluno comprou em ordem alfabética ;

-- 4)	Usando o Select anterior, exiba também o total de mensalidade que cada aluno paga.
-- O total é a soma das mensalidades dos cursos que o aluno possui (dica: terá que fazer join com a tabela Cursos);

-- 5)	Liste quantos alunos cada curso possui. Considere que pode haver cursos sem aluno!

-- 6)	Exiba o top 3 cursos mais comprados.


--================================================================================================================
--Lista 5

-- 1)	Liste todos os produtos com suas respectivas categorias.

-- 2)	Faça uma contagem de produtos de todas as categorias que contenham produto.

-- 3)	Crie uma view que traga todos os produtos categorizados com a média, maior valor e menor valor do preço do produto.

-- 4)	Crie uma view que mostre os produtos em falta. Obs: traga apenas as categorias que não tem produtos.