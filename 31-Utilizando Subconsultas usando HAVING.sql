/*
	Queremos saber a medida de preço dos produtos.
    Quais são os produtos que tem a media maior que o preço dos produtos
*/


/*TODOS OS PRODUTOS ONDE SEU PREÇO E MAIOR QUE A MEDIA DE PREÇO DE TODOS OS PRODUTOS*/
SELECT nome, preco
FROM produtos
GROUP BY nome, preco
HAVING preco > (
	SELECT AVG(preco)
	FROM produtos
)