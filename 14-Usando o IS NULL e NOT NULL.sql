SELECT *
FROM HistoricoEmprego
WHERE datatermino IS NULL --filtrar a data termino seja NULA
--WHERE datatermino NOT NULL (Não Estão empregado no momento)
ORDER BY salario DESC
LIMIT 5