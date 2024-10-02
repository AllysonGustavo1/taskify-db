## taskify-db
Letra E feita.
Letra H feita.
Banco de dados em PostgreSQL hospedado em [aiven](https://aiven.io/)
O banco de dados do Taskify contém três tabelas principais:

Usuarios: Armazena informações dos usuários (id, role, nome, senha, e email).
Responsaveis: Contém responsáveis associados aos usuários (id, id do usuário, e nome).
Tarefas: Gerencia as tarefas (id, id do responsável, id do usuário, título, descrição, prioridade, deadline, situação e número).
