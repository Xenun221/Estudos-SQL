/*5	 Pessoas que tem a melhores Coloaboradores que tem as melhores remunerações*/
SELECT *
FROM HistoricoEmprego
ORDER BY salario DESC
LIMIT 5--Limitar os registros que vão aparecer
/*DESC = DECRESECENTE