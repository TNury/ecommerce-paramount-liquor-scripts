-- Listar todos os pedidos com o nome do cliente
SELECT 
    pedido.pedido_id,
    cliente.nome_fantasia,
    pedido.data_pedido,
    pedido.valor_total
FROM Pedido pedido
JOIN Cliente cliente ON pedido.cliente_id = cliente.cliente_id
ORDER BY pedido.data_pedido DESC;

-- Busca todos os produtos de uma categoria específica
SELECT 
    produto_id,
    nome,
    preco,
    estoque
FROM Produto
WHERE categoria_id = 1   -- Cervejas
ORDER BY preco DESC;

-- Lista os itens de um pedido com detalhes do produto
SELECT 
    item_pedido.item_id,
    produto.nome AS produto,
    item_pedido.quantidade,
    item_pedido.preco_unitario,
    item_pedido.subtotal
FROM ItemPedido item_pedido
JOIN Produto produto ON item_pedido.produto_id = produto.produto_id
WHERE item_pedido.pedido_id = 1;

-- Lista os 3 produtos mais caros do catálogo
SELECT 
    nome,
    preco
FROM Produto
ORDER BY preco DESC
LIMIT 3;

-- Lista todos os clientes que fizeram algum pedido acima de R$300
SELECT DISTINCT 
    cliente.cliente_id,
    cliente.nome_fantasia,
    pedido.valor_total
FROM Cliente cliente
JOIN Pedido pedido ON cliente.cliente_id = pedido.cliente_id
WHERE pedido.valor_total > 300
ORDER BY pedido.valor_total DESC;