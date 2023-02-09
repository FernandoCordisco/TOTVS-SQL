CREATE DATABASE clientes_db;

USE clientes_db;

CREATE TABLE clientes(
	id_cliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome_cliente VARCHAR(255) NOT NULL,
	idade_cliente INT NOT NULL,
	cpf_cliente CHAR(11) NOT NULL,
	sexo_cliente CHAR(1),
);

INSERT INTO clientes (nome_cliente, idade_cliente,sexo_cliente,cpf_cliente) VALUES ('Robson', 40, 'M', '12312312312');
INSERT INTO clientes (nome_cliente, idade_cliente,sexo_cliente,cpf_cliente) VALUES ('Denise', 35, 'F', '18989888812');
INSERT INTO clientes (nome_cliente, idade_cliente,sexo_cliente,cpf_cliente) VALUES ('Madalena', 55, 'F', '34534534545');
INSERT INTO clientes (nome_cliente, idade_cliente,sexo_cliente,cpf_cliente) VALUES ('Jorge', 60, 'M', '89089089090');
INSERT INTO clientes (nome_cliente, idade_cliente,sexo_cliente,cpf_cliente) VALUES ('Ana', 18, 'F', '90909009090');
INSERT INTO clientes (nome_cliente, idade_cliente,sexo_cliente,cpf_cliente) VALUES ('Bruna', 26, 'F', '78568945239');

SELECT * FROM clientes;

/*selecionar clientes do sexo masculino*/
SELECT * FROM clientes WHERE sexo_cliente='M'

/*selecionar clientes do sexo feminino com mais de 30 anos por ordem decrescente*/
SELECT *
FROM clientes
WHERE sexo_cliente = 'F'
AND idade_cliente > 30
ORDER BY idade_cliente DESC;

CREATE TABLE departamentos(
	id_dep INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome_dep VARCHAR(20)
);

INSERT INTO departamentos (nome_dep) VALUES
('Vendas'),
('Marketing'),
('RH'),
('TI'),
('Administrativo'),
('Desenvolvimento');

SELECT * FROM departamentos;

CREATE TABLE funcionarios(
	id_func INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome_func VARCHAR(255) NOT NULL,
	email_func VARCHAR(255),
	sexo_func CHAR(1),
	data_nascimento_func DATE,
	salario_func INT,
	id_departamento INT,
	FOREIGN KEY (id_departamento) REFERENCES departamentos (id_dep)

);

INSERT INTO funcionarios ( nome_func, email_func, sexo_func, data_nascimento_func, salario_func, id_departamento) VALUES
('Luana', 'luana@gmail.com', 'F', '01-05-1996', 3000, 1),
('Marilia', 'marilia@hotmail.com', 'F', '03-05-1995', 3100, 2),
('Raquel', 'raquel@gmail.com', 'F', '15-07-1994', 3050, 3),
('Joana', 'joana@gmail.com', 'F', '03-07-1995', 3000, 4),
('Fabricio', 'fabricio@gmail.com', 'M', '01-05-1993', 4700, 5),
('Everaldo', 'everaldo@hotmail.com', 'M', '07-05-1993', 4600, 6),
('Ricardo', 'ricardo@gmail.com', 'M', '15-05-1998', 3500, 1),
('Cleber', 'cleber@hotmail.com', 'M', '01-05-1997', 3300, 3),
('Fernando', 'fernando@hotmail.com', 'M', '03-05-1989', 3000, 2),
('Felipe', 'felipe@hotmail.com', 'M', '03-05-1996', 3070, 4),
('Matheus', 'matheus@hotmail.com', 'M', '15-05-1989', 4060, 5),
('Rodrigo', 'rodrigo@hotmail.com', 'M', '01-05-1996', 3060, 6),
('Luma', 'luma@gmail.com', 'F', '01-05-1996', 3700, 1),
('Rafael', 'rafael@gmail.com', 'M', '15-03-1991', 3500, 4),
('Mariana', 'mariana@gmail.com', 'F', '01-07-1998', 3900, 4),
('Monique', 'monique@gmail.com', 'F', '15-07-1993', 4100, 2),
('Joaquim', 'joaquim@hotmail.com', 'M', '01-05-1994', 3300, 3),
('Sandro', 'sandro@gmail.com', 'M', '01-05-1996', 4700, 5),
('Henrique', 'henrique@gmail.com', 'M', '07-07-1995', 3500, 6),
('Maria', 'maria@gmail.com', 'F', '07-07-1995', 4100, 3),
('Penha', 'penha@gmail.com', 'F', '07-07-1988', 5000, 5),
('Laura', 'laura@gmail.com', 'F', '07-07-1990', 5500, 5);

SELECT * FROM funcionarios; 

/*contagem de funcionários do sexo masculino*/
SELECT COUNT(*) AS funcionarios_masculino
FROM funcionarios WHERE sexo_func='M';


/*data de nascimento do mais novo ao mais velho*/
SELECT * FROM funcionarios ORDER BY data_nascimento_func DESC;


/*média salarial*/
SELECT AVG(salario_func)
AS media_salarial
FROM funcionarios; 

/* 
COUNT = quantidade
AVG = MÉDIA 
SUM = SOMA
MIN = MINIMO
MAX = MÁXIMO
*/

/*ordernar por departamento*/
SELECT id_departamento,
MAX(salario_func) AS maior_salario,
MIN(salario_func) AS menor_salario
FROM funcionarios
GROUP BY id_departamento;

/*média salarial por sexo*/
SELECT sexo_func,
COUNT(id_func) AS funcionarios_por_sexo,
AVG(salario_func) AS media_salarial
FROM funcionarios
GROUP BY sexo_func;

SELECT id_departamento, COUNT(id_func) AS numero_funcionarios
FROM funcionarios 
GROUP BY id_departamento;


SELECT	id_departamento, SUM(salario_func) AS soma_salario, COUNT(id_func) AS numero_funcionarios
FROM funcionarios
GROUP BY id_departamento;

SELECT id_departamento, COUNT(id_func) AS homens_departamento
FROM funcionarios
WHERE sexo_func='M' AND salario_func > 3800
GROUP BY id_departamento
HAVING COUNT(id_func) > 1;



SELECT id_departamento, COUNT(id_func) AS num_funcionarios, AVG(salario_func) AS media_salario
FROM funcionarios
WHERE email_func LIKE '%@gmail.com' AND sexo_func = 'F'
GROUP BY id_departamento
HAVING AVG(salario_func) > 4000;




/* JOINS */


CREATE TABLE categorias(
	id_categoria INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(30),
	ativa CHAR(3)
);

insert into categorias (nome, ativa) Values
('Informatica','[v]'),
('Telefonia','[v]'),
('Games','[v]'),
('TV, Audio e Video','[v]'),
('Impressão e imagem','[v]');

CREATE TABLE produtos (
	id_produtos INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	id_categoria INT,
	descricao VARCHAR (50),
	preco INT,
	url_imagem VARCHAR (150),
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

--INNER JOIN: apenas produtos que tem categoria

SELECT * FROM produtos p
INNER JOIN categorias c
ON p.id_categoria = c.id_categoria


--LEFT JOIN: todos os produtos mostrando as categorias

SELECT * FROM produtos p
LEFT JOIN categorias c
ON p.id_categoria = c.id_categoria


--RIGH JOIN: trazer tudo da tabela direita inclusive as categorias sem produto

SELECT * FROM produtos p
RIGHT JOIN categorias c
ON p.id_categoria = c.id_categoria

--FULL JOIN: trás tudo

SELECT * FROM produtos p
FULL JOIN categorias c
ON p.id_categoria = c.id_categoria

--  MAIOR PREÇO POR CATEGORIA, TRAZENDO QUAL PRODUTO É, APENAS PRUDUTOS CATEGORIZADOS

SELECT c.nome, MAX(p.preco)
FROM produtos p
INNER JOIN categorias c
ON p.id_categoria = c.id_categoria
GROUP BY (c.nome);


--MAIOR E MENOR PREÇO DE GAMES E TELEFONIA
SELECT c.nome, MAX(p.preco) AS maior_preço, MIN(p.preco) AS menor_preço
FROM produtos p
INNER JOIN categorias c
ON p.id_categoria = c.id_categoria
WHERE c.id_categoria=3 OR  c.id_categoria=1
GROUP BY(c.nome);

--QUANTO CUSTA O MAIOR PRODUTO NÃO CATALOGADO
SELECT c.nome, MAX(p.preco) AS maior_preço, MIN(p.preco) AS menor_preço
FROM produtos p
LEFT JOIN categorias c
ON p.id_categoria = c.id_categoria
where c.nome IS NULL
GROUP BY(c.nome);

--MEDIA DE PREÇOS DE TODOS OS PRODUTOS POR CATEGORIA

SELECT c.nome, AVG(p.preco) AS media_preço
FROM produtos p
LEFT JOIN categorias c
ON p.id_categoria = c.id_categoria
GROUP BY(c.nome);

SELECT * FROM funcionarios;

-- IF / ELSE



WITH aux_table AS(SELECT YEAR(data_nascimento_func) AS ano,
	CASE
		WHEN YEAR(data_nascimento_func) >= 1993 THEN 'true'
		ELSE 'false'
	END AS 'is_millenium',
	id_func
FROM funcionarios)

SELECT is_millenium, COUNT(id_func) AS CONTAGEM
FROM aux_table
GROUP BY is_millenium;

--VIEWS

CREATE VIEW view_media_salarial_sexo AS 
(SELECT sexo_func, AVG(salario_func) AS media_salario
FROM funcionarios
WHERE YEAR(data_nascimento_func) >='1990'
GROUP BY sexo_func);



CREATE VIEW view_soma_salarial AS (
	SELECT

	d.nome_dep,
	MAX(f.salario_func) AS maximo_salarial,
	SUM(f.salario_func) AS soma_salarial,
	COUNT(f.id_func) AS funcionario_departamento

	FROM funcionarios f
	INNER JOIN departamentos d
	ON f.id_departamento = d.id_dep
	GROUP BY d.nome_dep
	HAVING SUM(f.salario_func) > 13000


);

SELECT * FROM view_soma_salarial;


--Trazer o menor salario de cada departamento e o nome do funcionario que recebe esse valor.
--Trazer o nome do departamento  

WITH base_table as (
SELECT 
	f.id_departamento,
	d.nome_dep,
	MIN(f.salario_func) AS menor_salario

FROM funcionarios f
INNER JOIN departamentos d
ON d.id_dep = f.id_departamento
GROUP BY f.id_departamento, d.nome_dep)

SELECT 
	bt.nome_dep,
	bt.nome_dep,
	f.nome_func,
	bt.menor_salario
FROM base_table AS bt
INNER JOIN funcionarios f
ON f.id_departamento = bt.id_departamento AND bt.menor_salario = f.salario_func



SELECT * FROM funcionarios;
SELECT * FROM departamentos;

--Data de nascimento de todos os funcionários e quem é o mais velho


WITH base_table AS (
SELECT 
id_departamento,
nome_func,
YEAR(data_nascimento_func) AS nascimento,
FIRST_VALUE(YEAR(data_nascimento_func)) OVER (PARTITION BY id_departamento ORDER BY YEAR (data_nascimento_func)) AS menor_ano
FROM funcionarios
)

SELECT 

	f.id_departamento,
	bt.nome_func,
	bt.nascimento,
	bt.menor_ano,
	f.nome_func AS funcionario_mais_velho_departamento
	FROM funcionarios f
	INNER JOIN base_table bt
	ON bt.id_departamento = f.id_departamento AND bt.menor_ano = YEAR(f.data_nascimento_func)




