CREATE TABLE [dbo].[file_short_url] (
    [short_url_id]   INT      IDENTITY (1, 1) NOT NULL,
    [short_url]      CHAR (8) NOT NULL,
    [file_id]        INT      NULL,
    [expiry]         DATETIME NULL,
    [created_stamp]  DATETIME NOT NULL,
    [modified_stamp] DATETIME NOT NULL,
    CONSTRAINT [PK_file_short_url] PRIMARY KEY CLUSTERED ([short_url_id] ASC),
    CONSTRAINT [UQ_file_short_url] UNIQUE NONCLUSTERED ([short_url] ASC)
);
GO
