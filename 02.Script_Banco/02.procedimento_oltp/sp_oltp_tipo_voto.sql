CREATE OR ALTER PROCEDURE SP_OLTP_TIPO_VOTO(@DATA_CARGA DATETIME)
AS
BEGIN
	DELETE AUX_TIPO_VOTO
	WHERE DATA_CARGA = @DATA_CARGA
	INSERT INTO AUX_TIPO_VOTO(DATA_CARGA, COD_TIPO_VOTO, TIPO_VOTO)
	SELECT @DATA_CARGA, ID_TIPO_VOTO,TIPO_VOTO FROM TB_TIPO_VOTO
END
EXEC SP_OLTP_TIPO_VOTO '20221103'

