select  parentesco, COUNT(*) AS 'Qtd Parentesco'
FROM  Dependentes
GROUP BY parentesco --AGRUPA LINHA QUE TEM OS MESMOS VALORES

--Exemplo2:
SELECT instituicao, COUNT(curso) AS 'Qtd Instituição'
FROM Treinamento
GROUP by instituicao 
WHERE COUNT(curso) > 2
--FUNÇÕES DE AGREGAÇÃO NÃO CONSEGUIMOS USAR O WHERE
/*Agrupar os dados da coluna em tipo especifico*/