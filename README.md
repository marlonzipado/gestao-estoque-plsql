# Projeto de Gestão de Estoque com PL/SQL

Este é um sistema simples de gestão de estoque utilizando PL/SQL. Ideal para fins educacionais e portfólio.

## Funcionalidades

- Cadastro de produtos
- Controle de entradas e saídas de estoque
- Relatório de saldo atual
- Log de movimentações via trigger

## Estrutura

- `schema/`: Criação das tabelas
- `procedures/`: Lógicas de negócio
- `triggers/`: Automação de logs
- `views/`: Relatórios simples
- `extras/`: Exemplos e testes

## Como usar

1. Crie as tabelas com `schema/create_tables.sql`
2. Insira dados de exemplo com `schema/insert_mock_data.sql`
3. Execute as procedures de movimentação
4. Consulte a view `vw_estoque_atual` para ver o saldo

## Autor

Projeto feito por Marlon Vinícius Magalhães Pereira, com 5 anos de experiência em PL/SQL.
