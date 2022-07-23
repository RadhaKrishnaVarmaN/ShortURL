CREATE TABLE [dbo].[short_url] (
    [short_url_id]   INT      IDENTITY (1, 1) NOT NULL,
    [short_url_code] CHAR (8) NOT NULL,
    [web_url]        INT      NULL,
    [expiry_stamp]   DATETIME NULL,
    [created_stamp]  DATETIME NOT NULL,
    CONSTRAINT [PK_short_url] PRIMARY KEY CLUSTERED ([short_url_id] ASC),
    CONSTRAINT [UQ_short_url] UNIQUE NONCLUSTERED ([short_url_code] ASC)
);
GO
