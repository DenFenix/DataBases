CREATE TABLE [dbo].[Companies] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Companies] PRIMARY KEY CLUSTERED ([Id] ASC)
);

