# Cadastros de Clientes

## Visão Geral
Este é o cadastro de clientes. Ele não exige dependência de outras tabelas.

Requisitos:

- Permitir a visualização de todos os clientes.
- Permitir incluir um novo cliente.
- Permitir alterar um cliente existente.
- Permitir excluir um cliente existente.

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um cliente.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro._

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados dos clientes.

### Colunas
Listar as seguintes informações:

| Coluna        | Comentários                              |
|---------------|------------------------------------------|
| Id            | Id do cliente (Oculto e Chave).         |
| Nome          | Nome do cliente.                        |
| Telefone      | Telefone de contato do cliente.         |
| Email         | Email do cliente.                       |
| Data Inclusão | Data em que o cliente foi cadastrado.   |
| Data Alteração| Última data de modificação do cadastro. |

### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente na listagem de dados.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na cláusula `WHERE` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o cadastro do cliente selecionado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente na listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicione um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com o ID do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente na listagem de dados.

## Especificações técnicas

- Tabela de clientes: `public.clientes`