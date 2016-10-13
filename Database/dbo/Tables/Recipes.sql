CREATE TABLE [dbo].[Recipes]
(
	[ID]                  INT NOT NULL,
	[Title]		NVARCHAR(255) NOT NULL,
    [Time]				 REAL NOT NULL,
	[PortionCount]        INT not null,
	[Method]			NTEXT NOT NULL,

    PRIMARY KEY CLUSTERED ([ID] ASC)
)
