
CREATE OR ALTER PROCEDURE SP_DIM_ELEITOR
AS
BEGIN
	INSERT INTO DIM_ELEITOR(COD_ELEITOR, CPF, NM_SECAO, ZONA)
	SELECT COD_ELEITOR, CPF, NM_SECAO, ZONA FROM AUX_ELEITOR
END
EXEC SP_DIM_ELEITOR 
SELECT * FROM DIM_ELEITOR