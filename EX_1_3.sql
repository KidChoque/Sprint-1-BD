USE EX_1_3

INSERT INTO Clinica (NomeCLinica,Endereco)
VALUES ('VetRecovery','Av. Miguel Estefno, 785 , São Paulo-SP')
VALUES ('PetLife','R. Amazonas,1155 São Caetano do Sul-SP')

INSERT INTO Veterinarios(IdClinica,NomeVet,CMRV)
VALUES (2,'Mario','SP8645')
VALUES (1,'Natalia','SP4790')

INSERT INTO TipoPet(NomeTipo)
VALUES ('Cachorro'),('Gato'),('Hamster')

INSERT INTO Raça (NomeRaça)
VALUES ('Labrador'),('Himalaio'),('Anão Russo')


INSERT INTO Dono(NomeDono)
VALUES ('Ali Santos'),('Noa Machado'),('LeLe Mendes')


INSERT INTO Pets (IdDono,IdTipoPet,IdRaça,NomePet,DataNascimento)
VALUES(1,3,3,'Marley'),(2,1,1,'Marley'),(3,2,2,'Melissa')