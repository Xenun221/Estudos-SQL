--UTILIZANDO O AND(E)
SELECT * 
FROM tabelapedidos
WHERE total_do_pedido >= 200 AND status = 'Pendente'

--Utilizando o OR (Ou)
SELECT *
FROM tabelapedidos
WHERE status = 'Pendente' OR status = 'Processando'

--Utilizando o NOT
SELECT *
FROM tabelapedidos
WHERE NOT status = 'Pendente' --VAI TRAZER OS STATUS AONDE NÃO ESTEJA PENDENDE

--Utilizadno Between(Entre)
SELECT *
FROM tabelapedidos
where data_de_envio_estimada BETWEEN '2023-08-01' AND '2023-09-01'