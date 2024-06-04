/*
Selecione os primeiros 5 registros da tabela clientes, ordenando-os pelo nome em ordem crescente.*/
SELECT * 
FROM Dependentes
ORDER BY nome DESC
LIMIT 5

/*
Encontre todos os produtos na tabela produtos que não têm uma descrição associada (suponha que a coluna de descrição possa ser nula).
*/
SELECT *
FROM HistoricoEmprego
where datatermino IS NOT NULL

/*
Liste os funcionários cujo nome começa com 'A' e termina com 's' na tabela funcionarios.
*/
SELECT *
FROM Colaboradores
WHERE nome LIKE 'A%' AND nome LIKE '%S'

