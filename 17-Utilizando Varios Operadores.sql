--Utilizando Diversos Operadores
SELECT *
FROM Treinamento
WHERE (curso LIKE 'o direito%' AND instituicao ='da Rocha') 
OR(curso like 'o conforto%' AND instituicao = 'das Neves')