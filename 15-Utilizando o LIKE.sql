/* Utilizando o LikeColaboradores
Quer buscar um curso mas so sabe o começo dele
*/
SELECT *
FROM Treinamento
WHERE curso LIKE 'O poder%'
--Meio do curso LIKE '%REALIZAR%'

/*
o poder% Vai filtrar o começo pelo poder mas vai ter algum texto logo apos
Palavra que esta no meio do nome do curso LIKE '%REALIZAR%(Vai buscar antes e depois(meio))
*/