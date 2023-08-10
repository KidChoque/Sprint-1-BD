USE [Event+_Manha_Lucas]

--DML Data Manipulation Language 

--Inserção de dados nas tabelas

INSERT INTO TipoUsuario(TipoDeUsuario)
VALUES('Adminstrador'),('Comum')

INSERT INTO TipoEvento(TipoDeEvento)
VALUES('SQL SERVER')

INSERT INTO Instituicao(CNPJ,Endereco,NomeFantasia)
VALUES('1234568696012','Rua Niteroi 180','DevSchool')

INSERT INTO Usuario(IdTipoUsuario,Nome,Email,Senha)
Values(1,'Gerson Pereira','adm@adm.com','Dev@1234')

INSERT INTO Evento( IdTipoEVento, IdInstituicao, NomeEvento, Descricao,DataEvento,HorafioEvento)
VALUES(1,1,'Sql Server Introduction','Seja bem vindo a introdução ao banco de Dados SQL Server, aproveite para aprender essa tecnlogia tão importante','2023-08-10','10:00:00')

INSERT INTO PresencaEVento(IdUsuario,IdEvento)
VALUES(1,1)

INSERT INTO Comentario(IdUsuario, IdEvento, Descricao,Exibe)
VALUES(1,1,'SHOW DE PELOTA',1)


SELECT * FROM TipoUsuario,
SELECT * FROM TipoEvento,
SELECT * FROM Instituicao,
SELECT * FROM Usuario,
SELECT * FROM Evento,
SELECT * FROM PresencaEVento,
SELECT * FROM Comentario,
