-- DDL Database Definition Language

-- Criar BAnco de Dados

CREATE DATABASE [Event+_Manha_Lucas]

USE [Event+_Manha_Lucas]


--Criar Tabelas

CREATE TABLE TipoUsuario
(IdTipoUsuario INT PRIMARY KEY IDENTITY,
TipoDeUsuario VARCHAR(20) NOT NULL UNIQUE) 




 CREATE TABLE TipoEvento
(IdTipoEvento INT PRIMARY KEY IDENTITY,
TipoDeEvento VARCHAR(50) NOT NULL UNIQUE)

CREATE TABLE Instituicao
(IdInstituicao INT PRIMARY KEY IDENTITY,
CNPJ CHAR(14) NOT NULL UNIQUE,
NomeFantasia VARCHAR(50),
Endereco VARCHAR(100) NOT NULL
)

 
 CREATE TABLE Usuario 
 (
 IdUsuario INT PRIMARY KEY IDENTITY,
 IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario) NOT NULL,
 Nome VARCHAR(100) NOT NULL,
 Email VARCHAR(256) NOT NULL UNIQUE,
 Senha VARCHAR(100) NOT NULL
 )
 

 CREATE TABLE Evento
 (IdEvento INT PRIMARY KEY IDENTITY,
 IdTipoEVento INT FOREIGN KEY REFERENCES TipoEvento(IdTipoEvento),
 IdInstituicao INT FOREIGN KEY REFERENCES Instituicao(IdInstituicao),
 NomeEvento VARCHAR(50) NOT NULL,
 Descricao VARCHAR(300) NOT NULL,
 DataEvento DATE NOT NULL,
 HorafioEvento TIME NOT NULL
 )

 CREATE TABLE PresencaEVento 
 (
 IdPResencaEvento INT PRIMARY KEY IDENTITY,
  IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
  IdEvento  INT FOREIGN KEY REFERENCES Evento(IdEvento),
  Situacao  BIT DEFAULT(0)
 )

 CREATE TABLE Comentario 
 ( IdComentario INT PRIMARY KEY IDENTITY,
 IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
 IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
 Descricao VARCHAR(256) NOT NULL,
 Exibe BIT DEFAULT(0)
 )