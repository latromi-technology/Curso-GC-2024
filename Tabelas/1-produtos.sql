
-- Criação da tabela produtos
CREATE TABLE produtos (
    id SERIAL NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    precounitario NUMERIC(10,2) NOT NULL,
    estoque INTEGER NOT NULL,
    dtinc TIMESTAMPTZ NOT NULL,
    dtalt TIMESTAMPTZ,
    CONSTRAINT pk_produtos_id PRIMARY KEY (id)
);

-- Adicionando comentários para a tabela e colunas de produtos
COMMENT ON TABLE produtos IS 'Tabela que armazena os dados dos produtos.';
COMMENT ON COLUMN produtos.id IS 'Identificador único do produto.';
COMMENT ON COLUMN produtos.descricao IS 'Descrição do produto.';
COMMENT ON COLUMN produtos.precounitario IS 'Preço unitário do produto.';
COMMENT ON COLUMN produtos.estoque IS 'Quantidade disponível no estoque.';
COMMENT ON COLUMN produtos.dtinc IS 'Data e hora de criação do registro.';
COMMENT ON COLUMN produtos.dtalt IS 'Data e hora de modificação.';





