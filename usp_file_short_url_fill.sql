CREATE PROCEDURE [dbo].[usp_file_short_url_fill]
AS
BEGIN
	DECLARE @iterations	INT = 100
	WHILE @iterations > 0
	BEGIN
		INSERT	INTO dbo.file_short_url (short_url, created_stamp, modified_stamp)
		SELECT	DISTINCT vg.short_url, GETDATE(), GETDATE()
		FROM		dbo.vw_short_url_gen vg
		LEFT JOIN	dbo.file_short_url su ON su.short_url = vg.short_url
		WHERE		su.short_url_id IS NULL

		SET @iterations = @iterations - 1
	END
END
GO
