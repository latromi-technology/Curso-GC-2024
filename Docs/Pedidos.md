# Cadastros de Pedidos

## Visão Geral
Este é o cadastro de pedidos. Ele exige dependência de outras tabelas, como clientes, vendedores e itens do pedido.

Requisitos:

- Permitir apaneas a visualização dos pedidos incluídos pelo usuário (cada usuário só vê os seus pedidos).
- Permitir incluir um novo pedido.
- Permitir alterar um pedido existente.
- Permitir excluir um pedido temporário (status `T`).

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um pedido.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro._

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados dos pedidos.

### Colunas
Listar as seguintes informações:

| Coluna             | Comentários                                                        |
|--------------------|--------------------------------------------------------------------|
| Id                 | Id do pedido (Oculto e Chave).                                    |
| Cliente            | Nome do cliente (relacionado à tabela de clientes).               |
| Vendedor           | Nome do vendedor (relacionado à tabela de vendedores).            |
| Data do Pedido     | Data em que o pedido foi realizado.                               |
| Valor Total        | Valor total calculado com base nos itens do pedido.               |
| Status             | Status do pedido (`T` - Temporário ou `C` - Criado).              |
| Data Cancelamento  | Data em que o pedido foi cancelado (se aplicável).                |
| Motivo Cancelamento| Motivo do cancelamento do pedido (se aplicável).                  |

### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro.

Ao abrir o Formulário de pedido em modo de inclusão:
- Incluir um registro de pedido **temporário**, apenas com a data do pedido informada. O `ID` deste registro deve ser reservado para realizar a atualização dos dados quando o usuário clicar no botão de confirmar.

Ao clicar no botao de confirmar:
- Atualizar os dados do pedido, sendo obrigatório informar o cliente e o vendedor.
- Na atualização dos dados do pedidos, o status deve ser trocado para **criado**.
- O valor total deve ser calculado automaticamente com base nos itens do pedido.

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente na listagem de dados.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não é permitido excluir pedidos com status `C` (Criado)._ Apenas pedidos com status `T` podem ser excluídos.

_Atenção: Não se esqueça de utilizar o ID do registro na cláusula `WHERE` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o pedido selecionado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente na listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicione um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com o ID do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente na listagem de dados.

## Especificações técnicas

- Tabela de pedidos: `public.pedidos`
- Tabela de vendedores: `public.vendedores`
- Tabela de clientes: `public.clientes`
- Tabela de itens do pedido: `public.pedidos_itens`
- Tabela de produtos: `public.produtos`

