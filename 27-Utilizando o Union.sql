/*Quer mandar um presente para os fornecedores e colaboradores preciso buscar o endereço dos fornecedores e colaboradores */

SELECT rua, bairro, cidade, estado, cep 
FROM colaboradores
/*Union junta os dois selects. Unir os dois selects e trazer os dados de forma distintas ou seja sem repetição*/
UNION
SELECT rua, bairro, cidade, estado, cep 
FROM fornecedores

