CREATE TABLE [dbo].[Products] (
    [ID]          INT            NOT NULL,
    [Name]        NVARCHAR (255) NOT NULL,
    [EnergyValue] REAL           NOT NULL,
    [Protein]     REAL           NOT NULL,
    [Fats]        REAL           NOT NULL,
    [Carbs]       REAL           NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

