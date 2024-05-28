/*Quero que esse texto apareça antes do faturamento Bruto medio*/

SELECT (' O FATURAMENTO BRUTO MEDIO FOI ' || CAST(ROUND (AVG(faturamento_bruto),2) AS TEXT))
 FROM faturamento
  
  /*CAST = CONVERTER PARA STRING PARA VIR UM TEXTO*/