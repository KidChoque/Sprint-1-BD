--DQL

USE Ex_1_1;


INSERT INTO Pessoa(Nome,CNH)
VALUES('Luciana','7689045679')
VALUES('Katt','12345678912')


INSERT INTO Email(IdPessoa,Endereço)
VALUES(1,'kat@email.com')

INSERT INTO Telefone(IdPessoa,Numero)
Values(2,'8002 8922')
VALUES (1,'5922 8922')


--Consultas 
SELECT * FROM Pessoa
SELECT * FROM Email
SELECT * FROM Telefone

-- Consulta o número de pessoas 
    SELECT
        COUNT(Pessoa.Nome) FROM Pessoa 

	

