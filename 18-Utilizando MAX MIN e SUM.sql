--UTILIZANDO MAX(MAXIMO)
SELECT mes, MAX(faturamento_bruto) 
FROM faturamento

--UTILIZANDO O MIN(MINIMO)
SELECT mes, MIN(faturamento_bruto)
FROM faturamento

--SOMANDO OS NOVOS CLIENTE
SELECT SUM(numero_novos_clientes) AS 'Novos Clientes 2023'
FROM faturamento
WHERE mes LIKE '%2023%'