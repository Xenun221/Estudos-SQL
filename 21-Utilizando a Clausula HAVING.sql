SELECT instituicao, COUNT(curso) AS 'Qtd Curso'
FROM Treinamento
GROUP by instituicao
HAVING COUNT(curso) > 2

/*
Where so utilizamos para registros unicos e não para registros agrupados

Depois que nossos dadods estão agrupados, vammos utilizar a clausula HAVING
*/

SELECT cargo, COUNT(*) QTD
FROM HistoricoEmprego
GROUP BY cargo
HAVING QTD >= 2

--EXEMPLO2:
SELECT id_colaborador, SUM(salario) QTD
FROM HistoricoEmprego
GROUP BY id_colaborador
HAVING QTD > 2000
ORDER BY QTD ASC