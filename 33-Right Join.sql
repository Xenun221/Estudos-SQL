SELECT *
FROM pedidos

SELECT *
FROM itenspedidos

/*Inserindo novos prodtuos*/
INSERT INTO produtos(id, nome, descricao, preco, categoria) 
VALUES(31, 'Lasanha á Bolonhesa', 'Deliciosa lasanha caseira com molho bolonhesa', 12.50, 'Almoço')

/*Sera que todos os prodtudos foram vendidos, Quais produtos foram ou não vendidos
	Todos os produtos so que queremos saber se o protudos foram vendidos
    
    RIGHT JOIN = trazer todos os produtos que estão a direta e apenas aqueles que corresponde os produtos da esquerda
*/

SELECT pr.nome, x.idproduto, x.idpedido, pr.preco
FROM 
/*Subconsultas*/
	(
     SELECT ip.idpedido, ip.idproduto
     FROM pedidos p
     JOIN itenspedidos ip
     on p.id = ip.idpedido 
    WHERE strftime('%m', p.datahorapedido) = '3'
    ) x
RIGHT JOIN produtos pr
ON pr.id = x.idproduto
