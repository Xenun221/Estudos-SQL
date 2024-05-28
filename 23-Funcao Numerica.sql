/*Funções Numericas */
/*Arredondar valores numericos no SQL*/
SELECT AVG(faturamento_bruto), ROUND(AVG(faturamento_bruto), 2)
FROM faturamento
/*2 SERIA O NUMERO DE CASAS DECIMAIS*/

SELECT	 CEIL(faturamento_bruto), CEIL(despesas)
FROM faturamento
/*CEIL = ARREDONDA PARA O INTEIRO MAIOR*/

SELECT FLOOR(faturamento_bruto), FLOOR(despesas)
FROM faturamento
/*FLOOR =ARREDONDA PARA O INTEIRO MENOR*/