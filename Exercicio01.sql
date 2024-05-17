CREATE TABLE funcionarios(
  ID  PRIMARY KEY,
  Nome_Funcionario TEXT,
  Cargo_Funcionario TEXT,
  Departamento_Funcionario TEXT,
  Data_de_contratacao DATE,
  Salario_Funcionario DECIMAL(10,2)
  )

  INSERT INTO funcionarios(
    id,
    nome_funcionario,
    cargo_funcionario,
    departamento_funcionario,
    data_de_contratacao,
    salario_funcionario
    )
    VALUES(
      '32D',
      'João Silva',
      'Desenvolvedor de Software',
      'TI',
      '2023-10-24',
      6000.00
     )
     
     SELECT *
     FROM funcionarios