📦 Projeto SQL – E-commerce B2B Paramount Liquor

Este repositório contém os scripts SQL desenvolvidos para a Experiência Prática 4 da disciplina de Modelagem de Banco de Dados.

📁 Estrutura do repositório

- README.md
- 01_create_tables.sql
- 02_insert_data.sql
- 03_select_queries.sql
- 04_update_delete.sql
- assets/modelo-logico.png

📙 Sobre o projeto

Este projeto foi desenvolvido com base no modelo lógico criado nas etapas anteriores da disciplina, totalmente normalizado até a 3FN e com integridade referencial implementada.


🚀 Como executar os scripts

1. Instale o MySQL e abra o MySQL Workbench.
2. Crie o banco de dados executando:

```sql
CREATE DATABASE paramount;
USE paramount;
```
3. Execute os scripts na se guinte ordem:
  1. `01_create_tables.sql`:
    - Cria todas as tabelas, chaves primárias, e relacionamentos, etc.
  2. `02_insert_data.sql`:
    - Insere dados iniciais nas tabelas.
  3. `03_select_queries.sql`:
    - Contém consultas SELECT com:
      - WHERE
      - ORDER BY
      - LIMIT
      - JOIN
  4. `04_update_delete.sql`:
    - Scripts de UPDATE e DELETE.

🧱 Tecnologias utilizadas

- MySQL 8.0
