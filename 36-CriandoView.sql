/*
	VIEW = Uma tabela virtual que pode ser criada a partir de um resultado de uma consulta SQL
*/



/*Criando uma view*/
CREATE VIEW ViewCliente AS
SELECT nome, endereco
FROM clientes

/*Chamando a view*/
SELECT *
FROM ViewCliente

CREATE VIEW ViewValorTotalPedido AS
SELECT c.nome, P.datahorapedido,  p.id, SUM(ip.precounitario) AS 'Soma dos pedidos'
FROM clientes c
JOIN pedidos p
ON c.id = p.idcliente
JOIN itenspedidos ip
ON p.id = ip.idpedido
/*Precisamos utilizar o GROUP BY*/
GROUP BY p.id, c.nome

SELECT *
FROM ViewValorTotalPedido