# Projeto de Gestão de Pedidos

## Padrões para o Desenvolvimento

### Ícones
| Operação | Nome      | Cor
|-------------|-----------|-----:
| Edição      | fa-pencil | Blue
| Exclusão    | fa-times  | Red
| Desassociar | fa-minus  | Red
| Adicionar   | fa-plus   | Green
| Confirmar   | fa-check-circle | Green
| Sair/Cancelar | fa-ban | Red

### Nome de Colunas
| Operação | Nome
|--------|-----
| Edição | link_edit
| Exclusão | link_delete

### Comandos na Consulta
| Operação | Nome
|------------|-----
| Delete  | CmdDelete

### Botões do Formulário

O botão de ação do Formulário (OK, Salvar, Confirmar) deve ficar alinhado à direita, e o botão de Fechar/Cancelar a esquerda.

_NOTA: A decisão sobre o alinhamento dos botões tem como base o __Diagrama de Gutenberg__, que indica um padrão de leitura em "Z" do usuário, onde o ponto de inicial é o canto superior esquerdo e o ponto final da leitura (e de maior atenção) é o inferior direito. Mais informações [neste link](https://medium.com/ux-user-experience-design-em-portugues/padroes-de-leitura-na-web-a-experiencia-de-escanear-informacao-76d0a846c35a)_


| Propriedade       | Valor 
|-------------------|----------------:
| Tamanho Aumtático | Desmarcado
| Largura Mínima    | 145
| Altura Mínima     | 30
| Fixar Imagens nas Bordas | Marcado

## Tabelas
A seguir, a documentação das tabelas do banco de dados do sistema de gestão de pedidos.

### Tabela clientes
Tabela que armazena os dados dos clientes.

| Nome da Coluna | Tipo            | Permite Nulo | Comentário                                           |
|----------------|-----------------|--------------|-----------------------------------------------------|
| id 🔑          | `SERIAL`        | NÃO          | Identificador único do cliente.                     |
| nome           | `VARCHAR(100)`  | NÃO          | Nome do cliente.                                    |
| telefone       | `VARCHAR(15)`   | SIM          | Telefone de contato do cliente.                    |
| email          | `VARCHAR(100)`  | SIM          | Email do cliente.                                   |
| dtinc          | `TIMESTAMPTZ`   | NÃO          | Data e hora de criação do registro.                |
| dtalt          | `TIMESTAMPTZ`   | SIM          | Data e hora de modificação.                        |

### Tabela produtos
Tabela que armazena os dados dos produtos.

| Nome da Coluna | Tipo            | Permite Nulo | Comentário                                           |
|----------------|-----------------|--------------|-----------------------------------------------------|
| id 🔑         | `SERIAL`        | NÃO          | Identificador único do produto.                     |
| descricao      | `VARCHAR(200)`  | NÃO          | Descrição do produto.                               |
| precounitario  | `NUMERIC(10,2)` | NÃO          | Preço unitário do produto.                          |
| dtinc          | `TIMESTAMPTZ`   | NÃO          | Data e hora de criação do registro.                |
| dtalt          | `TIMESTAMPTZ`   | SIM          | Data e hora de modificação.                        |

---

### Tabela vendedores
Tabela que armazena os dados dos vendedores.

| Nome da Coluna | Tipo            | Permite Nulo | Comentário                                           |
|----------------|-----------------|--------------|-----------------------------------------------------|
| id 🔑         | `SERIAL`        | NÃO          | Identificador único do vendedor.                   |
| nome           | `VARCHAR(100)`  | NÃO          | Nome do vendedor.                                  |
| email          | `VARCHAR(100)`  | SIM          | Email do vendedor.                                 |
| telefone       | `VARCHAR(15)`   | SIM          | Telefone do vendedor.                              |
| dtinc          | `TIMESTAMPTZ`   | NÃO          | Data e hora de criação do registro.                |
| dtalt          | `TIMESTAMPTZ`   | SIM          | Data e hora de modificação.                        |

---

### Tabela pedidos
Tabela que armazena os pedidos realizados.

| Nome da Coluna        | Tipo            | Permite Nulo | Comentário                                                                    |
|-----------------------|-----------------|--------------|--------------------------------------------------------------------------------|
| id 🔑                 | `SERIAL`        | NÃO          | Identificador único do pedido.                                                |
| idcliente             | `INTEGER`       | SIM          | Identificador do cliente (relacionado à tabela clientes).                     |
| idvendedor            | `INTEGER`       | SIM          | Identificador do vendedor (relacionado à tabela vendedores).                  |
| dtpedido              | `DATE`          | SIM          | Data do pedido.                                                               |
| valortotal            | `NUMERIC(10,2)` | SIM          | Valor total do pedido.                                                        |
| usuarioinc            | `VARCHAR(50)`   | SIM          | Nome do usuário que lançou o pedido.                                          |
| status                | `CHAR(1)`       | NÃO          | Status do pedido: `T` (Temporário, padrão) ou `C` (Criado).                   |
| dtcancelamento        | `DATE`          | SIM          | Data de cancelamento do pedido.                                               |
| motivocancelamento    | `VARCHAR(200)`  | SIM          | Motivo do cancelamento do pedido.                                             |
| dtinc                 | `TIMESTAMPTZ`   | SIM          | Data e hora de criação do registro.                                           |
| dtalt                 | `TIMESTAMPTZ`   | SIM          | Data e hora de modificação.                                                   |

---

### Tabela pedidos_itens
Tabela que armazena os itens dos pedidos.

| Nome da Coluna | Tipo            | Permite Nulo | Comentário                                                                    |
|----------------|-----------------|--------------|--------------------------------------------------------------------------------|
| id 🔑          | `SERIAL`        | NÃO          | Identificador único do item.                                                  |
| idpedido       | `INTEGER`       | NÃO          | Identificador do pedido (relacionado à tabela pedidos).                       |
| idproduto      | `INTEGER`       | NÃO          | Identificador do produto (relacionado à tabela produtos).                     |
| quantidade     | `INTEGER`       | NÃO          | Quantidade do produto no pedido.                                              |
| precounitario  | `NUMERIC(10,2)` | NÃO          | Preço unitário do produto.                                                    |
| precototal     | `NUMERIC(10,2)` | NÃO          | Preço total do item (quantidade x preço unitário).                            |
| dtinc          | `TIMESTAMPTZ`   | NÃO          | Data e hora de criação do registro.                                           |
| dtalt          | `TIMESTAMPTZ`   | SIM          | Data e hora de modificação.                                                   |

