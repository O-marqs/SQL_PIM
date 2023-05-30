CREATE DATABASE grafica;
USE grafica;
CREATE TABLE pedido
(
 cliente_pedido INT,
 total_preco FLOAT,
 nota_fiscal_venda INT PRIMARY KEY,
 idjuridico_fisico_cliente INT,
 FOREIGN KEY (idjuridico_fisico_cliente) REFERENCES juridico_fisico_cliente (idjuridico_fisico_cliente)
);

CREATE TABLE produto
(
 descricao VARCHAR(255),
 id_produto INT PRIMARY KEY,
 nome VARCHAR(255),
 preco FLOAT,
 nota_fiscal_compra INT
);

CREATE TABLE juridico_fisico_cliente
(
 cnpj_ou_cpf INT PRIMARY KEY,
 nome VARCHAR(255),
 codigo INT,
 telefone INT
);

CREATE TABLE papel_cartucho_fornecedor
(
 CNPJ INT PRIMARY KEY,
 telefone INT,
 email VARCHAR(255),
 Nome VARCHAR(255)
);

CREATE TABLE engloba
(
 nota_fiscal_venda INT,
 id_produto INT,
 PRIMARY KEY (nota_fiscal_venda, id_produto),
 FOREIGN KEY (nota_fiscal_venda) REFERENCES pedido (nota_fiscal_venda),
 FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
);

CREATE TABLE fornece
(
 id_produto INT,
 CNPJ INT,
 PRIMARY KEY (id_produto, CNPJ),
 FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
 FOREIGN KEY (CNPJ) REFERENCES papel_cartucho_fornecedor (CNPJ)
);
