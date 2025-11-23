CREATE DATABASE IF NOT EXISTS paramount;
USE paramount;

CREATE TABLE Cliente (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    cnpj VARCHAR(20) NOT NULL,
    razao_social VARCHAR(100) NOT NULL,
    nome_fantasia VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);


CREATE TABLE Fornecedor (
    fornecedor_id INT PRIMARY KEY AUTO_INCREMENT,
    cnpj VARCHAR(20) NOT NULL,
    razao_social VARCHAR(100) NOT NULL,
    nome_fantasia VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);


CREATE TABLE CategoriaProduto (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    descricao VARCHAR(255)
);


CREATE TABLE Produto (
    produto_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    fornecedor_id INT NOT NULL,
    categoria_id INT NOT NULL,

    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedor(fornecedor_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    FOREIGN KEY (categoria_id) REFERENCES CategoriaProduto(categoria_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE Pedido (
    pedido_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE ItemPedido (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);