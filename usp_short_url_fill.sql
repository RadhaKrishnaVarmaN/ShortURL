CREATE PROCEDURE [dbo].[usp_short_url_fill]
AS
BEGIN
	DECLARE @iterations	INT = 100
	WHILE @iterations > 0
	BEGIN
		INSERT	INTO dbo.short_url (short_url_code, created_stamp)
		SELECT	DISTINCT vg.short_url_code, GETDATE()
		FROM		dbo.vw_short_url_gen vg
		LEFT JOIN	dbo.short_url su ON su.short_url_code = vg.short_url_code
		WHERE		su.short_url_id IS NULL

		SET @iterations = @iterations - 1
	END
END
GO
