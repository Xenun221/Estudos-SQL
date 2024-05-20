--ORDEM ALFABETICA
SELECT *
FROM tabelaprodutos
WHERE preco_de_compra BETWEEN 200 AND 600 
ORDER BY nome_do_produto 

--ORDNAR POR DATA DE INCLUSAO
SELECT *
FROM tabelaprodutos
WHERE preco_de_compra  BETWEEN 200 AND 600
ORDER BY data_de_inclusao

--ORDERNAR VALORES NUMERICOS
SELECT *
FROM tabelaprodutos
WHERE preco_de_compra BETWEEN 200 AND 600
ORDER BY fornecador desc
/*DESC = DESCRESENTE  ASC = ASCEDENTE*/