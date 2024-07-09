/*
Full Join:
	Ele retorna todos as informações desde que tenha coorespondencia em todas as tabelas
*/

SELECT c.nome, p.id
FROM clientes c
FULL JOIN pedidos p
ON C.id = p.idcliente
WHERE p.idcliente IS NULL