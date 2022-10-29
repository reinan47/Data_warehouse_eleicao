use bd_eleicao


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
    ESTADO CHAR(2) NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
)

CREATE TABLE AUX_LOCALIDADE_ELEICAO(
      DATA_CARGA DATETIME NOT NULL,
      LOCALIDADE VARCHAR(100) NOT NULL,
	  TIPO_LOCALIDADE VARCHAR(50) NOT NULL CHECK(TIPO_LOCALIDADE IN ('ESTADO', 'MUNICIPIO', 'PAIS')),
	  UF_ESTADO CHAR(2) NOT NULL
)

CREATE TABLE AUX_CARGO(
     DATA_CARGA DATETIME NOT NULL,
     CARGO VARCHAR(100) NOT NULL
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
)

