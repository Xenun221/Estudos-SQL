SELECT id_colaborador, cargo, salario,
CASE 
WHEN salario < 3000 THEN 'Baixo'
WHEN salario BETWEEN 3000 AND 6000 THEN 'Médio'
ELSE 'Alto'
end as Categoria_salario
FROM HistoricoEmprego