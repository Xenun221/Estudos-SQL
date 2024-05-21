INSERT INTO Funcionarios (
  id,
  nome,
  departamento,
  salario
  )
VALUES
(1, 'Heitor Vieira', 'Financeiro', 4959.22),
(2, 'Daniel Campos', 'Vendas', 3884.44),
(3, 'Luiza Dias', 'TI', 8205.78),
(4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
(5, 'Pietro Cavalcanti', 'TI', 4946.88),
(6, 'Evelyn da Mata', 'Vendas', 5278.88),
(7, 'Isabella Rocha', 'Marketing', 4006.03),
(8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
(9, 'Brenda Cardoso', 'TI', 8853.34),
(10, 'Danilo Souza', 'TI', 8242.14);

--Selecione todos os funcionairos
Select *
FROM Funcionarios

--Selecione nome dos funcionarios aonde trabaham no deparatemento de vendas
SELECT *
FROM Funcionarios
WHERE departamento = 'Vendas'

--Selecione os funcionaiso com salario maior que 5k
SELECT *
FROM Funcionarios
WHERE salario > 5000

--SELECIONE FUNCIONAIROS DISTINTOS
SELECT DISTINCT departamento 
FROM Funcionarios

--ATUALIZAR SALARIOS DO TI PARA 7K
UPDATE Funcionarios
SET salario = 7500.00
WHERE departamento = 'TI'

SELECT salario, *
FROM Funcionarios
WHERE departamento = 'TI'

--DELETE TABELA FUNCIONARIOS REGISTROS DE TODOS FUNCIONARIOS QUE GANHAM MENOS DE 4K
DELETE FROM Funcionarios
WHERE salario < 4000.00

/* 
Selecione os nomes e salários dos funcionários que trabalham no departamento de "Vendas" e cujo salário seja maior ou igual a 6000.
*/
SELECT nome, salario
FROM Funcionarios
WHERE departamento = 'Vendas' and salario >= 6000.00

CREATE TABLE Projetos(
  id_projeto INT PRIMARY KEY,
  nome_projeto VARCHAR(100),
  id_gerente INT,
  FOREIGN KEY (id_gerente) REFERENCES Funcionarios(id)
  )
  
  INSERT INTO Projetos(
    id_projeto,
    nome_projeto,
    id_gerente
    )
VALUES
(1,'Lotus BETA', 3),
(2, 'Lotus Alpha', 2),
(3, 'Lotus', 2)

SELECT *
FROM Projetos
WHERE id_gerente =2