--FUNÇÕES DE AGREGAÇOES COUNT  E AVG
/*Como saber a média do lucro e despesas da empresa?*/
--AVG = Averegae/Média
SELECT AVG(lucro_liquido)
FROM faturamento

--CONTAR O NUMERO DE LINHAS DA CONSULTA
/*QUANTIDADE DE COLABORADORES QUE ESTÃO DESEMPREGADO*/
SELECT COUNT(*)
FROM HistoricoEmprego
WHERE datatermino NOT NULL