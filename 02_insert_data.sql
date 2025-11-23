INSERT INTO Cliente (cnpj, razao_social, nome_fantasia, telefone, endereco) VALUES
('11.222.333/0001-44', 'Bar do João Ltda', 'Bar do João', '11987654321', 'Rua A, 123'),
('22.333.444/0001-55', 'Mercado Silva ME', 'Mercado Silva', '11998765432', 'Rua B, 77'),
('33.444.555/0001-66', 'Restaurante Sabor Caseiro', 'Sabor Caseiro', '11991234567', 'Av. Central, 200'),
('44.555.666/0001-77', 'Empório Alto Padrão', 'Empório Alto', '1188887777', 'Rua das Flores, 55'),
('55.666.777/0001-88', 'Choperia Boa Vida', 'Boa Vida', '11999887766', 'Rua das Palmeiras, 900');

INSERT INTO Fornecedor (cnpj, razao_social, nome_fantasia, telefone, endereco) VALUES
('99.888.777/0001-11', 'Distribuidora Paramount Liquor SA', 'Paramount Liquor', '1130304040', 'Rodovia BR-12, km 88');

INSERT INTO CategoriaProduto (nome, descricao) VALUES
('Cervejas', 'Cervejas nacionais e importadas'),
('Destilados', 'Whisky, Vodka, Gin e outros destilados'),
('Vinhos', 'Vinhos nacionais e internacionais'),
('Refrigerantes', 'Bebidas não alcoólicas'),
('Energéticos', 'Marcas premium de energia');

INSERT INTO Produto (nome, descricao, preco, estoque, fornecedor_id, categoria_id) VALUES
('Heineken 600ml', 'Garrafa verde premium', 12.50, 300, 1, 1),
('Skol Lata 350ml', 'Skol amarelinha tradicional', 3.80, 800, 1, 1),
('Whisky Jack Daniels 1L', 'Tennessee Whiskey', 155.00, 120, 1, 2),
('Gin Tanqueray 750ml', 'Gin importado clássico', 99.90, 90, 1, 2),
('Vinho Chileno Reservado', 'Carmenere Reserva', 45.00, 200, 1, 3),
('Energético Red Bull 250ml', 'Classic Blue', 10.50, 500, 1, 5);

INSERT INTO Pedido (cliente_id, data_pedido, valor_total) VALUES
(1, '2025-01-10', 250.00),
(3, '2025-01-11', 680.00),
(2, '2025-01-12', 45.00),
(5, '2025-01-13', 310.00),
(1, '2025-01-14', 155.00);

INSERT INTO ItemPedido (pedido_id, produto_id, quantidade, preco_unitario, subtotal) VALUES
(1, 1, 10, 12.50, 125.00),
(1, 2, 20, 3.80, 76.00),
(1, 6, 5, 10.50, 52.50),

(2, 3, 4, 155.00, 620.00),
(2, 4, 1, 99.90, 99.90),

(3, 5, 1, 45.00, 45.00),

(4, 1, 10, 12.50, 125.00),
(4, 6, 10, 10.50, 105.00),
(4, 4, 1, 99.90, 99.90),

(5, 3, 1, 155.00, 155.00);