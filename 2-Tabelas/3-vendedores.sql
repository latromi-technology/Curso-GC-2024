-- Criação da tabela vendedores
CREATE TABLE vendedores (
    id SERIAL NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15),
    dtinc TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    dtalt TIMESTAMPTZ,
    CONSTRAINT pk_vendedores_id PRIMARY KEY (id)
);

-- Adicionando comentários para a tabela e colunas de vendedores
COMMENT ON TABLE vendedores IS 'Tabela que armazena os dados dos vendedores.';
COMMENT ON COLUMN vendedores.id IS 'Identificador único do vendedor.';
COMMENT ON COLUMN vendedores.nome IS 'Nome do vendedor.';
COMMENT ON COLUMN vendedores.email IS 'Email do vendedor.';
COMMENT ON COLUMN vendedores.telefone IS 'Telefone do vendedor.';
COMMENT ON COLUMN vendedores.dtinc IS 'Data e hora de criação do registro.';
COMMENT ON COLUMN vendedores.dtalt IS 'Data e hora de modificação.';