--Utilizando o AND, OR, IN, E NOT

--Utilizando o AND
SELECT * 
FROM HistoricoEmprego
WHERE cargo = 'Professor' AND  
datatermino NOT NULL

--Utilizando o OR(Uma das condições especificadas)
SELECT * 
FROM HistoricoEmprego
WHERE cargo = 'Oftalmologista' OR 
cargo = 'Dermatologista'

--Utilizando o IN(Para filtrar mais de um)
SELECT *
FROM HistoricoEmprego
WHERE cargo in('Professor', 'Oftalmologista', 'Dermatologista')

--Utilizando o not
SELECT *
FROM HistoricoEmprego
WHERE cargo NOT in('Professor', 'Oftalmologista', 'Dermatologista')
--MENOS OS 