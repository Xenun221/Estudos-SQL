/*Saber se os campos de CPF estão preenchidos com 11 digitos
	Função LENGHT = QUAL COMPRIMENTO DE UMA STRING EM ESPECIFICO
*/


SELECT nome, LENGTH(cpf) qtd
FROM Colaboradores
WHERE qtd = 11

--COM COUNT
SELECT COUNT(*) as 'QTD COLABORADORES', LENGTH(cpf) qtd
FROM Colaboradores
WHERE qtd = 11

--TIPO UM TEXTINHO concatenação ||
SELECT('A PESSOA  COLABORADORA' || nome || ' DE CPF' || cpf || ' POSSUI O SEGUINTE 
       ENDEREÇO: ' || endereco) as texto
       FROM Colaboradores
    