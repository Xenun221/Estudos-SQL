
/*CRIANDO A TABELA DE PEDIDOS GOLD:

CREATE TABLE tabelapedidogold(
  	ID_pedido_gold INT PRIMARY KEY,
  	Data_Do_Pedido_gold DATE,
  	status_gold VARCHAR(50),
  	Total_Do_Pedido_Gold DECIMAL(10,2),
  	Cliente_gold INT,
  	Data_De_Envio_estimada_gold DATE,
  	FOREIGN KEY(cliente_gold) REFERENCES tabelaclientes(id_cliente)
  )
*/

INSERT INTO tabelapedidogold(
  id_pedido_gold,
  data_do_pedido_gold,
  status_gold,
  total_do_pedido_gold,
  cliente_gold,
  data_do_pedido_gold
  )
  /*VAI PUXAR DA TABELAPEDIDO E VAI COLOCAR OS DADOS QUE SÃO MAIORES OU IGUAIS A 400*/
SELECT
id,
data_do_pedido,
status,
total_do_pedido,
cliente,
data_de_envio_estimada
FROM tabelapedido 
WHERE total_do_pedido >= 400
  
