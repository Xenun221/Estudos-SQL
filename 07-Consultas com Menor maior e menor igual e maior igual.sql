--Maior que 200 reais
SELECT *
FROM tabelaprodutos
WHERE preco_de_compra > 200

--Maior ou Igual a 200 reaisdemo
SELECT *
FROM tabelaprodutos
WHERE preco_de_compra >= 200

--MENOR QUE 200
SELECT *
FROM tabelaprodutos
WHERE preco_de_compra < 200

--MENOR OU IGUAL
SELECT *
FROM tabelaprodutos
WHERE preco_de_compra <= 200

--DIFERENTE
SELECT *
FROM tabelaprodutos
WHERE preco_de_compra <> 200


--nome dos cliente seja maior que C
SELECT *
FROM TABALA_CLIENTE
WHERE NOME_CLIENTE > 'C'

