CREATE TABLE [dbo].[MeasurementUnit] (
    [ID]   INT           NOT NULL,
    [Unit] NVARCHAR (50) NOT NULL,
    [Mass] REAL          NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

