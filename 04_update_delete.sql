-- Atualizar stock
UPDATE Produto
SET estoque = estoque + 200
WHERE produto_id = 1;   -- Heineken 600ml

-- Atualizar preço
UPDATE Produto
SET preco = 165.00
WHERE produto_id = 3;   -- Jack Daniels

-- Atualizar dados de contato de um cliente
UPDATE Cliente
SET telefone = '11990001122'
WHERE cliente_id = 2;   -- Mercado Silva

-- Apaga um produto APENAS se ele não pertencer a nenhum pedido
DELETE FROM Produto
WHERE produto_id = 2
AND produto_id NOT IN (SELECT produto_id FROM ItemPedido);

-- Apaga uma categoria APENAS se ela não pertencer a nenhum produto
DELETE FROM CategoriaProduto
WHERE categoria_id = 5 -- Energético
  AND categoria_id NOT IN (
      SELECT categoria_id FROM Produto
  );

-- Apaga clientes que nunca fizeram um pedido
DELETE FROM Cliente cliente
WHERE NOT EXISTS (
    SELECT 1 FROM Pedido pedido
    WHERE pedido.cliente_id = cliente.cliente_id
);