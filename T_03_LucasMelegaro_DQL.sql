USE T_Gufos

SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM Eventos
SELECT * FROM Usuarios
SELECT * FROM Presencas, Usuarios

SELECT E.*, C.*
FROM EVENTOS AS E
JOIN Categorias AS C
ON E.IdCategoria = C.IdCategoria

SELECT P.*, U.*, E.*
FROM Presencas P 
JOIN Usuarios U
ON P.IdUsuario = U.IdUsuario
JOIN Eventos E
ON P.IdEvento = E.IdEvento

SELECT P.*, U.*, E.*,C.*
FROM Presencas P
INNER JOIN Usuarios U
ON P.IdUsuario = U.IdUsuario
INNER JOIN EVENTOS E
ON P.IdEvento = E.IdEvento
INNER JOIN Categorias C
ON E.IdCategoria = C.IdCategoria