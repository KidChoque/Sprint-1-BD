	CREATE DATABASE Ex_1_2;

	USE Ex_1_2; 

  

CREATE TABLE Empresa 

( 

IdEmpresa INT PRIMARY KEY IDENTITY, 

NomeEmpresa VARCHAR(100) NOT NULL, 

) 

  

CREATE TABLE Cliente 

( 

IdCliente INT PRIMARY KEY IDENTITY, 

Nome VARCHAR(100) NOT NULL, 

CPF VARCHAR(11) NOT NULL, 

) 

  

CREATE TABLE Modelos  

( 

IdModelos INT PRIMARY KEY IDENTITY, 

NomeModelo VARCHAR(30) NOT NULL, 

) 

  

CREATE TABLE Marcas 

( 

IdMarcas INT PRIMARY KEY IDENTITY, 

NomeMarca VARCHAR(30) NOT NULL, 

) 

  

CREATE TABLE Veiculos 

( 

IdVeiculos INT PRIMARY KEY IDENTITY, 

IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa), 

IdModelos INT FOREIGN KEY REFERENCES Modelos(IdModelos), 

IdMarcas INT FOREIGN KEY REFERENCES Marcas(IdMarcas), 

Placa VARCHAR(7) NOT NULL, 

) 

  

CREATE TABLE Alugueis
( 

IdAluguel INT PRIMARY KEY IDENTITY, 

IdVeiculos INT FOREIGN KEY REFERENCES Veiculos(IdVeiculos), 

IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente), 

DataAluguel DATE,

DataDevolucao DATE

) 

DROP TABLE Alugueis