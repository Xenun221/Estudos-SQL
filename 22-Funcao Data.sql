/*Trazer o ano e Mes*/
SELECT id_colaborador, STRFTIME('%Y/%m', datainicio)
FROM Licencas

/*Y= YEAR /M = MONTH*/

/*Qual intervalo de tempo o cliente ficou contratado(Intervalo de tempo)*/
SELECT id_colaborador, Julianday(datatermino) - Julianday(datacontratacao) as 'Tempo de contrato'
FROM HistoricoEmprego
WHERE datatermino IS NOT NULL