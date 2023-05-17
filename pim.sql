CREATE DATABASE grafica;
USE grafica;
	CREATE TABLE pedido (
	 cliente_pedido varchar(100),
	 total_preco decimal(10,2),	
	 nota_fiscal_venda INT PRIMARY KEY
	);

	CREATE TABLE produtos_pedidos (
	 produto VARCHAR(100),
	 id_produto int,
	 quantidade int,
	 id_produto_pedido int primary key,
     id_pedido int,
  FOREIGN KEY (id_pedido) REFERENCES pedido(nota_fiscal_venda),
  FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
	);

	CREATE TABLE produto (
	 nome varchar(100),
	 preco decimal(10,2),
	 descricao varchar(100),
	 id_produto INT PRIMARY KEY,
     nota_fiscal_compra int
	);

CREATE TABLE Cliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE Juridico (
  cnpj VARCHAR(14) PRIMARY KEY,
  telefone VARCHAR(20),
  nome_fantasia VARCHAR(100),
  FOREIGN KEY (cnpj) REFERENCES Cliente(id)
);

CREATE TABLE Fisico (
  cpf VARCHAR(11) PRIMARY KEY,
  telefone VARCHAR(20),
  nome VARCHAR(100),
  FOREIGN KEY (cpf) REFERENCES Cliente(id)
);

CREATE TABLE Fornecedor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE Fornecedor_Cartucho (
  cnpj VARCHAR(14) PRIMARY KEY,
  telefone VARCHAR(20),
  nome VARCHAR(100),
  email VARCHAR(100),
  FOREIGN KEY (cnpj) REFERENCES Fornecedor(id)
);

CREATE TABLE Fornecedor_Papel (
  cnpj VARCHAR(14) PRIMARY KEY,
  telefone VARCHAR(20),
  nome VARCHAR(100),
  email VARCHAR(100),
  FOREIGN KEY (cnpj) REFERENCES Fornecedor(id)
);
