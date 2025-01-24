# Cadastros de Itens do Pedido

## Visão Geral
Este é o cadastro de itens do pedido. Ele exige dependência de outras tabelas, como pedidos e produtos.

Requisitos:

- Permitir a visualização dos itens de um pedido específico (o ID do pedido deve ser recebido como parâmetro).
- Permitir incluir um novo item no pedido.
- Permitir alterar um item existente no pedido.
- Permitir excluir um item do pedido.

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um item do pedido.

_Atenção: Lembre-se de que para fazer a inclusão, será necessário repassar o ID do pedido como parâmetro para o formulário._

Ao incluir um item no pedido:
- O ID do pedido deve ser obrigatório e recebido como parâmetro.
- O produto e a quantidade são obrigatórios.
- O preço unitário deve ser preenchido automaticamente com base no produto selecionado.
- O preço total deve ser calculado automaticamente (quantidade x preço unitário).

Após a inclusão ou alteração de um item, o valor total do pedido precisa ser recalculado automaticamente.

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os itens de um pedido específico.

### Colunas
Listar as seguintes informações:

| Coluna        | Comentários                              |
|---------------|------------------------------------------|
| Id            | Id do item (Oculto e Chave).            |
| Produto       | Nome do produto (relacionado à tabela de produtos).|
| Quantidade    | Quantidade do produto no pedido.         |
| Preço Unitário| Preço unitário do produto.               |
| Preço Total   | Valor total do item (quantidade x preço unitário).|

### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro.

Ao abrir o formulário de inclusão:
- O ID do pedido deve ser automaticamente repassado ao formulário e vinculado ao item.
- Os dados do produto, quantidade e preço unitário devem ser preenchidos pelo usuário.

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente na listagem de itens e o valor total do pedido recalculado.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na cláusula `WHERE` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o item selecionado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente na listagem de itens e o valor total do pedido recalculado.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicione um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o ID do pedido e o ID do item para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente na listagem de itens e o valor total do pedido recalculado.

## Especificações técnicas

- Tabela de itens do pedido: `public.pedidos_itens`
- Tabela de pedidos: `public.pedidos`
- Tabela de produtos: `public.produtos`

