/*Inserindo novos clientes*/

INSERT INTO clientes(ID, nome, telefone, email, endereco)
VALUES(28, 'Jonas Santos', 21555678, 'jonas@gmail.com', 'Avenida Bandeirantes 221'),
	  (29, 'Jose Paulo', 32888812, 'JosePaulo@gmail.com', 'Travessa das Ruas, 789, Cidade C')
      
/*
	Clientes que não tem venda em um determinado mes
    
    RIGHT TODOS OS DADODS DA TABELA A DIRETA E APENAS OS QUE COORESPONDA  A TABELA DA ESQUERDA
    LEFT TODOS OS DADOS DA TABELA A ESQUERDA E APENAS OS QUE COORESPONDA A TEABELA DA DIRETA
*/

select c.nome,  x.id
from clientes c
LEFT JOIN (
  SELECT p.id, p.idcliente
  FROM pedidos p
  WHERE strftime('%m', p.datahorapedido) = '02') x
on  c.id = x.idcliente
/*Cliten que n tiveram vendas*/
WHERE x.idcliente IS NULL

