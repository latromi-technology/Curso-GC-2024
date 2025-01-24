-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id SERIAL NOT NULL,
    idcliente INTEGER,
    idvendedor INTEGER,
    dtpedido DATE,
    valortotal NUMERIC(10,2),
    usuarioinc VARCHAR(50),
    status CHAR(1) NOT NULL DEFAULT 'T',
    dtcancelamento DATE,
    motivocancelamento VARCHAR(200),
    dtinc TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    dtalt TIMESTAMPTZ,
    CONSTRAINT pk_pedidos_id PRIMARY KEY (id),
    CONSTRAINT fk_pedidos_clientes FOREIGN KEY (idcliente) REFERENCES clientes(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_pedidos_vendedores FOREIGN KEY (idvendedor) REFERENCES vendedores(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Adicionando comentários para a tabela e colunas de pedidos
COMMENT ON TABLE pedidos IS 'Tabela que armazena os pedidos realizados.';
COMMENT ON COLUMN pedidos.id IS 'Identificador único do pedido.';
COMMENT ON COLUMN pedidos.idcliente IS 'Identificador do cliente.';
COMMENT ON COLUMN pedidos.idvendedor IS 'Identificador do vendedor.';
COMMENT ON COLUMN pedidos.dtpedido IS 'Data do pedido.';
COMMENT ON COLUMN pedidos.valortotal IS 'Valor total do pedido.';
COMMENT ON COLUMN pedidos.usuarioinc IS 'Nome do usuário que lançou o pedido.';
COMMENT ON COLUMN pedidos.status IS 'Status do pedido: T-Temporário, C-Criado.';
COMMENT ON COLUMN pedidos.dtcancelamento IS 'Data de cancelamento do pedido.';
COMMENT ON COLUMN pedidos.motivocancelamento IS 'Motivo do cancelamento do pedido.';
COMMENT ON COLUMN pedidos.dtinc IS 'Data e hora de criação do registro.';
COMMENT ON COLUMN pedidos.dtalt IS 'Data e hora de modificação.';