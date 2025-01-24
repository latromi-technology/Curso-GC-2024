-- Criação da tabela clientes
CREATE TABLE clientes (
    id SERIAL NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    dtinc TIMESTAMPTZ NOT NULL,
    dtalt TIMESTAMPTZ,
    CONSTRAINT pk_clientes_id PRIMARY KEY (id)
);

-- Adicionando comentários para a tabela e colunas de clientes
COMMENT ON TABLE clientes IS 'Tabela que armazena os dados dos clientes.';
COMMENT ON COLUMN clientes.id IS 'Identificador único do cliente.';
COMMENT ON COLUMN clientes.nome IS 'Nome do cliente.';
COMMENT ON COLUMN clientes.telefone IS 'Telefone de contato do cliente.';
COMMENT ON COLUMN clientes.email IS 'Email do cliente.';
COMMENT ON COLUMN clientes.dtinc IS 'Data e hora de criação do registro.';
COMMENT ON COLUMN clientes.dtalt IS 'Data e hora de modificação.';
