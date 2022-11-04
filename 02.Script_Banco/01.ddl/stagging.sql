use bd_eleicao

DROP TABLE IF EXISTS AUX_CANDIDATO
DROP TABLE IF EXISTS AUX_LOCALIDADE
DROP TABLE IF EXISTS AUX_LOCALIDADE_ELEICAO
DROP TABLE IF EXISTS AUX_CARGO
DROP TABLE IF EXISTS AUX_SESSAO
DROP TABLE IF EXISTS AUX_ELEITOR
DROP TABLE IF EXISTS AUX_TIPO_VOTO
DROP TABLE IF EXISTS AUX_VOTO
DROP TABLE IF EXISTS AUX_TEMPO


CREATE TABLE AUX_CANDIDATO(
       DATA_CARGA DATETIME NOT NULL,
	   COD_CANDIDATO INT NOT NULL,
	   NM_CANDIDATO VARCHAR(100) NOT NULL,
	   CPF CHAR(11) NOT NULL UNIQUE,
	   COD_CARGO INT NOT NULL,
	   CARGO VARCHAR(50) NOT NULL,
	   COD_PARTIDO INT NOT NULL,
	   PARTIDO VARCHAR(200) NULL,
	   --TIPO_VOTO VARCHAR(50) NOT NULL CHECK(TIPO_VOTO IN (''))
	   CNPJ CHAR(14) NOT NULL UNIQUE
)

CREATE TABLE AUX_LOCALIDADE(
    DATA_CARGA DATETIME NOT NULL,
	COD_ESTADO INT NOT NULL,
    ESTADO CHAR(2) NOT NULL,
	COD_CIDADE INT NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
)

CREATE TABLE AUX_LOCALIDADE_ELEICAO(
      DATA_CARGA DATETIME NOT NULL,
	  COD_LOCALIDADE_ELEICAO INT NOT NULL,
      LOCALIDADE VARCHAR(100) NOT NULL,
	  TIPO_LOCALIDADE VARCHAR(50) NOT NULL CHECK(TIPO_LOCALIDADE IN ('ESTADO', 'MUNICIPIO', 'PAIS')),
	  UF_ESTADO CHAR(2) NOT NULL
)

CREATE TABLE AUX_CARGO(
     DATA_CARGA DATETIME NOT NULL,
     CARGO VARCHAR(100) NOT NULL
)

CREATE TABLE AUX_TEMPO(
	DATA_CARGA DATETIME NOT NULL,
	ANO INT NOT NULL,
	TURNO VARCHAR(10) NOT NULL CHECK(TURNO IN ('1�TURNO', '2�TURNO'))
)

CREATE TABLE AUX_SESSAO(
    DATA_CARGA DATETIME NOT NULL,
    COD_SESSAO INT NOT NULL,
	NM_SESSAO VARCHAR(50) NOT NULL,
	ZONA VARCHAR(50) NOT NULL
)

CREATE TABLE AUX_ELEITOR(
    DATA_CARGA DATETIME NOT NULL,
	COD_ELEITOR INT NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
	NM_ELEITOR VARCHAR(100),
	NM_SESSAO VARCHAR(50) NOT NULL,
	ZONA VARCHAR(50) NOT NULL
)

CREATE TABLE AUX_TIPO_VOTO(
	DATA_CARGA DATETIME NOT NULL,
	TIPO_VOTO VARCHAR(50) NOT NULL CHECK(TIPO_VOTO IN ('BRANCOS', 'NULOS', 'VALIDOS'))
)

CREATE TABLE AUX_VOTO(
    DATA_CARGA DATETIME NOT NULL,
    COD_ELEITOR INT NOT NULL,
	COD_TIPO_VOTO INT NOT NULL,
	COD_CANDIDATO INT NOT NULL,
	COD_LOCALIDADE INT NOT NULL,
	COD_SESSAO INT NOT NULL,
	COD_CARGO INT NOT NULL,
	COD_LOCALIDADE_ELEICAO INT NOT NULL

)

