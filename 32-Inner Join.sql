/*
	Buscar meus clientes e quero uma unica informação de outra tabela
    join realizamos junções de colunas de tabelas distintas, temos mais de uma clausula 
*/

SELECT *
FROM clientes

SELECT *
FROM pedidos

/*Diferença entre Join e subconsultasclientes
	Subquery: É uma consulta dentro de outra consulta. Você usa quando precisa de um resultado para fazer outra consulta.
	Exemplo: Encontrar o nome de um cliente depois de descobrir qual pedido ele fez.
INNER JOIN: Combina dados de duas ou mais tabelas diretamente com base em um campo comum.
Exemplo: Juntar a lista de clientes com a lista de pedidos para ver quem fez quais pedidos.
*/

/*
	Sempre importantes a gente referenciar os campos, indicar para consulta de qual tabela cada campo vai vir
*/
SELECT c.nome, p.id, p.datahorapedido/*Epecificar inforamções*/
FROM clientes c
INNER JOIN pedidos p/*Juntando tabela*/
/*On PARA FAZER A RELAÇÃO ENTRE AS DUAS TABELAS*/
ON c.id = p.id


     SELECT ip.idpedido, ip.idproduto
     FROM pedidos p
     JOIN itenspedidos ip
     on p.id = ip.idpedido 
    WHERE strftime('%m', p.datahorapedido) = '3'