--T_02_LucasMelegaro_DML.sql

USE T_Gufos

INSERT INTO Usuarios (Nome, Email, Senha, Permissao)
VALUES	('Clayton','c.y@mail.com','123456','ADMINISTRADOR')

INSERT INTO Usuarios (Nome, Email, Senha, Permissao)
VALUES	('Rayssa','rayssa@gmail.com','r123456','ALUNO')

SELECT * FROM Usuarios;

INSERT INTO Categorias(Nome)
VALUES ('Jogos'),('Meetup'),('Futebol');
SELECT * FROM Categorias ORDER BY IdCategoria ASC;

INSERT INTO Eventos (Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria)
VALUES	('Campeonato de Ping-pong'
		,'Campeonato entre as turmas de tec. de redes e dev'
		,GETDATE(),	1, 'Alameda Barão de Limeira, 539'
		,1);
SELECT *FROM Eventos;

INSERT INTO Eventos (Titulo, Descricao, DataEvento, Localizacao, IdCategoria)
VALUES	('futebol no terraço','Núcleo de Desenvolvimento do SENAI'
		,'2019-08-06T18:00:00'
		,'Alameda Barão de Limeira, 539'
		,2);

INSERT INTO Presencas(IdEvento,IdUsuario) VALUES (1,2),(1,1),(2,2)
SELECT * FROM Presencas


UPDATE Eventos SET IdCategoria = 3 WHERE IdEvento = 3

SELECT * FROM Eventos