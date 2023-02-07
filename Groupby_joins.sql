USE clientes_db;

-- Desafio


--======================================================================================
-- QUAL o preço do mouse mais caro, traga o nome da sua categoria

SELECT c.nome , MAX(preco) AS produto_mais_caro
FROM produtos p
LEFT JOIN categorias c
ON p.id_categoria = c.id_categoria
WHERE descricao LIKE 'mouse%'
GROUP BY c.nome;


--======================================================================================
-- QUAL a soma da televisão e do playstation, porém alguns apenas dos produtos com preço
-- maior que 1500
-- traga o nome da sua categoria

SELECT SUM(preco) AS soma_produtos 
FROM produtos p
INNER JOIN categorias c
ON p.id_categoria = c.id_categoria
WHERE p.preco > 1500 AND 
descricao LIKE 'televisão%' OR descricao LIKE 'playstation%';


--======================================================================================
-- Crie uma visão que traga o nome do departamento, sexo dos funcionários
-- e a contagem dos funcionarios
-- Contudo, apenas os departamentos que têm a letra 'd' e seus respectivos funcionarios
-- sejam mulheres que usam gmail e homens que usam hotmail
-- Além disso, a contagem de funcionario por sexo e por departamento deve ser maior que 1

SELECT d.nome_dep, f.sexo_func, COUNT(f.id_func) AS funcionarios_departamento
FROM funcionarios f
INNER JOIN departamentos d
ON f.id_departamento = d.id_dep
WHERE f.sexo_func = 'M' AND f.email_func LIKE '%@gmail.com' OR
f.sexo_func = 'F' AND f.email_func LIKE '%@hotmail.com' 
GROUP BY d.nome_dep, f.sexo_func
HAVING COUNT(f.id_func) > 1 AND d.nome_dep LIKE '%d%';

