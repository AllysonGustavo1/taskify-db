CREATE TABLE Usuarios (
  id_usuario SERIAL   NOT NULL ,
  role VARCHAR(20)   NOT NULL ,
  usuario VARCHAR(100)   NOT NULL ,
  senha VARCHAR(100)   NOT NULL ,
  email VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(id_usuario));




CREATE TABLE Responsaveis (
  id_responsaveis SERIAL   NOT NULL ,
  Usuarios_id_usuario INTEGER   NOT NULL ,
  nome VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(id_responsaveis)  ,
  FOREIGN KEY(Usuarios_id_usuario)
    REFERENCES Usuarios(id_usuario));


CREATE INDEX Responsaveis_FKIndex1 ON Responsaveis (Usuarios_id_usuario);


CREATE INDEX IFK_criam ON Responsaveis (Usuarios_id_usuario);


CREATE TABLE Tarefas (
  id_tarefa SERIAL   NOT NULL ,
  Responsaveis_id_responsaveis INTEGER   NOT NULL ,
  Usuarios_id_usuario INTEGER   NOT NULL ,
  titulo VARCHAR(50)   NOT NULL ,
  descricao VARCHAR(300)   NOT NULL ,
  prioridade VARCHAR(5)   NOT NULL ,
  deadline DATE    ,
  situacao VARCHAR(20)   NOT NULL ,
  numero INTEGER   NOT NULL   ,
PRIMARY KEY(id_tarefa)    ,
  FOREIGN KEY(Usuarios_id_usuario)
    REFERENCES Usuarios(id_usuario),
  FOREIGN KEY(Responsaveis_id_responsaveis)
    REFERENCES Responsaveis(id_responsaveis));


CREATE INDEX Tarefas_FKIndex1 ON Tarefas (Usuarios_id_usuario);
CREATE INDEX Tarefas_FKIndex2 ON Tarefas (Responsaveis_id_responsaveis);


CREATE INDEX IFK_criam_tarefas ON Tarefas (Usuarios_id_usuario);
CREATE INDEX IFK_por ON Tarefas (Responsaveis_id_responsaveis);


