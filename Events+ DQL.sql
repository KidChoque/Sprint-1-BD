-- DQL Data Query Language-

USE [Event+_Manha_Lucas]

-- CASE WHEN campo = valor THEN 'Valor' ELSE 'Outro VAlor' END AS [Apelido do Registro]

SELECT 
Usuario.Nome AS [Nome Do Usu�rio],
TipoUsuario.TipoDeUsuario  AS [Tipo De Usu�rio],
Evento.NomeEvento AS [Nome do Evento],
Evento.Descricao AS [Descri��o do Evento],
Evento.DataEvento AS [Data],
CASE WHEN PresencaEVento.Situacao = 1 THEN 'Confirmada' ELSE 'Sem Confirma��o' END AS [Presen�a],
Comentario.Descricao AS [Coment�rio],CONCAT (Instituicao.NomeFantasia,' ',Instituicao.Endereco) AS [Local Do Evento]
    
FROM TipoUsuario
            JOIN Usuario ON  TipoUsuario.IdTipoUsuario = Usuario.IdTipoUsuario
	         JOIN Evento ON TipoUsuario.IdTipoUsuario = Evento.IdEvento
     JOIN PresencaEVento ON Evento.IdEvento = PresencaEVento.IdPResencaEvento
	    JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdEvento
	     JOIN Comentario ON IdComentario = Evento.IdEvento
	   
	   
