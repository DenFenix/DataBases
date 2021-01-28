CREATE TABLE [dbo].[Phones] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (MAX) NULL,
    [Price]     INT            NOT NULL,
    [Desc]      NVARCHAR (MAX) NULL,
    [CompanyId] INT            DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dbo.Phones] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Phones_dbo.Companies_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Companies] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_CompanyId]
    ON [dbo].[Phones]([CompanyId] ASC);

