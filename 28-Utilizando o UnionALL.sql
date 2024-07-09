/*Unindo os dois selects mas que traga de forma correta os endereços mesmo que seja iguais*/
SELECT nome, rua, bairro, cidade, estado, cep
FROM  colaboradores
/*UNIR E RETORNAR TODOS OS VALORES*/
UNION ALL
SELECT nome, rua, bairro, cidade, estado, cep
FROM fornecedores
/* OS CAMPOS QUE A GENTE BUSCA PRECISA TER A MESMA DESCRIÇÃO*/
SELECT *
FROM colaboradores
where rua = 'Rua das flores - 210';