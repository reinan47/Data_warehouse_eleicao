CREATE OR ALTER PROCEDURE SP_DIM_TEMPO
AS
BEGIN
	INSERT INTO DIM_TEMPO(COD_ANO_TURNO, ANO, TURNO)
	SELECT COD_ANO_TURNO ,ANO, TURNO FROM AUX_TEMPO
END
EXEC SP_DIM_TEMPO 
SELECT * FROM DIM_TEMPO