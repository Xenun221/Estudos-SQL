/*Qual foi o primeiro cliente que fez o pedidos*/


SELECT nome, telefone
FROM clientes
WHERE id = (
  /*Juntar as duas consultas, são consultas aninhadas dentro de outra consulta*/
	SELECT idcliente
	FROM pedidos
	WHERE datahorapedido = '2023-01-02 08:15:00'
)

SELECT idcliente
FROM pedidos
WHERE datahorapedido = '2023-01-02 08:15:00'