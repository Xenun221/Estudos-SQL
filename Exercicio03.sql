
select *
FROM itenspedidos

SELECT *
FROM pedidos

/*Calcular o valor total dos pedidos*/
SELECT c.nome, p.id, SUM(ip.precounitario) AS 'Soma dos pedidos'
FROM clientes c
JOIN pedidos p
ON c.id = p.idcliente
JOIN itenspedidos ip
ON p.id = ip.idpedido
/*Precisamos utilizar o GROUP BY*/
GROUP BY p.id, c.nome

/*Juntando as tabelas de produto
JOIN produtos pr 
ON pr.id = ip.idprodutos*/