# Cadastros de Produtos

## Visão Geral
Este é o cadastro de produtos. Ele não exige dependência de outras tabelas.

Requisitos:

- Permitir a visualização de todos os produtos.
- Permitir incluir um novo produto.
- Permitir alterar um produto existente.
- Permitir excluir um produto existente.

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um produto.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro._

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados dos produtos.

### Colunas
Listar as seguintes informações:

| Coluna        | Comentários                              |
|---------------|------------------------------------------|
| Id            | Id do produto (Oculto e Chave).         |
| Descrição     | Descrição do produto.                   |
| Preço Unitário| Valor unitário do produto.              |
| Data Inclusão | Data em que o produto foi cadastrado.   |
| Data Alteração| Última data de modificação do cadastro. |

### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente na listagem de dados.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na cláusula `WHERE` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o cadastro do produto selecionado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente na listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicione um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com o ID do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente na listagem de dados.

## Especificações técnicas

- Tabela de produtos: `public.produtos`
