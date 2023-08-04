USE Ex_1_2

INSERT INTO Empresa(NomeEmpresa)
VALUES('Turbi');
VALUES('Kayak')
VALUES('Movida');
VALUES('Rentcar');
  

INSERT INTO Cliente(Nome,CPF)
VALUES('Kaio' , '23451789021'); 
VALUES('Jota','56745683205')
  VALUES('Nei','97456789006')
  VALUES ('Lele','54467890504');


INSERT INTO Modelos(NomeModelo)
VALUES('Fiesta'); 
VALUES('Polo');
VALUES('Civic');



  

INSERT INTO Marcas(NomeMarca) 
VALUES('Ford');
VALUES('Honda'); 
VALUES('Volkswagen'); 
 

  

  

INSERT INTO Veiculos(IdEmpresa,IdModelos,IdMarcas,Placa)
VALUES(3,3,3,'PKL3I72')
VALUES(2,2,2,'RCR6K98')
VALUES(1,1,1,'LGD3I67') 




  

INSERT INTO Alugueis(IdVeiculos,IdCliente,DataAluguel,DataDevolucao) 
VALUES(3,3,'2023-08-02','2023-09-02')

VALUES(2,1,'2023-06-30','2023-07-01')
VALUES(1,2,'2023-08-03','2023-09-20')


  

  SELECT * FROM Empresa; 

SELECT * FROM Modelos; 

SELECT * FROM Marcas; 

SELECT * FROM Cliente; 

SELECT * FROM Veiculos;

SELECT * FROM Alugueis;

SELECT Cliente.IdCliente,Cliente.Nome,Alugueis.DataAluguel,Alugueis.DataDevolucao,Modelos.NomeModelo FROM
           Alugueis 
		        LEFT JOIN Cliente ON Cliente.IdCliente = Alugueis.IdCliente
				LEFT JOIN Veiculos ON Veiculos.IdVeiculos = Veiculos.IdModelos
				LEFT JOIN Modelos ON Modelos.IdModelos = Veiculos.IdModelos;
 
 