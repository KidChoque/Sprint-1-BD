--DQL

USE Ex_1_1;

INSERT INTO Pessoa(Nome,CNH)
VALUES('Katt','12345678912')

INSERT INTO Email(IdPessoa,Endereço)
VALUES(1,'kat@email.com')

INSERT INTO Telefone(IdPessoa,Numero)
VALUES (1,'5922 8922')


--Consultas 
SELECT * FROM Pessoa
SELECT * FROM Email
SELECT * FROM Telefone