--DQL 1.2

USE Ex_1_2;

INSERT INTO Empresa(NomeEmpresa)
VALUES('Turbi');

INSERT INTO Cliente(Nome,CPF)
VALUES('Lele' , '10030040004');

INSERT INTO Modelos(NomeModelo)
VALUES('Fiesta');

INSERT INTO Marcas(NomeMarca)
VALUES('Ford');


INSERT INTO Veiculos(IdEmpresa,IdModelos,IdMarcas,Placa)
VALUES(1,1,1,'LGD3I67')

INSERT INTO Aluguel(IdCliente,IdVeiculos,DataRetirada,DataDevolucao)
VALUES(2,1,'03/10/2023')







SELECT * FROM Empresa;
SELECT * FROM Modelos;
SELECT * FROM Marcas;
SELECT * FROM Cliente;
SELECT * FROM Veiculos;
SELECT * FROM Aluguel;


