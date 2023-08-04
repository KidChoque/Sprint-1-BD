USE Ex_1_2

INSERT INTO Empresa(NomeEmpresa)
VALUES('Kayak')
VALUES('Movida');
VALUES('Rentcar');
VALUES('Turbi');


  

INSERT INTO Cliente(Nome,CPF)
VALUES('Jota','56745683205')
VALUES('Nei','97456789006')
VALUES ('Lele','54467890504');
VALUES('Kaio' , '23451789021'); 

  

INSERT INTO Modelos(NomeModelo)

VALUES('Civic');
VALUES('Polo');
VALUES('Fiesta'); 

  

INSERT INTO Marcas(NomeMarca) 
VALUES('Honda'); 
VALUES('Volkswagen'); 
VALUES('Ford'); 

  

  

INSERT INTO Veiculos(IdEmpresa,IdModelos,IdMarcas,Placa)
VALUES(3,3,3,'PKL3I72')
VALUES(2,2,2,'RCR6K98')
VALUES(1,1,1,'LGD3I67') 

  

INSERT INTO Aluguel(IdVeiculos,IdCliente,DataAluguel,DataDevolucao) 
VALUES(1,2,'2023-08-03','2023-09-20')
VALUES(2,1,'2023-06-30','2023-07-01')
VALUES(3,7,'2023-08-02','2023-09-02')


  

  SELECT * FROM Empresa; 

SELECT * FROM Modelos; 

SELECT * FROM Marcas; 

SELECT * FROM Cliente; 

SELECT * FROM Veiculos;

SELECT * FROM Aluguel;

SELECT 
*FROM
Cliente
       LEFT JOIN Aluguel ON  Cliente.Nome = CAST(ALuguel.IdCliente as VARCHAR(10) );
 
 CAST( as VARCHAR(10) )