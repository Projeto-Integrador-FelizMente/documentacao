CREATE TABLE [tb_postagens] (
	id bigint NOT NULL,
	titulo varchar(255) NOT NULL,
	estado bit NOT NULL,
	data date NOT NULL,
	texto text NOT NULL,
	link varchar(510) NOT NULL,
	tema_id bigint NOT NULL,
	usuario_id bigint NOT NULL,
  CONSTRAINT [PK_TB_POSTAGENS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [db_usuarios] (
	id bigint NOT NULL,
	nome varchar(255) NOT NULL,
	usuario varchar(255) NOT NULL,
	senha varchar(255) NOT NULL,
	tipo varchar(255) NOT NULL,
	foto varchar(510) NOT NULL,
  CONSTRAINT [PK_DB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [db_temas] (
	id bigint NOT NULL,
	nome varchar(255) NOT NULL,
	descricao varchar(510) NOT NULL,
  CONSTRAINT [PK_DB_TEMAS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk0] FOREIGN KEY ([tema_id]) REFERENCES [db_temas]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk0]
GO
ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk1] FOREIGN KEY ([usuario_id]) REFERENCES [db_usuarios]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk1]
GO



