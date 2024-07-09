/*Criar consulta para calcular o valor do faturamento diario*/
SELECT *
FROM pedidos

SELECT DATE(datahorapedido) AS Dia, ip.precounitario, sum(ip.precounitario) AS FaturamentoDiario
FROM pedidos p
JOIN itenspedidos ip
on p.id = ip.idpedido
GROUP BY Dia
ORDER by Dia 
/*
Executar de forma automatica e em uma tabela fisica

Trigger(gatilho) --> Automatizar etapas 
*/
/*Criando uma Trigger*/
CREATE TRIGGER CalculaFaturamentoDiario
AFTER INSERT ON itenspedidos
FOR EACH ROW 
BEGIN
    DELETE FROM FaturamentoDiario; /* SEMPRE QUE FOR ACIONADO VAI DELETAR TUDO E VAI INSERIR NOVAMENTE */
    
    INSERT INTO FaturamentoDiario (dia, faturamentototal)
    SELECT DATE(p.datahorapedido) AS dia, SUM(ip.precounitario) AS faturamentototal
    FROM pedidos p
    JOIN itenspedidos ip ON p.id = ip.idpedido
    GROUP BY dia
    ORDER BY dia;
END

/*
CREATE TRIGGER CalculaFaturamentoDiario
AFTER INSERT ON itenspedidos
FOR EACH ROW 
BEGIN
DELETE FROM FaturamentoDiario /*SEMPRE QUE FOR ACIONADO VAI DELETAR TUDO E VAI INSERIR NOVAMENT*/
INSERT INTO FaturamentoDiario (dia, faturamentototal)
SELECT DATE(p.datahorapedido) AS dia, SUM(ip.precounitario) AS faturamentototal
FROM pedidos p
JOIN itenspedidos ip ON p.id = ip.idpedido
GROUP BY dia
ORDER BY dia;
END
*/



/*Testando o Select*/
INSERT INTO FaturamentoDiario (dia, faturamentototal)
SELECT DATE(p.datahorapedido) AS dia, SUM(ip.precounitario) AS faturamentototal
FROM pedidos p
JOIN itenspedidos ip ON p.id = ip.idpedido
GROUP BY dia
ORDER BY dia;
