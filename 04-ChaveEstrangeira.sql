CREATE TABLE tabelaprodutos (
  ID_Produto INT PRIMARY KEY,
  Nome_do_Produto VARCHAR (250),
  Descricao TEXT,
  Categoria INT,
  Preco_Compra DECIMAL (10,2)/*ATE 10 E 2 CASAS DECIMAIS*/
  Unidade VARCHAR(50),
  Fornecedor INT,
  Data_de_inclisao DATE,
  FOREIGN KEY (Categoria) REFERENCES tabelaCategorias (id_categoria), /*referencia sempre a tabela e a coluna da tebal*/
  FOREIGN KEY (Fornecedor) REFERENCES tabelafornecedores(id)
  )