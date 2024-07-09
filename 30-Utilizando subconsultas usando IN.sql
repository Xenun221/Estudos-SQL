/*SUB CONSULTAS QUE TRAZ MAS DE UMA INFORMAÇÃO*/
SELECT idcliente
FROM pedidos
/*extrair um mes completo*/
WHERE strftime('%m', datahorapedido) = '01'

/*SUBCONSULTAS NO COMANDO IN*/
SELECT nome
FROM clientes
WHERE id in(
  SELECT idcliente
	FROM pedidos
	/*extrair um mes completo*/
	WHERE strftime('%m', datahorapedido) = '01'
)