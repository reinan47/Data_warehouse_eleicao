use bd_eleicao

CREATE OR ALTER PROCEDURE SP_OLTP_LOCALIDADE(@DATA_CARGA DATETIME)
AS BEGIN

       DELETE FROM AUX_LOCALIDADE WHERE @DATA_CARGA = DATA_CARGA
	   INSERT INTO AUX_LOCALIDADE(DATA_CARGA, COD_ESTADO, ESTADO, COD_CIDADE, CIDADE)
	   SELECT @DATA_CARGA, E.ID_ESTADO, E.NM_ESTADO, C.ID_CIDADE, C.NM_CIDADE FROM TB_ESTADO E JOIN TB_CIDADE C
	   ON(E.ID_ESTADO = C.ID_ESTADO)

END

SELECT * FROM TB_ESTADO
SELECT * FROM TB_CIDADE