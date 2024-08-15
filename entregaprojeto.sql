--PRIMEIRA CONSULTA--

SELECT
	Nome,
	Ano
FROM Filmes

--SEGUNDA CONSULTA--

SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

--TERCEIRA CONSULTA--

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE
	Nome='De Volta para o Futuro'

--QUARTA CONSULTA--

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE
	Ano=1997

--QUINTA CONSULTA--

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE
	Ano > 2000

--SEXTA CONSULTA--

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE
	Duracao > 100 AND 
	Duracao < 150
ORDER BY
	Duracao ASC

--SETIMA CONSULTA--

SELECT
	Ano,
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY
	Ano
ORDER BY 
	Quantidade DESC

--OITAVA CONSULTA--

SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE
	Genero = 'M'

--NONA CONSULTA--

SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome

--DECIMA CONSULTA--

SELECT
	F.Nome,
	G.Genero
FROM
	FilmesGenero FG
INNER JOIN
	Filmes F
ON
	F.Id = FG.IdFilme
INNER JOIN
	Generos G
ON
	G.Id = FG.IdGenero

--DECIMA PRIMEIRA CONSULTA

SELECT
	F.Nome,
	G.Genero
FROM
	FilmesGenero FG
INNER JOIN
	Filmes F
ON
	F.Id = FG.IdFilme
INNER JOIN
	Generos G
ON
	G.Id = FG.IdGenero
WHERE
	G.Genero = 'Mistério'

--AVERIGUAR VINCULO DAS TABELAS--

SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes

--DECIMA SEGUNDA CONSULTA--

SELECT
	F.Nome,
	A.PrimeiroNome,
	A.Ultimonome,
	E.Papel
FROM
	ElencoFilme E
INNER JOIN
	Atores A
ON
	A.Id = E.IdAtor
INNER JOIN
	Filmes F
ON
	F.Id = E.IdFilme
