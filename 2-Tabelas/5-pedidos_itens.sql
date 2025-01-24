-- Criação da tabela pedidos_itens
CREATE TABLE pedidos_itens (
    id SERIAL NOT NULL,
    idpedido INTEGER NOT NULL,
    idproduto INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    precounitario NUMERIC(10,2) NOT NULL,
    precototal NUMERIC(10,2) NOT NULL,
    dtinc TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    dtalt TIMESTAMPTZ,
    CONSTRAINT pk_pedidos_itens_id PRIMARY KEY (id),
    CONSTRAINT fk_pedidos_itens_pedidos FOREIGN KEY (idpedido) REFERENCES pedidos(id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_pedidos_itens_produtos FOREIGN KEY (idproduto) REFERENCES produtos(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- Adicionando comentários para a tabela e colunas de pedidos_itens
COMMENT ON TABLE pedidos_itens IS 'Tabela que armazena os itens dos pedidos.';
COMMENT ON COLUMN pedidos_itens.id IS 'Identificador único do item.';
COMMENT ON COLUMN pedidos_itens.idpedido IS 'Identificador do pedido.';
COMMENT ON COLUMN pedidos_itens.idproduto IS 'Identificador do produto.';
COMMENT ON COLUMN pedidos_itens.quantidade IS 'Quantidade do produto no pedido.';
COMMENT ON COLUMN pedidos_itens.precounitario IS 'Preço unitário do produto.';
COMMENT ON COLUMN pedidos_itens.precototal IS 'Preço total do item (quantidade x preço unitário).';
COMMENT ON COLUMN pedidos_itens.dtinc IS 'Data e hora de criação do registro.';
COMMENT ON COLUMN pedidos_itens.dtalt IS 'Data e hora de modificação.';
